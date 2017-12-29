package OBJ;

public class ProjectCategory {

    private String name;
    private String Description;

    public ProjectCategory(String name, String Description) {
        this.name = name;
        this.Description = Description;
    }

    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

}
