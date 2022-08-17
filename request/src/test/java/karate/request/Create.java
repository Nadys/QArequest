package karate.request;

import com.intuit.karate.junit5.Karate;

public class Create {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/Create.feature").relativeTo(getClass());
    }
}
