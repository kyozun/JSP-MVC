package entity;

public class Users {
    private int userId;
    private String userName;
    private String password;


    //Constructor
    public Users() {
    }

    public Users(int user_id, String user_name, String password) {
        this.userId = user_id;
        this.userName = user_name;
        this.password = password;
    }


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}