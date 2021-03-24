import java.sql.*;
import java.time.LocalDate;
import java.util.List;

public class OptionSystem {
    private static final Connection connection = DBConnection.createNewDBconnection("jdbc:mysql://localhost:3306/scrape");
    public OptionSystem(){}

    public static void option1(){
        String stm = "INSERT INTO produkty (nazwa_produktu, cena_produktu, date_added) VALUES (?,?,?)";
        try{
            PreparedStatement statement = connection.prepareStatement(stm);
            List<Product> products = GetProducts.getProducts();
            for (Product p: products) {
                statement.setString(1, p.getName());
                statement.setString(2, p.getPrice());
                statement.setString(3, LocalDate.now().toString());
                statement.execute();
            }
            System.out.println("Pobrano obiekty do bazy");
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public static void option2(){
        String stm = "SELECT * FROM produkty;";
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(stm);
            resultSet.next();
            while (resultSet.next()){
                System.out.println("Nazwa produktu: "+ resultSet.getString("nazwa_produktu") + "\n" +
                        "Cena produktu: " + resultSet.getString("cena_produktu")+ "\n" +
                        "Dodano do bazy: " + resultSet.getDate("date_added") + "\n" +
                        "_____________________________________________________"
                );
            }
        } catch (SQLException s) {
            s.printStackTrace();
        }
    }

}