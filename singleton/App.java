package singleton;

public class App {
    public static void main(String[] args) {
        Database database = Database.getInstance();
        System.out.println("Asking for query...");
        System.out.println(database.query());
    }
}
