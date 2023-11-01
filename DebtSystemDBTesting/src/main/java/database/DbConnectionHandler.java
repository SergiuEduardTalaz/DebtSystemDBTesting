package database;

import data.Debtor;
import org.postgresql.ds.PGSimpleDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DbConnectionHandler {

    private static final DataSource dataSource = createDataSource();

    private static DataSource createDataSource() {
        final String url = "jdbc:postgresql://localhost:5432/DebtsSystem?user=postgres&password=sergiu";
        final PGSimpleDataSource dataSource = new PGSimpleDataSource();
        dataSource.setUrl(url);
        return dataSource;
    }

    public Connection connect() throws SQLException {
        return dataSource.getConnection();
    }

    public void getAllDebtors(Connection conn) throws SQLException {
        PreparedStatement stmt = conn.prepareStatement("select * from debtors");
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            System.out.printf("id: %d, cnp: %s, firstName: %s, lastName: %s, birthday: %s, status: %s%n",
                    rs.getLong("id"),
                    rs.getString("cnp"),
                    rs.getString("firstName"),
                    rs.getString("lastName"),
                    rs.getDate("birthday"), // Retrieve Date
                    rs.getString("status")
            );
        }
    }

    public Debtor getDebtorByLastName(Connection conn, String debtorLastName) throws SQLException, ParseException {
        PreparedStatement stmt = conn.prepareStatement("select * from debtors where lastName = ?");
        stmt.setString(1, debtorLastName);

        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            long id = rs.getLong("id");
            String cnp = rs.getString("cnp");
            String firstName = rs.getString("firstName");
            String lastName = rs.getString("lastName");

            Date birthday = rs.getDate("birthday"); // Retrieve Date

            String status = rs.getString("status");

            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String birthdayAsString = dateFormat.format(birthday);

            return new Debtor(id, cnp, firstName, lastName, birthdayAsString, status);
        }

        return null;
    }


    public void insertDebtor(Connection conn, Debtor debtor) throws SQLException, ParseException {
        String query = "INSERT INTO debtors (id, cnp, firstName, lastName, birthday, status) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setLong(1, debtor.getId());
        stmt.setString(2, debtor.getCnp());
        stmt.setString(3, debtor.getFirstName());
        stmt.setString(4, debtor.getLastName());

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date birthday = dateFormat.parse(debtor.getBirthday()); // Convert the String to Date
        stmt.setDate(5, new java.sql.Date(birthday.getTime()));

        stmt.setString(6, debtor.getStatus());
        stmt.executeUpdate();
    }

    public void deleteDebtorByLastName(Connection conn, String debtorLastName) throws SQLException {
        String query = "DELETE FROM debtors WHERE lastName = ?";
        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, debtorLastName);
        stmt.executeUpdate();
    }

    public void updateDebtor(Connection conn, Debtor debtor) throws SQLException, ParseException {
        String query = "UPDATE debtors SET cnp = ?, firstName = ?, birthday = ?, status = ? WHERE lastName = ?";
        PreparedStatement stmt = conn.prepareStatement(query);
        stmt.setString(1, debtor.getCnp());
        stmt.setString(2, debtor.getFirstName());

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date birthday = dateFormat.parse(debtor.getBirthday()); // Convert the String to Date
        stmt.setDate(3, new java.sql.Date(birthday.getTime()));

        stmt.setString(4, debtor.getStatus());
        stmt.setString(5, debtor.getLastName());
        stmt.executeUpdate();
    }
}
