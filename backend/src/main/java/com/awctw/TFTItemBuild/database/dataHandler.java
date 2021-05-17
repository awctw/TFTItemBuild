package com.awctw.TFTItemBuild.database;


import com.awctw.TFTItemBuild.model.Champion;
import com.awctw.TFTItemBuild.model.ChampionItems;
import com.awctw.TFTItemBuild.model.FinalItem;
import com.awctw.TFTItemBuild.model.Items;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface dataHandler {

    @Insert({"INSERT IGNORE INTO ChampionItems(championName,finalItemName1, finalItemName2, finalItemName3) " +
            "VALUES (#{champ},#{finalItem1}, #{finalItem2}, #{finalItem3})"})
    void insertSpecChampItems(Items item, String champ, String finalItem1, String finalItem2, String finalItem3);

    @Insert({"INSERT INTO TeamComp(teamCompName, mainCarry1, mainCarry2, teammate3, teammate4, teammate5, teammate6, teammate7, teammate8) " +
            "VALUES (#{teamCompName}, #{mainCarry1}, #{mainCarry2}, #{teammate3}, #{teammate4}, #{teammate5}, #{teammate6}, #{teammate7}, #{teammate8})"})
    void insertComp(Items item, String teamCompName, String mainCarry1, String mainCarry2, String teammate3, String teammate4, String teammate5,String teammate6,String teammate7, String teammate8);

    @Select("SELECT * FROM Champion")
    List<Champion> getAllChampion();

    @Select("SELECT * " +
            "FROM ChampionItems " +
            "WHERE finalItemName1 = #{finalItem} OR " +
            "finalItemName2 = #{finalItem} OR " +
            "finalItemName3 = #{finalItem}")
    List<ChampionItems> getChampionItems(String finalItem);

    @Select("SELECT * FROM ChampionItems")
    List<ChampionItems> getAllChampionItems();
}
