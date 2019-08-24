package pl.coderslab.restaurant;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import pl.coderslab.promotion.Promotion;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "restaurant")
public class Restaurant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(max = 30, min = 2)
    private String name;

    @Size(max = 500)
    private String info;

    @NotBlank
    @Size(max = 20)
    private String city;

    @NotBlank
    private String street;

    @NotBlank
    @Size(max = 4)
    private String houseNumber;

    @NotBlank
    private String zipCode;

    @NotBlank
    private String website;

    @NotBlank
    @Size(max=15)
    private String phoneNumber;

    @NotBlank
    @Email
    private String email;

    @Transient
    private double avgNote;

    private String localizationUrl;

    @OneToMany(mappedBy = "restaurant", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Promotion> promotions;

    public Restaurant() {
    }

    public Restaurant(String name, String info, String city, String street, String houseNumber, String zipCode, String website, String phoneNumber, String email, double avgNote, String localizationUrl, List<Promotion> promotions) {
        this.name = name;
        this.info = info;
        this.city = city;
        this.street = street;
        this.houseNumber = houseNumber;
        this.zipCode = zipCode;
        this.website = website;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.avgNote = avgNote;
        this.localizationUrl = localizationUrl;
        this.promotions = promotions;
    }

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

    public void setId(Long id) {
        this.id = id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(String houseNumber) {
        this.houseNumber = houseNumber;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
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

    public String getLocalizationUrl() { return localizationUrl;
    }

    public void setLocalizationUrl(String localizationUrl) {
        this.localizationUrl = localizationUrl;
    }

}
