package com.example.rcca.Services;

import com.example.rcca.Entities.AdminRepository;
import com.example.rcca.Entities.Administrator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminService {

    @Autowired
    private AdminRepository adminRepo;

    public void save(Administrator admin) {
        adminRepo.save(admin);
    }

    public Administrator getById(Long id) {
        return adminRepo.findById(id).orElse(null);
    }

    public void delete(Long id) {
        adminRepo.deleteById(id);
    }

    public Boolean ifExist(Long id){
        if (getById(id) != null) return true;
        else return false;
    }

}
