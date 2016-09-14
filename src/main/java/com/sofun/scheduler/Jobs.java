package com.sofun.scheduler;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sofun.api.pojo.AllwayOutstorage;
import com.sofun.api.pojo.JhacOut;
import com.sofun.api.pojo.JhacTenant;
import com.sofun.api.pojo.JhacVin;
import com.sofun.api.service.AllwayOutService;
import com.sofun.api.service.JhacOutService;
import com.sofun.api.service.JhacTenantService;
import com.sofun.api.service.JhacUserService;
import com.sofun.api.service.JhacVinService;
import com.sofun.common.utils.HttpClientUtils;

@Component
public class Jobs {

	@Autowired
	private JhacTenantService tenantService;

	@Autowired
	private JhacUserService userService;

	@Autowired
	private AllwayOutService aoService;

	@Autowired
	private JhacOutService outService;

	@Autowired
	private JhacVinService vinService;

	private final Logger log = LoggerFactory.getLogger(Jobs.class);

	// @Scheduled(cron = "0 */5 * * * ?")
	public void reportCurrentTime() {
		log.info(">>>Saas化关闭到期服务定时任务开始执行");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tenantStatus", "1");
		List<JhacTenant> list = tenantService.query(map);
		Date now = new Date();
		for (JhacTenant tenant : list) {
			// 判断是否到期
			/*
			 * if (DateUtils.after(now, tenant.getTenantExpireDate())) { //
			 * 停止服务操作 userService.frozen(tenant.getTenantAreaCode());
			 * tenant.setTenantStatus(2); tenantService.save(tenant);
			 * log.info(tenant.getTenantAreaCode() + "地区服务到期，暂停服务"); }
			 */
		}
		log.info(">>>Saas化关闭到期服务定时任务结束");
	}

	// 0 1 22 * * ?
	@Scheduled(cron = "0 1 22 * * ?")
	public void transDataJob() {
		log.info("数据迁移开始");
		try {
			HttpClientUtils clientUtils = new HttpClientUtils();
			Calendar now = Calendar.getInstance();
			String year = now.get(Calendar.YEAR) + "";
			String month = (now.get(Calendar.MONTH) + 1) + "";
			String day = (now.get(Calendar.DAY_OF_MONTH)) + "";

			String a = clientUtils
					.getMethod("http://3.allway2.sinaapp.com/androidAPI/outstorage.php?c=getByDay&year="
							+ year + "&month=" + month + "&day=" + day);

			JSONObject data = JSONObject.parseObject(a);
			if (data.getInteger("success") == 1) {
				JSONArray array = data.getJSONArray("result");
				if (array.size() > 0) {
					JSONObject ab = new JSONObject();
					JhacOut out = null;
					for (int i = 0; i < array.size(); i++) {
						out = new JhacOut();
						ab = array.getJSONObject(i);
						AllwayOutstorage ao = JSONObject.toJavaObject(ab,
								AllwayOutstorage.class);
						out.setOutPcId("9b63e549adf042ec92cf23be98d59bc3");
						out.setOutAddDate(ao.getOutdate());
						out.setOutAreaCode("JZ");
						out.setOutBeizhu(ao.getOutbeizhu());
						out.setOutDataStatus(1);
						out.setOutFrameno(ao.getFrameno());
						out.setOutIsCheckCar(1);
						out.setOutIsSign(1);
						out.setOutIsTestCar(1);
						out.setOutSerialno(ao.getSerialno());
						out.setOutAddress(ao.getAddress());
						out.setOutPerson("4c48d09ef188422dbce2290a468c708c");
						ao.setAddress("P");
						ao.setOutbrand("P");
						ao.setOption("P");
						ao.setPerson("P");
						ao.setLocation("P");

						String frame_f3 = ao.getFrameno().substring(0, 5);
						Map<String, Object> map = new HashMap<String, Object>();
						map.put("code", frame_f3);
						List<JhacVin> list = vinService.query(map);
						if (list.size() > 0) {
							out.setOutAddress(list.get(0).getAddress());
						}
						outService.save(out);
						aoService.save(ao);

					}
				}
			} else {
				log.error("没有数据需要迁移");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		log.info("数据迁移结束");
	}
}
