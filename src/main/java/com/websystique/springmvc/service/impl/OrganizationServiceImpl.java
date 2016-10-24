package com.websystique.springmvc.service.impl;

import com.websystique.springmvc.dao.OrganizationDao;
import com.websystique.springmvc.persistence.entities.Organization;
import com.websystique.springmvc.service.ActualCurrencyRateService;
import com.websystique.springmvc.service.OrganizationService;
import com.websystique.springmvc.utils.EntityUtils;
import com.websystique.springmvc.utils.xml.OrganizationXmlElement;
import com.websystique.springmvc.utils.xml.Source;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrganizationServiceImpl implements OrganizationService {

    @Autowired
    private OrganizationDao organizationDao;

    @Autowired
    private ActualCurrencyRateService actualCurrencyRateService;

    @Override
    public void saveOrganization(Source source) {
        List<OrganizationXmlElement> organizationXmlElements=source.getOrganizations().getOrganizations();
        for(OrganizationXmlElement organizationElement:organizationXmlElements){
            Organization organization= EntityUtils.createAndReturnOrganizationEntity(organizationElement);
            organization.setDate(source.getDate());
            Organization organizationAfterSave = organizationDao.saveOrganization(organization);
            actualCurrencyRateService.saveActualCurrencyRate(organizationAfterSave, organizationElement);
        }
    }

    @Override
    public List<Organization> getOrganizationById(String id) {
        return organizationDao.getOrganizationById(id);
    }
}
