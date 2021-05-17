package com.awctw.TFTItemBuild.model;

public class Champion {
    public String getChampionName() {
        return championName;
    }

    public void setChampionName(String championName) {
        this.championName = championName;
    }

    public Champion(String championName) {
        this.championName = championName;
    }

    private String championName;

    @Override
    public String toString() {
        return "Champion{" +
                "championName=" + championName +
                '}';
    }
}
