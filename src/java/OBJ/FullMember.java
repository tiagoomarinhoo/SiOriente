
package OBJ;

public class FullMember {
    private User User;
    private UserPerfil UserPerfil;
    private Country Country;
    

    public FullMember(User User, UserPerfil UserPerfil, Country Country) {
        this.User = User;
        this.UserPerfil = UserPerfil;
        this.Country = Country;
    }
    
    
    public void Save(User User, UserPerfil UserPerfil, Country Country){
        
        this.User = User;
        this.UserPerfil = UserPerfil;
        this.Country = Country;
        
    }

    public User getUser() {
        return User;
    }

    public UserPerfil getUserPerfil() {
        return UserPerfil;
    }

    public Country getCountry() {
        return Country;
    }
    
}
