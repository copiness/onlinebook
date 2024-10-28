package com.company.dao;

import java.util.List;

import com.entity.BookDtls;

public interface BookDao {
   public boolean addBooks(BookDtls b);
   
   public List<BookDtls> getAllBooks();
   
   public BookDtls getBookById(int id);
   
   public boolean updateEditBooks(BookDtls b);
   
   public boolean deleteBooks(int id);
   
   public List<BookDtls> getNewBook();
   
   public List<BookDtls> getRecentBooks();
   
   public List<BookDtls> getAllRecentBook();
   
   public List<BookDtls> getAllNewBook();
}
