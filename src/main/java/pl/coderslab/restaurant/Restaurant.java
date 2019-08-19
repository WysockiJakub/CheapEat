package pl.coderslab.restaurant;

import pl.coderslab.promotion.Promotion;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "restaurant")
public class Restaurant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String info;

    private String address;

    private String website;

    private String phoneNumber;

    private String email;

    @Transient
    private double avgNote;

//    private String localizationUrl;

    @OneToMany(mappedBy = "restaurant", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Promotion> promotions;

    public Restaurant() {
    }

    public Restaurant(String name, String info, String address, String website, String phoneNumber, String email, List<Promotion> promotions) {
        this.name = name;
        this.info = info;
        this.address = address;
        this.website = website;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.promotions = promotions;
    }

//private List<Integer> notes = new ArrayList<>();


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Promotion> getPromotions() {
        return promotions;
    }

    public void setPromotions(List<Promotion> promotions) {
        this.promotions = promotions;
    }

    public Long getId() {
        return id;
    }

    public double getAvgNote() {
        return avgNote;
    }

    public void setAvgNote(double avgNote) {
        this.avgNote = avgNote;
    }

//    public String getLocalizationUrl() { return localizationUrl;
//    }
//
//    public void setLocalizationUrl(String localizationUrl) {
//        this.localizationUrl = localizationUrl;
//    }
}
