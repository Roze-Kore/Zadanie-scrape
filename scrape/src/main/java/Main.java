import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        System.out.println("Zaloguj się");
        Scanner scanner = new Scanner(System.in);
        String login, password;
        login = scanner.next();
        password = scanner.next();

        if(LoginSystem.logIn(login,password)){
            int opcja = 0;
            boolean running = true;
            while (running){
                System.out.println("wybor\n1.Do bazy\n2.Z bazy");
                opcja = scanner.nextInt();
                switch (opcja){
                    case 1:
                        OptionSystem.option1();
                        break;
                    case 2:
                        OptionSystem.option2();
                        break;
                    default:
                        running = false;

                }
            }
        }
    }
}