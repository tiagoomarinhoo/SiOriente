package OBJ;

public class User {

    private String Nome;
private String Email;
private String Gender;
private String Senha;
private String Resenha;
private String Phone;
private String Registration;
private String State;
private String City;
private String BornDate;
private String Country;
private String ZipCode;

    public User(String Nome, String Email, String Gender, String Senha, String Resenha, String Phone, String Registration, String State, String City, String BornDate, String Country, String ZipCode) {
        this.Nome = Nome;
        this.Email = Email;
        this.Gender = Gender;
        this.Senha = Senha;
        this.Resenha = Resenha;
        this.Phone = Phone;
        this.Registration = Registration;
        this.State = State;
        this.City = City;
        this.BornDate = BornDate;
        this.Country = Country;
        this.ZipCode = ZipCode;
    }



    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getSenha() {
        return Senha;
    }

    public void setSenha(String Senha) {
        this.Senha = Senha;
    }

    public String getResenha() {
        return Resenha;
    }

    public void setResenha(String Resenha) {
        this.Resenha = Resenha;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getRegistration() {
        return Registration;
    }

    public void setRegistration(String Registration) {
        this.Registration = Registration;
    }

    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getBornDate() {
        return BornDate;
    }

    public void setBornDate(String BornDate) {
        this.BornDate = BornDate;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getZipCode() {
        return ZipCode;
    }

    public void setZipCode(String ZipCode) {
        this.ZipCode = ZipCode;
    }

   

}
