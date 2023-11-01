package data;

public class Debtor {
    private long id;
    private String cnp;
    private String firstName;
    private String lastName;
    private String birthday;
    private String status;

    public Debtor(long id, String cnp, String firstName, String lastName, String birthday, String status) {
        this.id = id;
        this.cnp = cnp;
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthday = String.valueOf(birthday);
        this.status = status;
    }

    public long getId() {
        return id;
    }

    public String getCnp() {
        return cnp;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getStatus() {
        return status;
    }
}
