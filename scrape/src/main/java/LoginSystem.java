import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginSystem {
    public static boolean logIn(String login, String haslo){
        boolean canLog = false;

        try {
            Connection connection = DBConnection.createNewDBconnection("jdbc:mysql://localhost:3306/scrape");
            String query = "SELECT haslo FROM accounts WHERE login = '"+login+"'";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            resultSet.next();
            if(resultSet.getString("haslo").equals(haslo)){
                canLog = true;
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return canLog;
    }
}