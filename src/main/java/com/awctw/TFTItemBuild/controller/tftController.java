package com.awctw.TFTItemBuild.controller;


import com.awctw.TFTItemBuild.model.Champion;
import com.awctw.TFTItemBuild.model.*;
import com.awctw.TFTItemBuild.service.tftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@RestController
@CrossOrigin
public class tftController {

    @Autowired
    private tftService service;

    @PostMapping("/insertSpecChampItems")
    public void insertSpecChampItems(Items item) throws IOException {
        service.insertSpecChampItems(item);
    }

    @PostMapping("/insertComp")
    public void insertComp(Items item) throws IOException {
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
