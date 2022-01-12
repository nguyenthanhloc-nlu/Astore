package com.astore.services.implement;

import com.astore.dao.implement.HelpDao;
import com.astore.model.Help;
import com.astore.services.IHelpServices;

import java.util.List;

public class HelpServices implements IHelpServices {
    private HelpDao h ;
    private static HelpServices helpServices;

    public HelpServices() {
        this.h = new HelpDao();
    }

    public static HelpServices getInstance() {
        if(helpServices == null){
            helpServices = new HelpServices();
        }
        return helpServices;
    }
    @Override
    public List<Help> getListHelp() {
        return h.getListHelp();
    }
}
