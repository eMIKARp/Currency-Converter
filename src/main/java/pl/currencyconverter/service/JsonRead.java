package pl.currencyconverter.service;

import java.io.InputStream;
import java.net.URL;
import javax.json.*;
import javax.json.Json;
import javax.json.JsonObject;
import java.net.HttpURLConnection;

public class JsonRead {
    
    public static JsonObject createMyJsonObject (String currencyToCheck) throws Exception{
        
        String nbpApiUrl = "http://api.nbp.pl/api/exchangerates/rates/a/"+currencyToCheck+"?format=json";
        URL npbApiUrlObj = new URL(nbpApiUrl);
        HttpURLConnection conToNbpApi = (HttpURLConnection)npbApiUrlObj.openConnection();
        InputStream in = conToNbpApi.getInputStream();
        JsonObject jsonObject = null;
        JsonReader jsonReader = Json.createReader(in);
        jsonObject = jsonReader.readObject();
        jsonReader.close();
        
        return jsonObject;
    }
 
    public static double getConversionRate(String currencyToCheck) throws Exception {

        Double conversionRate = null;
        if (!"PLN".equals(currencyToCheck)){
        JsonObject jsonObject = createMyJsonObject(currencyToCheck);
        JsonArray jsonArray = jsonObject.getJsonArray("rates");
        if (jsonArray !=null){
            for (int i=0; i< jsonArray.size();i++){
                conversionRate = jsonArray.getJsonObject(i).getJsonNumber("mid").doubleValue();
            }
        }
        } else conversionRate = 1.0;
            
        return conversionRate;
    }
    
    public static String getConversionCurrencyName(String currencyToCheck) throws Exception {

        String conversionCurrencyName = null;
        if (!"PLN".equals(currencyToCheck)){
        JsonObject jsonObject = createMyJsonObject(currencyToCheck);
        if (jsonObject !=null){
                conversionCurrencyName = jsonObject.getString("currency");
            }
        } else conversionCurrencyName = "złoty";
        return conversionCurrencyName;
    }
    
    public static String getConversionCurrencyCode(String currencyToCheck) throws Exception {

        String conversionCurrencyCode = null;
         if (!"PLN".equals(currencyToCheck)){
        JsonObject jsonObject = createMyJsonObject(currencyToCheck);
        if (jsonObject !=null){
                conversionCurrencyCode = jsonObject.getString("code");
            }
         } else conversionCurrencyCode = "PLN";
        return conversionCurrencyCode;
    }
    
}
