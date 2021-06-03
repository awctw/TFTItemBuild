package com.awctw.TFTItemBuild.controller;


import com.awctw.TFTItemBuild.model.Champion;
import com.awctw.TFTItemBuild.model.*;
import com.awctw.TFTItemBuild.service.tftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Date;
import java.util.List;

@RestController
@CrossOrigin
public class tftController {

    @Autowired
    tftService service;

    @PostMapping("/insertSpecChampItems")
    public void insertSpecChampItems(Items item){
        service.insertSpecChampItems(item);
    }

    @Scheduled(fixedRate = 604800)
    public void insertComp() throws IOException {
        Date current = new Date();
        Items item = new Items();
        service.insertComp(item);
    }

    @GetMapping("/getAllChampion")
    public List<Champion> getAllChampion() {
        return service.getAllChampion();
    }

    @GetMapping("/getChampionItems")
    public List<ChampionItems> getChampionItems(@RequestParam String finalItem){
        return service.getChampionItems(finalItem);
    }

    @GetMapping("/getAllChampionItems")
    public List<ChampionItems> getAllChampionItems(){
        return service.getAllChampionItems();
    }

}
