package com.investfar.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.investfar.util.AppConfig;
import com.investfar.util.EmailCode;

@Service
public class EmailServer {

	@Autowired
	AppConfig appConfig;
	private Logger logger = Logger.getLogger(this.getClass());

	public boolean sendEmail(String email) {
		try {

			String code = EmailCode.createCode(email, 6, 10);
			logger.info(String.format("send code to %s", email));
			logger.debug(String.format("code is %s", code));
			// 配置发送邮件的环境属性
			final Properties props = appConfig.getProperties();

			// 构建授权信息，用于进行SMTP进行身份验证
			Authenticator authenticator = new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					// 用户名、密码
					String userName = props.getProperty("mail.user");
					String password = props.getProperty("mail.password");
					return new PasswordAuthentication(userName, password);
				}
			};
			// 使用环境属性和授权信息，创建邮件会话
			Session mailSession = Session.getInstance(props, authenticator);
			// 创建邮件消息
			MimeMessage message = new MimeMessage(mailSession);
			// 设置发件人
			String nick="";  
		        try {  
		            nick=javax.mail.internet.MimeUtility.encodeText(props.getProperty("mail.nick"));  
		        } catch (UnsupportedEncodingException e) {  
		            e.printStackTrace();  
		        }   
		    // msg.setFrom(new InternetAddress(nick+" <"+from+">"));  
		        
			message.setFrom(new InternetAddress(nick+" <"+props.getProperty("mail.user")+">"));

			// 设置收件人
			InternetAddress to = new InternetAddress(email);
			message.setRecipient(RecipientType.TO, to);

			// 设置邮件标题
			message.setSubject("邮箱验证码");
			message.setDescription("验证码发件人");

			// 设置邮件的内容体
			message.setContent(
					"<p>投资人，您好！您邮箱验证码 " + code + " 用于您注册的邮箱 " + email
							+ " 的邮箱验证，请保管好您的邮箱账号信息。</p><p>（非本人发送，无需理会）</p> <p>非洲投资汇</p>",
					"text/html;charset=UTF-8");

			// 发送邮件
			Transport.send(message);
			return true;
		} catch (Exception e) {
			logger.error(String.format("send code to %s error %s", email, e.getMessage()));
			logger.error(e);
			return false;
		}
	}
}
