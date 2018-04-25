package com.arloor.jianbujing;

import com.arloor.jianbujing.dao.WeixinDao;
import com.arloor.jianbujing.utils.TimedRemoveFormIdRunnable;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class JianbujingApplicationTests {
	@Autowired
	TimedRemoveFormIdRunnable timedRemoveFormIdRunnable;

	@Autowired
	WeixinDao weixinDao;

	@Test
	public void contextLoads() {
	}

	@Test
	public void testThreadDeleteFormId(){
		new Thread(timedRemoveFormIdRunnable).run();
	}


	@Test
	public void testSelectFormId(){
		System.out.println(weixinDao.selectFormId("oaRji5KZE-WSmM4_m2dfsUrtouVM"));
	}

}
