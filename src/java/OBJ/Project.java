package OBJ;

public class Project {

    private String PNome;
    private String Email;
    private String Tipo;
    private String Area;
    private String Nome;
    private String Skype;
    private String descricao;
    private String vaga;
    private int PID;
    private int CID;

 

    public Project(String PNome, String Email, String Tipo, String Area, String Nome, String Skype, String descricao, String vaga) {
        this.PNome = PNome;
        this.Email = Email;
        this.Tipo = Tipo;
        this.Area = Area;
        this.Nome = Nome;
        this.Skype = Skype;
        this.descricao = descricao;
        this.vaga = vaga;

    }

    public Project(String PNome, String Email, String Tipo, String Area, String Nome, String Skype, String descricao,int Vagas,int PID,int CID) {
        this.PNome = PNome;
        this.Email = Email;
        this.Tipo = Tipo;
        this.Area = Area;
        this.Nome = Nome;
        this.Skype = Skype;
        this.descricao = descricao;
        this.vaga = ""+Vagas;
        this.PID = PID;
        this.CID = CID;

    }

    public int getPID() {
        return PID;
    }

    public void setPID(int PID) {
        this.PID = PID;
    }

    public int getCID() {
        return CID;
    }

    public void setCID(int CID) {
        this.CID = CID;
    }
    
  
    
   public String getVaga() {
        return vaga;
    }

    public void setVaga(String vaga) {
        this.vaga = vaga;
    }
    public String getPNome() {
        return PNome;
    }

    public void setPNome(String PNome) {
        this.PNome = PNome;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getArea() {
        return Area;
    }

    public void setArea(String Area) {
        this.Area = Area;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getSkype() {
        return Skype;
    }

    public void setSkype(String Skype) {
        this.Skype = Skype;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

}
