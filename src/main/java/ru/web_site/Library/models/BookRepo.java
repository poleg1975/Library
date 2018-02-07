package ru.web_site.Library.models;

import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface BookRepo extends PagingAndSortingRepository<Book, Integer>, QueryDslPredicateExecutor<Book> {

}
