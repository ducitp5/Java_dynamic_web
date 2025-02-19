package com.example;

import java.util.ArrayList;
import java.util.List;

public class LegumeBean {
    private List<String> legumes = new ArrayList<>();

    public LegumeBean() {
        legumes.add("poireau");
        legumes.add("haricot");
        legumes.add("carotte");
        legumes.add("pomme de terre");
    }

    public List<String> getLegumes() {
        return legumes;
    }
}
