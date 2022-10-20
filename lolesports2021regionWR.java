import java.sql.*;
import java.util.Scanner;

public class JDBCmySQL{
    static final String DB_URL = "jdbc:mysql://localhost/new_schema";
    static final String USER = "root";
    static final String PASS = "password";
    static final String QUERY = "SELECT champion, league, avg(result) winrate FROM match_data_2021 tab1  WHERE tab1.champion = '%s' GROUP BY league, champion  ;";
    
    public static void main(String[] args){
        System.out.println("Welcome to the League of Legends eSports game database for all professional matches played in 2021! The feature of this database is to be able to look up which region had the highest and lowest winrate on a single champion.");
        Scanner myObj = new Scanner(System.in);
        System.out.println("Enter champion name");
        String champname = myObj.nextLine();

        double highest = 0.0;
        double lowest = 1.0;
        String best_region;
        String worst_region;

        try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(String.format(QUERY, champname));){
            while(rs.next()){
                if(rs.getDouble("winrate") >= highest){
                    best_region = rs.getString("league");
                }
                else if(rs.getDouble("winrate") <= lowest){
                    worst_region = rs.getString("league");
                }
                else{
                    System.out.println("Searching...");
                }
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        System.out.println("The region with the highest winrate on " + champname + " in 2021 was " + best_region +". And the region with the lowest winrate on " + champname + " was " + worst_region + ".");
    }
}
