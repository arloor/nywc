
import com.arloor.nywc.NYWCApplication;
import com.arloor.nywc.dao.DesignMapper;
import com.arloor.nywc.dao.MiaoshaActivityMapper;
import com.arloor.nywc.domain.Design;
import com.arloor.nywc.domain.MiaoshaActivity;
import com.arloor.nywc.domain.MiaoshaActivityKey;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Calendar;
import java.util.Date;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = NYWCApplication.class)
public class NYWCApplicationTests {

	@Autowired
	DesignMapper designMapper;
	@Autowired
	MiaoshaActivityMapper miaoShaActivityDao;

	@Test
	public void contextLoads() {
		Calendar calendar=Calendar.getInstance();
		calendar.set(Calendar.MONTH,4);
		calendar.set(Calendar.DATE,1);
		calendar.set(Calendar.HOUR_OF_DAY,10);
		calendar.set(Calendar.MINUTE,0);
		calendar.set(Calendar.MILLISECOND,0);
		calendar.set(Calendar.SECOND,0);
		Date checkDate=calendar.getTime();
		System.out.println(checkDate);
		MiaoshaActivityKey activitykey=new MiaoshaActivityKey();
		activitykey.setStartTime(checkDate);
		activitykey.setPname("港欢的打火机");
		MiaoshaActivity miaoshaActivity=miaoShaActivityDao.selectByPrimaryKey(activitykey);
		System.out.println(miaoshaActivity.getNum());
	}
	@Test
	public void test(){
		Design design=designMapper.selectByPrimaryKey("FgiEV3aSIa3LeYWZAISgHCSxo7yD");
		System.out.println(design.getUploadTime());
	}

}
