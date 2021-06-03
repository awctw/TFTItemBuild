package com.awctw.TFTItemBuild.model;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.*;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;


public class Items{

    Map<String, ArrayList<String>> map = new LinkedHashMap<>();
    Map<String, ArrayList<String>> specChampsNeededItems = new LinkedHashMap<>();

    public Items() throws IOException {
        parse();
    }


    private void parseTeams() throws IOException {
        ArrayList<String> teamList = new ArrayList<>();
        Document doc = Jsoup.connect("https://app.mobalytics.gg/tft/team-comps/").get();
        Elements comps = doc.getElementById("root").getElementsByClass("css-g9jylj e1yyksvk4");

        for (Element link : comps) {
            String linkHrefTeams = link.attr("href").replace("'", "%27");
            String specificCompLink = "https://app.mobalytics.gg" + linkHrefTeams;
            teamList.add(specificCompLink);

        }

        int compNum = 0;

        for (String team : teamList) {
            Document docTeam = Jsoup.connect(team).get();
            Element champs = docTeam.getElementsByClass("enl0bsh14 css-javxkw e31gwcf0").first();

            Elements links = champs.select("a[href]");

            ArrayList<String> listOfChamps = new ArrayList<>();
            for (int i = 0; i < links.size(); i++) {
                String linkHrefTeams = links.get(i).attr("href");
                String specificChampions = "https://app.mobalytics.gg" + linkHrefTeams;

                listOfChamps.add(specificChampions);
            }

            map.put(teamList.get(compNum),listOfChamps);

            compNum++;

        }

    }

    private void parseChampions() {

       Iterator<String> listOfComps = map.keySet().iterator();
        Iterator<ArrayList<String>> listOfChamps = map.values().iterator();


        System.setProperty("webdriver.chrome.driver", "src/main/resources/chromedriver.exe");

        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless");
        WebDriver driver = new ChromeDriver(options);

        while(listOfComps.hasNext()) {
            System.out.println("Comp:" + listOfComps.next());

            ArrayList<String> list = listOfChamps.next();


            for (int i = 0; i < list.size(); i++) {
                ArrayList<String> items = new ArrayList<>();

                driver.get(list.get(i));
                new WebDriverWait(driver, 10).until(d -> d.getTitle().toLowerCase().startsWith("tft"));

                WebElement element = driver.findElement(By.id("root"));
                String elementSource = element.getAttribute("innerHTML");
                Document doc = Jsoup.parse(elementSource);

                Elements champItems = doc.getElementsByClass("etjye371 e1sce2v11 css-p2koea");
                for (Element champItem: champItems) {
                    items.add(champItem.attr("title"));
                }
                specChampsNeededItems.put(list.get(i),items);

            }

            System.out.println(specChampsNeededItems);


        }
        driver.quit();


    }

    public Map<String, ArrayList<String>> getSpecChampsNeededItems(){
        return specChampsNeededItems;
    }

    public Map<String, ArrayList<String>> getMap() {return map;}

    private ArrayList<String> getCombinedItemIngredients(String champ) {
        return specChampsNeededItems.get(champ);
    }

    //maybe make it so that only the main carries are returned for each comp
    private ArrayList<String> getPossibleCombinedItems(String baseItem) {
        ArrayList<String> listOfPossibleChampions = new ArrayList<>();

            for (Map.Entry<String, ArrayList<String>> entry : specChampsNeededItems.entrySet()) {

                    if (entry.getValue().contains(baseItem)) {
                        listOfPossibleChampions.add(entry.getKey());
                    }
            }

        return listOfPossibleChampions;
    }

    private void writeToFile() {

        File file = new File("src/main/resources/static/info.html");

        try (BufferedWriter bf = new BufferedWriter(new FileWriter(file))) {

            for (Map.Entry<String, ArrayList<String>> entry : specChampsNeededItems.entrySet()) {

                String keys = entry.getKey().replaceAll("https://app.mobalytics.gg/tft/champions/","");
                bf.write(keys + ":" + entry.getValue());
                bf.newLine();
            }

            bf.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void parse() throws IOException {
        parseTeams();

        parseChampions();
        writeToFile();
    }

}
