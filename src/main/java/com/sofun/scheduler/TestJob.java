/**
 * @(#)TestJob.java 1.0 2016年4月6日
 * @Copyright: Copyright 2010 - 2016 ISoftstone Co. Ltd. All Rights Reserved.
 * @Modification History:
 * @version: HYOM 1.0
 * @Date: 2016年4月6日
 * @Description: (Initialize)
 * @Reviewer:
 * @Review Date:
 */
package com.sofun.scheduler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.sofun.common.utils.SendMail;

/**
 * Description
 * 
 * @author qianglic 73817
 */

@Component
public class TestJob {
	private final Logger log = LoggerFactory.getLogger(TestJob.class);

	// @Scheduled(cron = "0 0/1 * * * ?")
	public void mail() {
		log.debug("======开始发邮件=======");
		SendMail send = new SendMail("402864040@qq.com", "wh_jhac@126.com",
				"smtp.126.com", "wh_jhac@126.com", "sofun_19880311", "test",
				"test_content");
		if (send.send()) {
			log.debug("发邮件成功");
		}
		log.debug("======发邮件结束=======");
	}

}
