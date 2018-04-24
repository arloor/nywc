
import com.arloor.nywc.NYWCApplication;
import com.arloor.nywc.dao.DesignMapper;
import com.arloor.nywc.domain.Design;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = NYWCApplication.class)
public class NYWCApplicationTests {

	@Autowired
	DesignMapper designMapper;

	@Test
	public void contextLoads() {

	}

	@Test
	public void test(){
		Design design=designMapper.selectByPrimaryKey("FgiEV3aSIa3LeYWZAISgHCSxo7yD");
	}

}
