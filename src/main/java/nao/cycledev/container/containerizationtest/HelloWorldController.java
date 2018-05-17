package nao.cycledev.container.containerizationtest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("/say/hello")
    public String greetings() {
        return "Deploy with Yaml file - 22222!!!";
    }
}
