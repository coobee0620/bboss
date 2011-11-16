/*
 *  Copyright 2008 biaoping.yin
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package org.frameworkset.spi;

import java.io.InputStream;
import java.net.URL;
import java.util.Map;

import org.apache.log4j.Logger;
import org.frameworkset.spi.assemble.ServiceProviderManager;
import org.frameworkset.spi.remote.ServiceID;
import org.frameworkset.spi.serviceidentity.ServiceIDUtil;

/**
 * <p>Title: DefaultApplicationContext.java</p> 
 * <p>Description: </p>
 * <p>bboss workgroup</p>
 * <p>Copyright (c) 2007</p>
 * @Date 2011-5-11 ����11:25:51
 * @author biaoping.yin
 * @version 1.0
 */
public class DefaultApplicationContext extends BaseApplicationContext {
	private static Logger log = Logger.getLogger(DefaultApplicationContext.class);
	/**
	 * ��ȡָ���������ļ�������bean������������������ļ��Ӳ���configfile��Ӧ�����ļ���ʼ
	 * ��ͬ�������ļ���������������룬����䲻����������ϵ������Ҳ�������κ����ù�ϵ��
	 * 
	 * @return
	 */
	public static DefaultApplicationContext getApplicationContext(String configfile) {
		if (configfile == null || configfile.equals("")) {
			log.debug("configfile is null or empty.default Config File["
					+ ServiceProviderManager.defaultConfigFile
					+ "] will be used. ");
			configfile = ServiceProviderManager.defaultConfigFile;
		}
		DefaultApplicationContext instance = (DefaultApplicationContext)applicationContexts.get(configfile);
		if (instance != null)
		{
			instance.initApplicationContext();
			return instance;
		}
		synchronized (lock) {
			instance = (DefaultApplicationContext)applicationContexts.get(configfile);
			if (instance != null)
				return instance;
			instance = new DefaultApplicationContext(configfile);
			BaseApplicationContext.addShutdownHook(new BeanDestroyHook(instance));
			applicationContexts.put(configfile, instance);
			

		}
		instance.initApplicationContext();
		return instance;
	}
	
	protected DefaultApplicationContext(String configfile)
	{
		super(configfile);
	}
	protected DefaultApplicationContext(String configfile, boolean isfile)
	{
		super((String)configfile,isfile);
	}
	protected DefaultApplicationContext(String docbaseType, String docbase,
			String configfile)
	{
		super( docbaseType,  docbase,
				 configfile);
	}
	protected DefaultApplicationContext(String docbaseType, String docbase,
			String configfile,boolean isfile)
	{
		super( docbaseType,  docbase,
				 configfile, isfile);
	}
	public DefaultApplicationContext(URL file, String path)
	{

		super((URL)file,  path);
	}

	public DefaultApplicationContext(InputStream instream, boolean isfile) {
		super((InputStream)instream,isfile);
	}

	public ServiceID buildServiceID(Map<String, ServiceID> serviceids,
			String serviceid, int serviceType, String providertype,
			BaseApplicationContext applicationcontext) {
		return ServiceIDUtil.buildServiceID(serviceids, serviceid, serviceType,
				providertype, applicationcontext);

	}



	public ServiceID buildServiceID(Map<String, ServiceID> serviceids,
			String serviceid, int serviceType,
			BaseApplicationContext applicationcontext) {

		return buildServiceID(serviceids, serviceid, serviceType, null,
				applicationcontext);

	}

	public ServiceID buildBeanServiceID(Map<String, ServiceID> serviceids,
			String serviceid, BaseApplicationContext applicationcontext) {

		return buildServiceID(serviceids, serviceid,
				ServiceID.PROPERTY_BEAN_SERVICE, null, applicationcontext);

	}

}