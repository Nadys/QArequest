package karate.request;


import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class Get {
    @Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/client.feature").relativeTo(getClass());
    }


}
