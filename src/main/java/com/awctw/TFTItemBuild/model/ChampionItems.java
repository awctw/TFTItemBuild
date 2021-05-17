package com.awctw.TFTItemBuild.model;

public class ChampionItems {

    private String championName;

    public ChampionItems(String championName, String finalItemName1, String finalItemName2, String finalItemName3) {
        this.championName = championName;
        this.finalItemName1 = finalItemName1;
        this.finalItemName2 = finalItemName2;
        this.finalItemName3 = finalItemName3;
    }

    private String finalItemName1;
    private String finalItemName2;
    private String finalItemName3;

    public String getChampionName() {
        return championName;
    }

    public void setChampionName(String championName) {
        this.championName = championName;
    }

    public String getFinalItemName1() {
        return finalItemName1;
    }

    public void setFinalItemName1(String finalItemName1) {
        this.finalItemName1 = finalItemName1;
    }

    public String getFinalItemName2() {
        return finalItemName2;
    }

    public void setFinalItemName2(String finalItemName2) {
        this.finalItemName2 = finalItemName2;
    }

    public String getFinalItemName3() {
        return finalItemName3;
    }

    public void setFinalItemName3(String finalItemName3) {
        this.finalItemName3 = finalItemName3;
    }




}
