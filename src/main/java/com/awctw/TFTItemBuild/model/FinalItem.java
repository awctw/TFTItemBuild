package com.awctw.TFTItemBuild.model;

public class FinalItem {

    public FinalItem(String finalItemName, String finalItemPartName) {
        this.finalItemName = finalItemName;
        this.finalItemPartName = finalItemPartName;
    }

    private String finalItemName;
    private String finalItemPartName;

    public String getFinalItemName() {
        return finalItemName;
    }

    public void setFinalItemName(String finalItemName) {
        this.finalItemName = finalItemName;
    }

    public String getFinalItemPartName() {
        return finalItemPartName;
    }

    public void setFinalItemPartName(String finalItemPartName) {
        this.finalItemPartName = finalItemPartName;
    }


}
