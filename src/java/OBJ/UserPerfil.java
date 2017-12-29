package OBJ;

public class UserPerfil {

    private int PerfilCategory;
    private String Description;

    public UserPerfil(int PerfilCategory, String Description) {
        this.PerfilCategory = PerfilCategory;
        this.Description = Description;
    }
    
    

    public int getPerfilCategory() {
        return PerfilCategory;
    }

    public void setPerfilCategory(int PerfilCategory) {
        this.PerfilCategory = PerfilCategory;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

}
