package gov.hhs.onc.crigtt.web.controller.impl;

import gov.hhs.onc.crigtt.utils.CrigttDateUtils;
import gov.hhs.onc.crigtt.web.controller.CrigttModelAttributes;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller("controllerHome")
public class HomeController {
    private final static String HOME_VIEW_NAME = "home";

    @Value("${crigtt.build.timestamp}")
    private long buildTimestamp;

    @Value("${crigtt.build.version}")
    private String buildVersion;

    @Resource(name = "timeZoneDefault")
    @SuppressWarnings({ "SpringJavaAutowiringInspection" })
    private TimeZone defaultTimeZone;

    @RequestMapping(value = { "/", "/home" }, method = { RequestMethod.GET })
    public ModelAndView displayHome(HttpServletRequest servletReq) {
        Map<String, Object> model = new HashMap<>(2);
        model.put(CrigttModelAttributes.BUILD_VERSION_NAME, this.buildVersion);
        model.put(
            CrigttModelAttributes.FORMATTED_BUILD_TIMESTAMP_NAME,
            CrigttDateUtils.format(CrigttDateUtils.DISPLAY_FORMAT, this.buildTimestamp,
                ObjectUtils.defaultIfNull(RequestContextUtils.getTimeZone(servletReq), this.defaultTimeZone)));

        return new ModelAndView(HOME_VIEW_NAME, model);
    }
}
