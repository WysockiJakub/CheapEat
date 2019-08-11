package pl.coderslab.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class RestaurantConverter implements Converter<String, Restaurant> {

    @Autowired
    private RestaurantRepository restaurantRepository;

    @Override
    public Restaurant convert(String s) {
        Long id = Long.parseLong(s);
        return restaurantRepository.findById(id).get();
    }
}
