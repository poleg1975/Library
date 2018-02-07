package ru.web_site.Library.models;

import javax.persistence.*;

@Entity
@Table(name = "book")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int id;

    @Column(name = "title")
    public String title;

    @Column(name = "description")
    public String description;

    @Column(name = "author")
    public String author;

    @Column(name = "isbn")
    public String isbn;

    @Column(name = "print_year")
    public int printYear;

    @Column(name = "read_already")
    public boolean readAlready;

    public Book() {
    }

    public Book(String title, String description, String author, int printYear, String isbn, boolean readAlready) {
        this.title = title;
        this.description = description;
        this.author = author;
        this.printYear = printYear;
        this.isbn = isbn;
        this.readAlready = readAlready;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPrintYear() {
        return printYear;
    }

    public void setPrintYear(int printYear) {
        this.printYear = printYear;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public boolean isReadAlready() {
        return readAlready;
    }

    public void setReadAlready(boolean readAlready) {
        this.readAlready = readAlready;
    }
}
