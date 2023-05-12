package com.example.rcca2.Services;

import com.example.rcca2.Entities.Administrator;
import com.example.rcca2.Entities.Item;
import com.example.rcca2.Entities.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ItemService {

    @Autowired
    ItemRepository repo;

    public List<Item> findAll() {
        return repo.findAll();
    }

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

    public List<Item> pagination(Integer pageNum, Integer pageSize) {

        PageRequest pageRequest = PageRequest.of(pageNum, pageSize);

        Page<Item> items = repo.findAll(pageRequest);

        return items.getContent();
    }

    public List<Item> searchItemsByType(String type, String title) {
        title = "%" + title + "%";
        return repo.searchItemsByTypeAndTitleLike(type, title);
    }
}
