package gov.hhs.onc.crigtt.web.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.http.ResponseEntity;

public interface ResourceController {
    public ResponseEntity<?> displayResource(HttpServletRequest servletReq) throws Exception;
}
