package com.awctw.TFTItemBuild.model;

public class TeamComp {
    public String getTeamCompName() {
        return teamCompName;
    }

    public void setTeamCompName(String teamCompName) {
        this.teamCompName = teamCompName;
    }

    public String getMainCarry1() {
        return mainCarry1;
    }

    public void setMainCarry1(String mainCarry1) {
        this.mainCarry1 = mainCarry1;
    }

    public String getMainCarry2() {
        return mainCarry2;
    }

    public void setMainCarry2(String mainCarry2) {
        this.mainCarry2 = mainCarry2;
    }

    public String getTeammate() {
        return teammate;
    }

    public void setTeammate(String teammate) {
        this.teammate = teammate;
    }

    private String teamCompName;
    private String mainCarry1;
    private String mainCarry2;
    private String teammate;

    public TeamComp(String teamCompName, String mainCarry1, String mainCarry2, String teammate) {
        this.teamCompName = teamCompName;
        this.mainCarry1 = mainCarry1;
        this.mainCarry2 = mainCarry2;
        this.teammate = teammate;
    }

}
