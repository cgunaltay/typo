Feature: Merge Articles
  As a blog administrator
  In order to merge similar articles
  I want to be able to merge articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully merge articles
    Given I am on the edit article page
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
