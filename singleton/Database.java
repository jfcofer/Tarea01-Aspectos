package singleton;

public class Database {
    private static Database instance;

    private Database() {
    }

    public static Database getInstance() {
        if (instance == null) {
            return new Database();
        }
        return instance;
    }

    public String query() {
        return "Successful query";
    }
}
