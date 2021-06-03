package com.awctw.TFTItemBuild.service;

import com.awctw.TFTItemBuild.database.dataHandler;
import com.awctw.TFTItemBuild.model.Champion;
import com.awctw.TFTItemBuild.model.ChampionItems;
import com.awctw.TFTItemBuild.model.FinalItem;
import com.awctw.TFTItemBuild.model.Items;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Service
public class tftService {
    @Autowired
    private dataHandler handler;

    public void insertSpecChampItems(Items item) {

        Map<String, ArrayList<String>> map = item.getSpecChampsNeededItems();
            for (Map.Entry<String, ArrayList<String>> entry : map.entrySet()) {
                String champ = entry.getKey().replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                String finalItem1 = entry.getValue().get(0);
                String finalItem2 = entry.getValue().get(3);
                String finalItem3 = entry.getValue().get(6);

                handler.insertSpecChampItems(item, champ, finalItem1, finalItem2, finalItem3);
        }
    }

    public void insertComp(Items item){
        deleteComp();
        Map<String, ArrayList<String>> map = item.getMap();

        Iterator<String> listOfComps = map.keySet().iterator();
        Iterator<ArrayList<String>> listOfChamps = map.values().iterator();
        String mainCarry1 = null;
        String mainCarry2 = null;
        String teammate3 = null;
        String teammate4 = null;
        String teammate5 = null;
        String teammate6 = null;
        String teammate7 = null;
        String teammate8 = null;


        while(listOfComps.hasNext()) {
            String teamCompName = listOfComps.next().replaceAll("https://app.mobalytics.gg/tft/team-comps/", "");
            ArrayList<String> list = listOfChamps.next();

            for (int i = 0; i < list.size(); i++) {
                switch (i) {
                    case 0:
                        mainCarry1 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                        break;
                    case 1:
                        mainCarry2 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                        break;
                    case 2:
                        teammate3 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                        break;
                    case 3:
                        teammate4 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                        break;
                    case 4:
                        teammate5 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                        break;
                    case 5:
                        teammate6 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                        break;
                    case 6:
                        teammate7 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "") ;
                        break;
                    case 7:
                        teammate8 = list.get(i).replaceAll("https://app.mobalytics.gg/tft/champions/", "");
                        break;

                }

            }
            handler.insertComp(item, teamCompName, mainCarry1, mainCarry2, teammate3, teammate4, teammate5, teammate6, teammate7, teammate8);

        }

    }

    public List<Champion> getAllChampion(){
        return handler.getAllChampion();
    }

    public List<ChampionItems> getChampionItems(String finalItem) {
        return handler.getChampionItems(finalItem);
    }

    public List<ChampionItems> getAllChampionItems(){return handler.getAllChampionItems();}

    public void deleteComp(){handler.deleteComp();}
}
