Feature: Find books of an author in a list

    Scenario: Correct non-zero number of books found by author
        Given I have the following books in the store
            | books                                | author      |
            | The devil in the White City          | Erik Larson |
            | In the Garden of Beasts              | Erik Larson |
            | The Lion, the Witch and the Wardrobe | C.S.Lewis   |
        When I search for books for author 'Erik Larson'
        Then I find 2 books

    # Scenario Outline: Correct non-zero number of books found by author
    #     Given I have the following books in the store
    #         | books                                | author      |
    #         | The devil in the White City          | Erik Larson |
    #         | In the Garden of Beasts              | Erik Larson |
    #         | The Lion, the Witch and the Wardrobe | C.S.Lewis   |
    #     When I search for books for author '<author>'
    #     Then I find <countOfBooks> books
    #     Examples:
    #         | author      | countOfBooks |
    #         | Erik Larson | 2            |
    #         | C.S.Lewis   | 1            |