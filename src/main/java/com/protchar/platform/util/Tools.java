package com.protchar.platform.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.io.FileNotFoundException;
import java.io.FileReader;

/**
 * Created by scalaview on 16/4/30.
 */
public class Tools {

    public static JsonObject loadConfig(String filepath){
        JsonObject jsonObject = new JsonObject();
        JsonParser parser = new JsonParser();
        try {
            JsonElement jsonElement = parser.parse(new FileReader(filepath));
            jsonObject = jsonElement.getAsJsonObject();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return jsonObject;
    }

}
