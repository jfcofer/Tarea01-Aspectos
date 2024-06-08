package adapter;

public class Main {
    public static void main(String[] args) {
        Printer legacyPrinterAdapter = new LegacyPrinterAdapter(new LegacyPrinter());
        Client.clientCode(legacyPrinterAdapter);
    }
}
