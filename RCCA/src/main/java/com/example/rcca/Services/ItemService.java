package com.example.rcca.Services;

import com.example.rcca.Entities.Item;
import com.example.rcca.Entities.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ItemService {

    @Autowired
    ItemRepository repo;

    public void delete(Long id) {
        repo.deleteById(id);
    }

    public void approval(Long id) {
        repo.approval(id);
    }

    public void save(Item item) {
        repo.save(item);
    }
}
