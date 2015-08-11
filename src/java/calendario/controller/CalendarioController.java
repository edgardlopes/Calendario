package calendario.controller;

import calendario.service.CalendarioService;
import org.joda.time.DateTime;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Edgard Lopes <edgard-rodrigo@hotmail.com>
 */
@Controller
public class CalendarioController {

    @RequestMapping(value = "/calendario/{year}/{month}", method = RequestMethod.GET)
    public String getCalendario(@PathVariable Integer year, @PathVariable Integer month, Model m) {
        CalendarioService service = new CalendarioService(year, month);
        m.addAttribute("weekList", service.getInformations().get(CalendarioService.DAYS_OF_MONTH));
        m.addAttribute("monthAsString", service.getInformations().get(CalendarioService.MONTH_AS_STRING));
        m.addAttribute("month", month);
        m.addAttribute("year", year);

        DateTime dt = new DateTime(year, month, 1, 0, 0);
        dt = dt.plusMonths(1);
        m.addAttribute("nextMonth", dt.getMonthOfYear());
        m.addAttribute("nextYear", dt.getYear());

        dt = dt.minusMonths(2);
        m.addAttribute("previousMonth", dt.getMonthOfYear());
        m.addAttribute("previousYear", dt.getYear());

        dt = new DateTime();
        m.addAttribute("currentMonth", dt.getMonthOfYear());
        m.addAttribute("currentYear", dt.getYear());
        return "/calendario";
    }

    @RequestMapping(value = "/calendario/{year}", method = RequestMethod.GET)
    public String getMonths(@PathVariable String year, Model m) {
        m.addAttribute("year", year);

        return "/months";
    }

    @RequestMapping(value = "/calendario/{year}/{month}/{day}", method = RequestMethod.GET)
    public String getDay(@PathVariable Integer year, @PathVariable Integer month, @PathVariable Integer day, Model m) {

        m.addAttribute("year", year);
        m.addAttribute("month", month);
        m.addAttribute("day", day);

        return "/day_of_month";
    }
}
