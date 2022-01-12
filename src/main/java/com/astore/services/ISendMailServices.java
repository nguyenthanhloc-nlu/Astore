package com.astore.services;

import javax.mail.Session;

public interface ISendMailServices {
    public Session loginMail(String email,String pwd);
    public void sendMailTo(Session sessMail,String emailFrom,String nameFrom,String emailTo,String subjectEMail,String messMail );
}
