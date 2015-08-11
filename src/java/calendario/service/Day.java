/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package calendario.service;

import org.joda.time.DateTime;

/**
 * 
 * @author Edgard Lopes <edgard-rodrigo@hotmail.com>
 */
public class Day {
    private String day;
    private String dayOfWeekShort;

    public Day() {
    }

    public Day(DateTime dt) {
        this.day = dt.getDayOfMonth() + "";
        this.dayOfWeekShort = dt.dayOfWeek().getAsShortText();
    }
    
    
    
    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getDayOfWeekShort() {
        return dayOfWeekShort;
    }

    public void setDayOfWeekShort(String dayOfWeekShort) {
        this.dayOfWeekShort = dayOfWeekShort;
    }

    @Override
    public String toString() {
        return day +" "+ dayOfWeekShort;
    }
}
