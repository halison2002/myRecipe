/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Kind;
import context.DBContext;
import Entity.Recipe;
import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Le Vu
 */
public class DAO {
    Connection conn = null; //ket noi toi sql server
    PreparedStatement ps = null; //nem cau lenh query tu netbean sang spl server
    ResultSet rs = null; //nhan ket qua tra ve
    private String status;
    public DAO(){
        try {
            conn = new DBContext().getConnection();
            status = "OK";
        } catch (Exception e) {
            status ="Error at connection " + e.getMessage();
        }
    }
    public List<Recipe> getAllRecipe(){
        List<Recipe> list = new ArrayList<>();
        String query = "select * from Recipe_HE161250";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Error at load  "+e.getMessage();
        }
        return list;
    }
    public List<Recipe> getNewRecipe(){
        List<Recipe> list = new ArrayList<>();
        String query = "select * from Recipe_HE161250 order by id desc";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Error at load "+e.getMessage();
        }
        return list;
    }
    public List<Recipe> getTopFavorite(){
        List<Recipe> list = new ArrayList<>();
        String query = "SELECT TOP (4) *  FROM Recipe_HE161250\n" +
                        "Order by [Like] desc, Name ";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Error at load Student "+e.getMessage();
        }
        return list;
    }
    public List<Recipe> getTopQuick(){
        List<Recipe> list = new ArrayList<>();
        String query = "SELECT TOP (4) *  FROM Recipe_HE161250\n" +
                        "Order by Time, Name ";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Error at load Student "+e.getMessage();
        }
        return list;
    }
    public Recipe getRecipeById(String id){
        String query = "SELECT *  FROM Recipe_HE161250\n" +
                        "Where id= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen id vao dau cham hoi thu nhat
            rs = ps.executeQuery();
            while(rs.next()){
                return new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
        return null;
    }
    public User getUserById(String id){
        String query = "SELECT *  FROM Account_HE161250\n" +
                        "Where id= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen id vao dau cham hoi thu nhat
            rs = ps.executeQuery();
            while(rs.next()){
                return  new User(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5), 
                        rs.getInt(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
            }
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
        return null;
    }
    public Kind getKindById(String id){
        String query = "SELECT *  FROM Kind_HE161250\n" +
                        "Where id= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen id vao dau cham hoi thu nhat
            rs = ps.executeQuery();
            while(rs.next()){
                return new Kind(rs.getString(1),
                            rs.getString(2), 
                            rs.getInt(3));
            }
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
        return null;
    }
    //search by name and description
    public List<Recipe> getRecipeByName(String txtName){
        List<Recipe> list = new ArrayList<>();
        String query = "SELECT *  FROM Recipe_HE161250\n" +
                        "where name like ? or Description like ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, "%"+txtName+"%"); //truyen str vao dau cham hoi thu nhat
            ps.setString(2, "%"+txtName+"%");
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
        return list;
    }
    public List<Recipe> getRecipeByAuthorId(String id){
        List<Recipe> list = new ArrayList<>();
        String query = "SELECT *  FROM Recipe_HE161250\n" +
                        "where authorId = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen str vao dau cham hoi thu nhat
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
        return list;
    }
    public List<Recipe> getRecipeByKindId(String id){
        List<Recipe> list = new ArrayList<>();
        String query = "SELECT *  FROM Recipe_HE161250\n" +
                        "where kindId = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen str vao dau cham hoi thu nhat
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
        return list;
    }
    public List<Recipe> getFavoriteRecipeByAuthorId(String id){
        List<Recipe> list = new ArrayList<>();
        String query = "SELECT [Id] ,[Name],[kindId]\n" +
"      ,[authorId],[Like],[Picture]\n" +
"      ,[Description],[Time]  \n" +
"FROM Recipe_HE161250 inner join ListFavorite_HE161250 	on Recipe_HE161250.Id=ListFavorite_HE161250.recipeId\n" +
"Where ListFavorite_HE161250.usedId= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen str vao dau cham hoi thu nhat
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new Recipe(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), 
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)));
                
            }
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
        return list;
    }
    public Recipe checkRecipeExistInFavorite(String useId, String recipeId){
        List<Recipe> list = this.getFavoriteRecipeByAuthorId(useId);
        for (Recipe recipe : list) {
            if(recipe.getId().equals(recipeId)) return recipe;
        }
        return null;
    }
    public List<Kind> getAllKind(){
        List<Kind> list = new ArrayList<>();
        String query = "select * from Kind_HE161250";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Kind(rs.getString(1), 
                        rs.getString(2), 
                        rs.getInt(3)));
            }
        } catch (Exception e) {
            status = "Error at load Kind "+e.getMessage();
        }
        return list;
    }
    
     public List<User> getAllUsers(){
        List<User> list = new ArrayList<>();
        String query = "select * from Account_HE161250";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new User(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5), 
                        rs.getInt(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
        } catch (Exception e) {
            status = "Error at load Account "+e.getMessage();
        }
        return list;
    }
     public User login(String user, String pass){
        String query = "select * from Account_HE161250 WHERE email=? and Password= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return (new User(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5), 
                        rs.getInt(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
        } catch (Exception e) {
            status = "Error at load Account "+e.getMessage();
        }
        return null;
    }
     public User checkAccountExist(String user){
        String query = "select * from Account_HE161250 WHERE email=?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            rs = ps.executeQuery();
            while(rs.next()){
                return (new User(rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5), 
                        rs.getInt(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
        } catch (Exception e) {
            status = "Error at load Account "+e.getMessage();
        }
        return null;
    }
    
    
    public void changePassword(String email, String pass)
     {
        String query = "UPDATE Account_HE161250\n" +
"SET Password = ?\n" +
"WHERE Email=?;";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
           
           // ps.setString(1,user);
            ps.setString(1, pass );
            ps.setString(2, email);           
            ps.executeUpdate();
            
        } catch (Exception e) {
            status = "Error at  "+e.getMessage();
        }
    }
  
     public void signup(String user, String pass,String name, String phone ,String address, String securityQuestion,String answer){
        String query = "insert into Account_HE161250 values(?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
           
           // ps.setString(1,user);
            ps.setString(1, "0000000008" );
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, user);
            ps.setInt(6, 0);
            ps.setInt(7, 1);
            ps.setString(8, address);
            ps.setString(9, securityQuestion);
            ps.setString(10, answer);
            ps.executeUpdate();
            
        } catch (Exception e) {
            status = "Error at  "+e.getMessage();
        }
    }
  
     public void addAdmin(String user, String pass,String name, String phone ,String address, String securityQuestion,String answer){
        String query = "insert into Account_HE161250 values(?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
           
           // ps.setString(1,user);
            ps.setString(1, "0000000007" );
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, user);
            ps.setInt(6, 1);
            ps.setInt(7, 1);
            ps.setString(8, address);
            ps.setString(9, securityQuestion);
            ps.setString(10, answer);
            ps.executeUpdate();
            
        } catch (Exception e) {
            status = "Error at  "+e.getMessage();
        }
    }
  
     public void deleteRecipe(String id){
        String query = "delete FROM Recipe_HE161250\n" +
                        "Where id= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen id vao dau cham hoi thu nhat
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
    }
     public void addKind(String name){
        String query = "insert into Kind_HE161250 values(?,?,?)";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, "0000000016"); 
            ps.setString(2, name); 
            ps.setInt(3, 0);
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
    }
     public void deleteKind(String id){
        String query = "delete FROM Kind_HE161250\n" +
                        "Where [Id] = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen id vao dau cham hoi thu nhat
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load "+e.getMessage();
        }
    }
     public void deleteUser(String id){
        String query = "delete FROM Account_HE161250\n" +
                        "Where [Id]= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, id); //truyen id vao dau cham hoi thu nhat
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load "+e.getMessage();
        }
    }
      public void deleteFavoriteRecipe(String recipeId, String userId){
        String query = "delete from ListFavorite_HE161250\n" +
                    "where recipeId = ? and usedId=?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, recipeId); //truyen id vao dau cham hoi thu nhat
            ps.setString(2, userId);
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load "+e.getMessage();
        }
    }
      public void addFavoriteRecipe(String recipeId, String userId){
        String query = "insert into ListFavorite_HE161250\n" +
                    "Values (?,?)";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, userId); //truyen id vao dau cham hoi thu nhat
            ps.setString(2, recipeId);
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load "+e.getMessage();
        }
    }
     public void addRecipe(String name, String kindId, String authorId, String picture, String des, int time){
        String query = "INSERT INTO [dbo].[Recipe_HE161250]\n" +
"           ([Id]\n" +
"           ,[Name]\n" +
"           ,[kindId]\n" +
"           ,[authorId]\n" +
"           ,[Like]\n" +
"           ,[Picture]\n" +
"           ,[Description]\n" +
"           ,[Time])\n" +
"     VALUES (?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, "0000000030"); //truyen id vao dau cham hoi thu nhat
            ps.setString(2, name); //truyen id vao dau cham hoi thu nhat
            ps.setString(3, kindId); //truyen id vao dau cham hoi thu nhat
            ps.setString(4, authorId); 
            ps.setInt(5, 0);
            ps.setString(6, picture); //truyen id vao dau cham hoi thu nhat
            ps.setString(7, des);
            ps.setInt(8, time);
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
    }
     public void updateRecipe(String recipeId, String name, String kindId, String picture, String des, int time){
        String query = "  UPDATE [dbo].[Recipe_HE161250]  "
                + "set [Name] = ?,[kindId] = ? ,[Picture] = ?,[Description] = ? ,[Time]= ?\n" +
"  where [Id]= ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, name); //truyen id vao dau cham hoi thu nhat
            ps.setString(2, kindId); 
            ps.setString(3, picture); 
            ps.setString(4, des);
            ps.setInt(5, time);
            ps.setString(6, recipeId);
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
    }
     public void updateAccount(String id,String pass, String name, String phone, String email, int active, String address, String QuestionSecurity, String answer){
        String query = "  UPDATE [dbo].[Account_HE161250]\n" +
"   SET [Password] = ?\n" +
"      ,[Name] = ?\n" +
"      ,[Telephone] = ?\n" +
"      ,[Email] = ?\n" +
"      ,[Active] = ?\n" +
"      ,[Address] = ?\n" +
"      ,[QuestionSecurity] = ?\n" +
"      ,[Answer] = ?\n" +
" WHERE [Id]=?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi vs sql server
            ps = conn.prepareStatement(query);
            ps.setString(1, pass); //truyen id vao dau cham hoi thu nhat
            ps.setString(2, name); 
            ps.setString(3, phone); 
            ps.setString(4, email);
            ps.setInt(5, active);
            ps.setString(6, address);
            ps.setString(7, QuestionSecurity);
            ps.setString(8, answer);
            ps.setString(9, id);
            ps.executeUpdate();
        } catch (Exception e) {
            status = "Error at load Recipe "+e.getMessage();
        }
    }
    
    public static void main(String[] args) {
        System.out.println(new DAO().checkRecipeExistInFavorite("0000000001", "0000000010"));
    }
}
