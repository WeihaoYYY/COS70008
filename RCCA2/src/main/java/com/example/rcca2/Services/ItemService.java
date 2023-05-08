package com.example.rcca2.Services;

import com.example.rcca2.Entities.Item;
import com.example.rcca2.Entities.ItemRepository;
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

    public Item findById(Long id) {
        return repo.findById(id).get();
    }

    public void save(Item item) {
        repo.save(item);
    }
}
