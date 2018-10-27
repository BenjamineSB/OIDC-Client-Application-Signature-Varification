package com.client;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
@ConfigurationProperties("app")
public class AppProperties {

    //private List<Menu> menus = new ArrayList<>();
    
    public static class Menu {
        private String name;
        private String title;

        //getters and setters

        @Override
        public String toString() {
            return "Menu{" +
                    "name='" + name + '\'' +
                    ", title='" + title + '\'' +
                    '}';
        }
    }

    public void getSec()
    {
        //return menus.toString();
    }
}
