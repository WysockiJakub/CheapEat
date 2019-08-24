package pl.coderslab.promotion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import pl.coderslab.auth.model.User;
import pl.coderslab.auth.repository.UserRepository;
import pl.coderslab.utilities.Utils;

import javax.jws.soap.SOAPBinding;
import java.time.DayOfWeek;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class PromotionService {

    private PromotionRepository promotionRepository;
    private UserRepository userRepository;

    @Autowired
    public PromotionService(PromotionRepository promotionRepository, UserRepository userRepository) {
        this.promotionRepository = promotionRepository;
        this.userRepository = userRepository;
    }

    @ModelAttribute(name = "categories")
    List<String> categories() {
        return Arrays.asList("Dania wegetarianskie", "Chinszczyzna", "Owoce morza", "Nalesniki", "Obiady domowe", "Kebab", "Burgery", "Pierogi", "Sushi", "Makarony", "Salatki", "Ramen", "Pizza", "Alkohole");
    }

    public void countPromotionAverageNote(Promotion promotion) {
        if (!promotion.getReviews().isEmpty()) {
            promotion.setAverageNote(Utils.round(promotionRepository.getAverageNoteByPromotionId(promotion.getId()), 2));
        } else {
            promotion.setAverageNote(0);
        }
    }

    public void countPromotionAverageNoteForAllPromotions(List<Promotion> promotions) {
        for (Promotion p : promotions) {
            countPromotionAverageNote(p);
        }
    }

    public void countPromotionSubscription(Promotion promotion) {
        List<User> allUsers = userRepository.findAll();
        int subscription = 0;
        for(User user : allUsers) {
            if (user.getFavouritesPromotions().contains(promotion)) {
                subscription += 1;
            }
        }
        promotion.setSubscription(subscription);
    }

    public int countPromotionSubscriptionsForRestaurant(List<Promotion> promotions) {
        int allRestaurantSubscription = 0;
        countPromotionAverageNoteForAllPromotions(promotions);
        for (Promotion p : promotions) {
            allRestaurantSubscription += p.getSubscription();
        }
        return allRestaurantSubscription;
    }

    public void addToModelFavouritePromotionsByDayOfWeek(List<Promotion> promotions, Model model) {
        List<Promotion> monday = new ArrayList<>();
        List<Promotion> tuesday = new ArrayList<>();
        List<Promotion> wednesday = new ArrayList<>();
        List<Promotion> thursday = new ArrayList<>();
        List<Promotion> friday = new ArrayList<>();
        List<Promotion> saturday = new ArrayList<>();
        List<Promotion> sunday = new ArrayList<>();

        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == DayOfWeek.MONDAY) {
                monday.add(p);
            }
        }
        model.addAttribute("monday", monday);

        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == DayOfWeek.TUESDAY) {
                tuesday.add(p);
            }
        }
        model.addAttribute("tuesday", tuesday);

        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == DayOfWeek.WEDNESDAY) {
                wednesday.add(p);
            }
        }
        model.addAttribute("wednesday", wednesday);

        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == DayOfWeek.THURSDAY) {
                thursday.add(p);
            }
        }
        model.addAttribute("thursday", thursday);

        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == DayOfWeek.FRIDAY) {
                friday.add(p);
            }
        }
        model.addAttribute("friday", friday);

        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == DayOfWeek.SATURDAY) {
                saturday.add(p);
            }
        }
        model.addAttribute("saturday", saturday);

        for (Promotion p : promotions) {
            if (p.getDayOfWeek() == DayOfWeek.SUNDAY) {
                sunday.add(p);
            }
        }
        model.addAttribute("sunday", sunday);
    }

    public void addToModelFavouritePromotionsByCategory(List<Promotion> promotions, Model model) {

        List<Promotion> wegetarianskie = new ArrayList<>();
        List<Promotion> chinszczyzna = new ArrayList<>();
        List<Promotion> owoceMorza = new ArrayList<>();
        List<Promotion> nalesniki = new ArrayList<>();
        List<Promotion> obiadyDomowe = new ArrayList<>();
        List<Promotion> kebab = new ArrayList<>();
        List<Promotion> burgery = new ArrayList<>();
        List<Promotion> pierogi = new ArrayList<>();
        List<Promotion> sushi = new ArrayList<>();
        List<Promotion> makarony = new ArrayList<>();
        List<Promotion> salatki = new ArrayList<>();
        List<Promotion> ramen = new ArrayList<>();
        List<Promotion> pizza = new ArrayList<>();
        List<Promotion> alkohole = new ArrayList<>();

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Dania wegetarianskie")) {
                wegetarianskie.add(p);
            }
        }
        model.addAttribute("wegetarianskie", wegetarianskie);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Chinszczyzna")) {
                chinszczyzna.add(p);
            }
        }
        model.addAttribute("chinszczyzna", chinszczyzna);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Owoce morza")) {
                owoceMorza.add(p);
            }
        }
        model.addAttribute("owoceMorza", owoceMorza);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Nalesniki")) {
                nalesniki.add(p);
            }
        }
        model.addAttribute("nalesniki", nalesniki);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Obiady domowe")) {
                obiadyDomowe.add(p);
            }
        }
        model.addAttribute("obiadyDomowe", obiadyDomowe);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Kebab")) {
                kebab.add(p);
            }
        }
        model.addAttribute("kebab", kebab);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Burgery")) {
                burgery.add(p);
            }
        }
        model.addAttribute("burgery", burgery);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Pierogi")) {
                pierogi.add(p);
            }
        }
        model.addAttribute("pierogi", pierogi);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Sushi")) {
                sushi.add(p);
            }
        }
        model.addAttribute("sushi", sushi);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Makarony")) {
                makarony.add(p);
            }
        }
        model.addAttribute("makarony", makarony);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Salatki")) {
                salatki.add(p);
            }
        }
        model.addAttribute("salatki", salatki);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Ramen")) {
                ramen.add(p);
            }
        }
        model.addAttribute("ramen", ramen);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Pizza")) {
                pizza.add(p);
            }
        }
        model.addAttribute("pizza", pizza);

        for (Promotion p : promotions) {
            if (p.getCategory().equals("Alkohole")) {
                alkohole.add(p);
            }
        }
        model.addAttribute("alkohole", alkohole);
    }
}
