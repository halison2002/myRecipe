/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author Le Vu
 */
public class User {
    private String id;
    private String pass;
    private String name;
    private String phone;
    private String email;
    private int role;
    private boolean active;
    private String address;
    private String questionSecurity;
    private String answer;

    public User() {
    }

    public User(String id, String pass, String name, String phone, String email, int role, boolean active, String Address, String QuestionSecurity, String Answer) {
        this.id = id;
        this.pass = pass;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.role = role;
        this.active = active;
        this.address = Address;
        this.questionSecurity = QuestionSecurity;
        this.answer = Answer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String Address) {
        this.address = Address;
    }

    public String getQuestionSecurity() {
        return questionSecurity;
    }

    public void setQuestionSecurity(String QuestionSecurity) {
        this.questionSecurity = QuestionSecurity;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String Answer) {
        this.answer = Answer;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", pass=" + pass + ", name=" + name + ", "
                + "phone=" + phone + ", email=" + email + ", role=" + role + ", "
                + "active=" + active + ", Address=" + address + ", "
                + "QuestionSecurity=" + questionSecurity + ", Answer=" + answer + '}';
    }
    
    
    
}
