package users;

import data.Debtor;
import database.DbConnectionHandler;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;

import static data.DataGenerator.*;

public class TestInsertNewDebtorIntoDb {

    private DbConnectionHandler dbConnectionHandler;
    private Connection con;
    private Debtor actualDebtorData;
    private Debtor expectedDebtorData;
    private Long expectedId = 21L;
    private String expectedCnp = generateRandomCnp();
    private String expectedLastName = generateLastName(expectedCnp);
    private String expectedFirstName = generateFirstName();
    private String expectedBirthday = generateBirthday();
    private String expectedStatus = generateStatus();

    @Before
    public void setup() throws SQLException {
        dbConnectionHandler = new DbConnectionHandler();
        con = dbConnectionHandler.connect();
        actualDebtorData = new Debtor(expectedId, expectedCnp, expectedFirstName, expectedLastName, expectedBirthday, expectedStatus);
        try {
            dbConnectionHandler.insertDebtor(con, actualDebtorData);
            System.out.println("Created debtor with last name: " + expectedLastName);
            expectedDebtorData = dbConnectionHandler.getDebtorByLastName(con, expectedLastName);
        } catch(SQLException e) {
            String errorCode = e.getSQLState();
            if(errorCode == "08000") {
                throw e;
            } else if(errorCode == "42601") {
                throw e;
            } else {
                System.out.printf("SQL failed with error code: %s%n", errorCode);
            }
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    public void testDebtorInsertedInDb() {
        Assert.assertNotNull(expectedDebtorData);
        Assert.assertEquals(expectedDebtorData.getLastName(), expectedLastName);
    }

    @After
    public void cleanup() throws SQLException {
        try {
            dbConnectionHandler.deleteDebtorByLastName(con, expectedLastName);
            System.out.println("Deleted debtor with last name: " + expectedLastName);
            con.close();
        } catch(SQLException e) {
            String errorCode = e.getSQLState();
            if(errorCode == "08000") {
                throw e;
            } else if(errorCode == "42601") {
                throw e;
            } else {
                System.out.printf("SQL failed with error code: %s%n", errorCode);
            }
        }
    }
}
