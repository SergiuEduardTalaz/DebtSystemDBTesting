package data;

import java.util.Random;

public class DataGenerator {
    private static final Random RANDOM = new Random();

    public static String generateRandomCnp() {
        String[] cnps =  {  "2781910692753",
                "9372801478392",
                "8393487585972",
                "5438594587436",
                "0157946514576",
                "1598743594652",
                "0175431694345",
                "6541858145919",
                "3158741965015"
        };

        String cnp = cnps[RANDOM.nextInt(cnps.length)];

        return cnp;
    }

    public static String generateLastName(String cnp) {
        String[] lastNames = {
                "Antilef",
                "Ñamku",
                "Mariqueo",
                "Calfunao",
                "Millán",
                "Ralko",
                "Llancaleo",
                "Ñanculef",
                "Rayen",
                "Lienqueo"
        };

        return lastNames[RANDOM.nextInt(lastNames.length)];
    }

    public static String generateFirstName() {
        String[] firstNames = {
          "Kukulkan",
          "Ixchel",
          "Itzamná",
          "Hunahpu",
          "Xbalanque",
          "Ixmucané",
          "Ukit Kan Lek",
          "Ah Kin",
          "Chak Ek"
        };

        return firstNames[RANDOM.nextInt(firstNames.length)];
    }

    public static String generateBirthday(){
        String[] birthdays = {
                "1963-09-22",
                "1980-07-14",
                "1972-03-30",
                "1995-05-11",
                "1987-12-03",
                "1968-02-18",
                "1990-10-26",
                "1974-08-09",
                "1982-06-21"
        };
        return birthdays[RANDOM.nextInt(birthdays.length)];
    }

    public static String generateStatus() {
        String[] statuses = {
                "ceased",
                "active"
        };

        return statuses[RANDOM.nextInt(statuses.length)];
    }
}
