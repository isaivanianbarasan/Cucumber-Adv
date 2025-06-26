import {Given, When, Then} from '@cucumber/cucumber'
import {expect} from 'chai'



let result = 0
let books: any[] = [];



Given('I have the following books in the store', function (dataTable) {
          books = dataTable.hashes();
         });

         
         When('I search for books for author {string}', function (author:string) {
          

           result = books.filter(book => book.author === author).length;
         });

        
         Then('I find {int} books', function (expectedCount) {
                  (expect(result).to.equal(expectedCount));
                  });
