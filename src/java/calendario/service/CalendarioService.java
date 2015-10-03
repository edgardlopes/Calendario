package calendario.service;

import calendario.service.Day;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.joda.time.DateTime;

/**
 *
 * @author Edgard Lopes <edgard-rodrigo@hotmail.com>
 */
public class CalendarioService {

    public static final String MONTH_AS_STRING = "monthString";
    public static final String DAYS_OF_MONTH = "daysMonth";

    private int year;
    private int month;

    private Map<String, Object> informationsOfMonth;

    public CalendarioService(int year, int month) {
        this.year = year;
        this.month = month;
    }

   public Map<String, Object> getInformations() {
        DateTime dt = new DateTime(year, month, 1, 0, 0);
        DateTime aux = new DateTime(dt.getYear(), dt.getMonthOfYear(), dt.getDayOfMonth(), 0, 0);

        informationsOfMonth = new HashMap<>();
        informationsOfMonth.put(MONTH_AS_STRING, dt.monthOfYear().getAsText());

        List<List> weekList = new ArrayList<>();
        List<Day> week = new ArrayList<>();
        dt = dt.minusDays(1);
        Day day = new Day(dt);

        while (dt.getMillis() <= aux.dayOfMonth().withMaximumValue().getMillis()) {
            dt = dt.plusDays(1);
            System.out.println("dia " + dt.dayOfWeek().getAsShortText() + " dia da semana: " + dt.getDayOfWeek());

            while (dt.getDayOfWeek() < 7 && dt.getMillis() <= aux.dayOfMonth().withMaximumValue().getMillis()) {
                day = new Day(dt);
                week.add(day);
                dt = dt.plusDays(1);
            }

            //week.add(dt.getDayOfMonth());
            //dt = dt.plusDays(1);
            if (week.size() > 0) {
                weekList.add(week);
            }
            week = new ArrayList<>();
            day = new Day(dt);
            
            if (dt.getDayOfMonth() == aux.dayOfMonth().withMaximumValue().getDayOfMonth() && weekList.get(weekList.size() - 1).size() < 7) {
                weekList.get(weekList.size() - 1).add(new Day(dt));
            }

            week.add(day);
        }

        int diasFaltantes = 7 - weekList.get(0).size();
        if (diasFaltantes > 0) {
            for (int i = 0; i < diasFaltantes; i++) {
                day = new Day();
                day.setDay("");
                day.setDayOfWeekShort("");
                weekList.get(0).add(0, day);
            }
        }

        diasFaltantes = 7 - weekList.get(weekList.size() - 1).size();
        if (diasFaltantes > 0) {
            for (int i = 0; i < diasFaltantes; i++) {
                day = new Day();
                day.setDay("");
                day.setDayOfWeekShort("");
                weekList.get(weekList.size() - 1).add(weekList.get(weekList.size() - 1).size(), day);
            }
        }

        informationsOfMonth.put(DAYS_OF_MONTH, weekList);

        return informationsOfMonth;
    }

}
