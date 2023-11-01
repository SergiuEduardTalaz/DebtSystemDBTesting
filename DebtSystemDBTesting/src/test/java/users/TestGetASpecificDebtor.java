package users;

import data.Debtor;
import database.DbConnectionHandler;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;

public class TestGetASpecificDebtor {

    private DbConnectionHandler dbConnectionHandler;
    private Connection con;
    private Debtor actualDebtorData;
    private String expectedLastName = "Pelotudo";

    @Before
    public void setup() throws SQLException, ParseException {
        dbConnectionHandler = new DbConnectionHandler();
        con = dbConnectionHandler.connect();

        try {
            actualDebtorData = dbConnectionHandler.getDebtorByLastName(con, expectedLastName);
            con.close();
        } catch(SQLException | ParseException e) {
            String errorCode = e.getMessage();
            if(errorCode == "08000") {
                throw e;
            } else if(errorCode == "42601") {
                throw e;
            } else {
                System.out.printf("SQL failed with error code: %s%n", errorCode);
            }
        }
    }

    @Test
    public void testGetDebtorFromDbUsingLastName() {
        Assert.assertNotNull(actualDebtorData);
        Assert.assertEquals(actualDebtorData.getLastName(), expectedLastName);
    }
}
