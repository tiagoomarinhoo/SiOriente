package OBJ;

public class ProfessionalCategory {

    private String Name;
    private String Description;

    
    public ProfessionalCategory(String Name, String Description) {
        this.Name = Name;
        this.Description = Description;
    }

    
    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

}
