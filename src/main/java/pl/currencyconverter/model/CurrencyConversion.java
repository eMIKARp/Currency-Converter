package pl.currencyconverter.model;

public class CurrencyConversion {
    
    private String currencyToConvertFrom;
    private String currencyToConvertTo;
    private double amountToConvert;
    private double exchangeRate;
    private double conversionResult;

    public CurrencyConversion() {
    }

    public CurrencyConversion(String currencyToConvertFrom, String currencyToConvertTo, double amountToConvert, double exchangeRate, double conversionResult) {
        this.currencyToConvertFrom = currencyToConvertFrom;
        this.currencyToConvertTo = currencyToConvertTo;
        this.amountToConvert = amountToConvert;
        this.exchangeRate = exchangeRate;
        this.conversionResult = conversionResult;
    }

    public String getCurrencyToConvertFrom() {
        return currencyToConvertFrom;
    }

    public void setCurrencyToConvertFrom(String currencyToConvertFrom) {
        this.currencyToConvertFrom = currencyToConvertFrom;
    }

    public String getCurrencyToConvertTo() {
        return currencyToConvertTo;
    }

    public void setCurrencyToConvertTo(String currencyToConvertTo) {
        this.currencyToConvertTo = currencyToConvertTo;
    }

    public double getAmountToConvert() {
        return amountToConvert;
    }

    public void setAmountToConvert(double amountToConvert) {
        this.amountToConvert = amountToConvert;
    }

    public double getExchangeRate() {
        return exchangeRate;
    }

    public void setExchangeRate(double exchangeRate) {
        this.exchangeRate = exchangeRate;
    }

    public double getConversionResult() {
        
        conversionResult = Math.round(amountToConvert*exchangeRate*100.0) / 100.0;
        return conversionResult;
    }

    public void setConversionResult(double conversionResult) {
        this.conversionResult = conversionResult;
    }
    
}
