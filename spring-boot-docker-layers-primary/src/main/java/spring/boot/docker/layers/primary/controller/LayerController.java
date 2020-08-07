package spring.boot.docker.layers.primary.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import spring.boot.docker.layers.common.CommonUtils;

@RestController
@RequestMapping("/layer-test")
public class LayerController {

    @GetMapping
    public String requestController(@RequestParam("param") String paramCode) {
        return CommonUtils.getCapital(paramCode);
    }

}
