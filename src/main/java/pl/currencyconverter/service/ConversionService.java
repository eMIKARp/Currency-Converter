/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pl.currencyconverter.service;

import pl.currencyconverter.model.CurrencyConversion;

/**
 *
 * @author emikarp
 */
public class ConversionService {
    
    public double convertCurrency(double amountToConvert, String currencyToConvertFrom, String currencyToConvertTo) throws Exception{
        
        Double conversionResult = null;
        
        CurrencyConversion currencyConversion = new CurrencyConversion();
        
        currencyConversion.setAmountToConvert(amountToConvert);
        currencyConversion.setCurrencyToConvertFrom(currencyToConvertFrom);
        currencyConversion.setCurrencyToConvertTo(currencyToConvertTo);
        currencyConversion.setExchangeRate(JsonRead.getConversionRate(currencyToConvertFrom) / JsonRead.getConversionRate(currencyToConvertTo));
        conversionResult = currencyConversion.getConversionResult();
        
        return conversionResult;
    }
    
}
