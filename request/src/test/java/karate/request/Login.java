package karate.request;

import com.intuit.karate.junit5.Karate;

public class Login {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/Login.feature").relativeTo(getClass());
    }
}



