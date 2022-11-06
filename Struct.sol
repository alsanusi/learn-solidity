//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Struct {
    // Struct
    struct Book {
        string title;
        string author;
        bool completed;
    }

    // Array of Books
    Book[] public books;

    // Add
    function add(string memory _title, string memory _author) public {
        books.push(Book(_title, _author, false));
    }

    // Get
    function get(uint256 _index)
        public
        view
        returns (
            string memory title,
            string memory author,
            bool completed
        )
    {
        Book storage book = books[_index];
        return (book.title, book.author, book.completed);
    }

    // Update Completed
    function complete(uint _index) public {
        Book storage book = books[_index];
        book.completed = true;
    }
}
