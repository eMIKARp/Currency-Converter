package pl.currencyconverter.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pl.currencyconverter.service.ConversionService;
import pl.currencyconverter.service.JsonRead;

@WebServlet(name = "ConversionController", urlPatterns = {"/ConversionController"})
public class ConversionController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        try {
            String currencyToConvertFrom = request.getParameter("currencyToConvertFrom");
            String currencyToConvertTo = request.getParameter("currencyToConvertTo");
            double amountToConvert = (Double.parseDouble(request.getParameter("amountToConvert")));
            ConversionService conversionService = new ConversionService();
            request.setAttribute("conversionResult", conversionService.convertCurrency(amountToConvert, currencyToConvertFrom, currencyToConvertTo));
            request.setAttribute("currencyToConvertFromName", JsonRead.getConversionCurrencyName(currencyToConvertFrom));
            request.setAttribute("currencyToConvertToName", JsonRead.getConversionCurrencyName(currencyToConvertTo));
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
