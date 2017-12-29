package OBJ;

public class Country {

    private String CityName;
    private int AddressNumer;
    private int ZipCode;
    private String neighborhood;

    public Country(String CityName, int AddressNumer, int ZipCode, String neighborhood) {
        this.CityName = CityName;
        this.AddressNumer = AddressNumer;
        this.ZipCode = ZipCode;
        this.neighborhood = neighborhood;
    }

    
    
    public String getCityName() {
        return CityName;
    }

    public void setCityName(String CityName) {
        this.CityName = CityName;
    }

    public int getAddressNumer() {
        return AddressNumer;
    }

    public void setAddressNumer(int AddressNumer) {
        this.AddressNumer = AddressNumer;
    }

    public int getZipCode() {
        return ZipCode;
    }

    public void setZipCode(int ZipCode) {
        this.ZipCode = ZipCode;
    }

    public String getNeighborhood() {
        return neighborhood;
    }

    public void setNeighborhood(String neighborhood) {
        this.neighborhood = neighborhood;
    }

}
