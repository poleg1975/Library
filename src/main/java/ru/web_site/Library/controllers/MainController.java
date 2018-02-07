package ru.web_site.Library.controllers;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.web_site.Library.models.Book;
import ru.web_site.Library.models.BookRepo;
import ru.web_site.Library.models.QBook;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@Controller
public class MainController {
    private static final int PAGE_SIZE = 10;

    @Autowired
    BookRepo bookRepo;

    @RequestMapping(value = {"/", "/{page}/"}, method = RequestMethod.GET)
    public ModelAndView listOfBooks(@PathVariable(value="page", required = false) String page, @RequestParam(value = "query", required = false) String query, @RequestParam(value = "read", required = false) String read) {
        ModelAndView mv = new ModelAndView("index");
        BooleanBuilder builder = new BooleanBuilder();
        QBook book = QBook.book;
        int pageNum = (getInt(page) == 0) ? 1 : getInt(page);
        int pageMax = 1;

        if (isStringValid(query)) {
            builder.and(book.author.like("%" + query + "%").or(book.title.like("%" + query + "%")).or(book.description.like("%" + query + "%")).or(book.isbn.like("%" + query + "%")).or(book.printYear.like("%" + query + "%")));
            pageMax = (int)Math.ceil(bookRepo.count(builder)*1d/PAGE_SIZE);
        }

        if (isStringValid(read)) {
            if (read.equals("read"))
                builder.and(book.readAlready.isTrue());
            if (read.equals("not_read")) {
                builder.and(book.readAlready.isFalse());
            }
            pageMax = (int)Math.ceil(bookRepo.count(builder)*1d/PAGE_SIZE);
        }

        if (builder.getValue() == null)
            pageMax = (int)Math.ceil(bookRepo.count()*1d/PAGE_SIZE);

        System.out.println("BUILDER: " + builder.getValue());

        if (pageNum > pageMax)
            pageNum = pageMax;

        if (pageNum < 1)
            pageNum = 1;

        mv.addObject("page", pageNum);
        mv.addObject("query", query);
        mv.addObject("read", read);
        mv.addObject("pageMax", pageMax);
        mv.addObject("lists", bookRepo.findAll(builder, new PageRequest(pageNum-1, PAGE_SIZE, Sort.Direction.ASC, "id")));

        return mv;
    }

    @RequestMapping(value = {"/read/{id}/{page}/"}, method = RequestMethod.GET)
    public ModelAndView readBook(@PathVariable("id") String id, @PathVariable("page") String page, @RequestParam(value = "query", required = false) String query, @RequestParam(value = "read", required = false) String read) {
        ModelAndView mv = new ModelAndView("read");

        Book book;
        if ((book = bookRepo.findOne(getInt(id))) != null) {
            if (!book.isReadAlready())
                book.setReadAlready(true);

            bookRepo.save(book);
        }

        if (isStringValid(query)) {
            mv.addObject("query", query);
        }

        if (isStringValid(read)) {
            mv.addObject("read", read);
        }

        mv.addObject("page", page);
        mv.addObject("list", bookRepo.findOne(getInt(id)));

        return mv;
    }

    @RequestMapping(value = {"/delete/{id}/{page}/"}, method = RequestMethod.GET)
    public ModelAndView deleteBook(@PathVariable("id") String id, @PathVariable("page") String page, @RequestParam(value = "query", required = false) String query, @RequestParam(value = "read", required = false) String read) {
        String arg = "redirect:/" + page + "/";

        if (isStringValid(query) || isStringValid(read))
            arg += "?";

        if (isStringValid(query)) {
            try {
                query = URLEncoder.encode(query, "UTF-8");
            } catch (UnsupportedEncodingException e) {}
            arg += "&query=" + query;
        }

        if (isStringValid(read)) {
            arg += "&read=" + read;
        }

        ModelAndView mv = new ModelAndView(arg);
        bookRepo.delete(getInt(id));

        return mv;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addBook() {
        ModelAndView mv = new ModelAndView("add");
        mv.addObject("insertBook", new Book());
        return mv;
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public ModelAndView insertBook(@ModelAttribute("InsertBook") Book insertBook) {
        ModelAndView mv = new ModelAndView("redirect:/" + (int)Math.ceil(bookRepo.count()*1d/PAGE_SIZE) + "/");
        bookRepo.save(insertBook);

        return mv;
    }

    @RequestMapping(value = {"/edit/{id}/{page}/"}, method = RequestMethod.GET)
    public ModelAndView editBook(@PathVariable("id") String id, @PathVariable("page") String page, @RequestParam(value = "query", required = false) String query, @RequestParam(value = "read", required = false) String read) {
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("editBook", new Book());
        if (isStringValid(query)) {
            mv.addObject("query", query);
        }

        if (isStringValid(read)) {
            mv.addObject("read", read);
        }
        mv.addObject("page", page);
        mv.addObject("list", bookRepo.findOne(getInt(id)));
        return mv;
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView updateBook(@ModelAttribute("UpdateBook") Book updateBook, @RequestParam("id") String id, @RequestParam("page") String page, @RequestParam(value = "query", required = false) String query, @RequestParam(value = "read", required = false) String read) {
        String arg = "redirect:/" + page + "/";
        if (isStringValid(query) || isStringValid(read))
            arg += "?";

        if (isStringValid(query)) {
            try {
                query = URLEncoder.encode(query, "UTF-8");
            } catch (UnsupportedEncodingException e) {}
            arg += "&query=" + query;
        }

        if (isStringValid(read)) {
            arg += "&read=" + read;
        }

        ModelAndView mv = new ModelAndView(arg);
        if (bookRepo.findOne(getInt(id)) != null) {
            bookRepo.save(updateBook);
        }

        return mv;
    }

    private int getInt(String str) {
        int result;
        try {
            result = Math.abs(Integer.parseInt(str));
        } catch (NumberFormatException e) {
            result = 0;
        }
        return result;
    }

    private boolean isStringValid(String str) {
        return (str != null && !str.isEmpty());
    }

}
