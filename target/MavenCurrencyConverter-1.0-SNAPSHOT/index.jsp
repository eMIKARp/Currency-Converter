<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
        <title>Kalkulator walutowy</title>
    </head>
    <body>
        
    <nav class="navbar navbar-inverse navbar-fixed-top container">
         <a href="#" class="navbar-brand">Kalkulator Walutowy</a>
    </nav>
    
        <div class="container mySection">
            <h3 class="text-center">Kalkulator walutowy</h3><br>
            <form class="row" action="ConversionController" method="post" novalidate>
                <div class="form-group col-sm-3">
                    <label>Kwota:</label>
                    <input type="text" value="<%= request.getParameter("amountToConvert") %>" name="amountToConvert" class="form-control" placeholder="Podaj kwotę" required/>
                </div>
                <div class="form-group col-sm-3">
                    <label>Przelicz z: </label>
                    <select name="currencyToConvertFrom" class="form-control" >
                     <option value="PLN" selected="selected">PLN - Złotówka polska</option>
                     <option value="USD">USD - Dolar amerykański</option>
                     <option value="EUR">EUR - Euro</option>
                     <option value="CHF">CHF - Frank szwajcarski</option>
                     <option value="GBP">GBP - Funt szterling</option>
                     <option value="THB">THB - Bat tajlandzki</option>
                     <option value="AUD">AUD - Dolar australijski</option>
                     <option value="HKD">HKD - Dolar hongkoński</option>
                     <option value="CAD">CAD - Dolar kanadyjski</option>
                     <option value="NZD">NZD - Dolar nowozelandzki</option>
                     <option value="SGD">SGD - Dolar singapurski</option>
                     <option value="HUF">HUF - Forint węgierski</option>
                     <option value="UAH">UAH - Hrywna ukraińska</option>
                     <option value="JPY">JPY - Jen japoński</option>
                     <option value="CNY">CNY - Juan chiński</option>
                     <option value="CZK">CZK - Korona czeska</option>
                     <option value="DKK">DKK - Korona duńska</option>
                     <option value="ISK">ISK - Korona islandzka</option>
                     <option value="NOK">NOK - Korona norweska</option>
                     <option value="SEK">SEK - Korona szwedzka</option>
                     <option value="HRK">HRK - Kuna chorwacka</option>
                     <option value="RON">RON - Lej rumuński</option>
                     <option value="BGN">BGN - Lew bułgarski</option>
                     <option value="TRY">TRY - Lira turecka</option>
                     <option value="LTL">LTL - Lit litewski</option>
                     <option value="LVL">LVL - Łat łotewski</option>
                     <option value="PHP">PHP - Peso filipińskie</option>
                     <option value="MXN">MXN - Peso meksykańskie</option>
                     <option value="ZAR">ZAR - Rand (RPA)</option>
                     <option value="BRL">BRL - Real brazylijski</option>
                     <option value="MYR">MYR - Ringgit malezyjski</option>
                     <option value="RUB">RUB - Rubel rosyjski</option>
                     <option value="IDR">IDR - Rupia indonezyjska</option>
                     <option value="INR">INR - Rupia indyjska</option>
                     <option value="KRW">KRW - Won (Korea Płd.)</option>
                     <option value="XDR">XDR - SDR (MFW)</option>
                 </select>
                </div>
                <div class="form-group col-sm-3">
                    <label>Przelicz na:</label>
                    <select name="currencyToConvertTo" class="form-control">
                      <option value="PLN" selected="selected">PLN - Złotówka polska</option>
                      <option value="USD">USD - Dolar amerykański</option>
                      <option value="EUR">EUR - Euro</option>
                      <option value="CHF">CHF - Frank szwajcarski</option>
                      <option value="GBP">GBP - Funt szterling</option>
                      <option value="THB">THB - Bat tajlandzki</option>
                      <option value="AUD">AUD - Dolar australijski</option>
                      <option value="HKD">HKD - Dolar hongkoński</option>
                      <option value="CAD">CAD - Dolar kanadyjski</option>
                      <option value="NZD">NZD - Dolar nowozelandzki</option>
                      <option value="SGD">SGD - Dolar singapurski</option>
                      <option value="HUF">HUF - Forint węgierski</option>
                      <option value="UAH">UAH - Hrywna ukraińska</option>
                      <option value="JPY">JPY - Jen japoński</option>
                      <option value="CNY">CNY - Juan chiński</option>
                      <option value="CZK">CZK - Korona czeska</option>
                      <option value="DKK">DKK - Korona duńska</option>
                      <option value="ISK">ISK - Korona islandzka</option>
                      <option value="NOK">NOK - Korona norweska</option>
                      <option value="SEK">SEK - Korona szwedzka</option>
                      <option value="HRK">HRK - Kuna chorwacka</option>
                      <option value="RON">RON - Lej rumuński</option>
                      <option value="BGN">BGN - Lew bułgarski</option>
                      <option value="TRY">TRY - Lira turecka</option>
                      <option value="LTL">LTL - Lit litewski</option>
                      <option value="LVL">LVL - Łat łotewski</option>
                      <option value="PHP">PHP - Peso filipińskie</option>
                      <option value="MXN">MXN - Peso meksykańskie</option>
                      <option value="ZAR">ZAR - Rand (RPA)</option>
                      <option value="BRL">BRL - Real brazylijski</option>
                      <option value="MYR">MYR - Ringgit malezyjski</option>
                      <option value="RUB">RUB - Rubel rosyjski</option>
                      <option value="IDR">IDR - Rupia indonezyjska</option>
                      <option value="INR">INR - Rupia indyjska</option>
                      <option value="KRW">KRW - Won (Korea Płd.)</option>
                      <option value="XDR">XDR - SDR (MFW)</option>
                    </select>
                </div>
                <div class="form-group col-sm-3">
                    <label></label>
                    <input type="submit" class="btn btn-primary btn-block" value="Przelicz">
                </div>
            </form>
        </div>
        <div class="container mySection">
            <h4 class="text-center">Rezultat:</h4>
                <h2 class="text-center"><%= request.getParameter("amountToConvert")%> <%= request.getParameter("currencyToConvertFrom")%>   =   <%= request.getAttribute("conversionResult") %> <%= request.getParameter("currencyToConvertTo") %></h2>
        </div>
      
    <footer class="myFooter navbar navbar-inverse navbar-fixed-bottom container">
        <p>Copyright © 2018 Emil Karpowicz</p>
    </footer>    
        

       
    
               
        <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
    </body>
</html>
