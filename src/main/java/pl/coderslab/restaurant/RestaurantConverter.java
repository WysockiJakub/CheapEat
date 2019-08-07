package pl.coderslab.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class RestaurantConverter implements Converter<String, Restaurant> {

    @Autowired
    private RestaurantDao restaurantDao;

    @Override
    public Restaurant convert(String s) {
        Long id = Long.parseLong(s);
        return restaurantDao.find(id);
    }
}
