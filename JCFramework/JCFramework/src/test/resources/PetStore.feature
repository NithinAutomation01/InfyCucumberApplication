@runService
Feature: Validation of Pet Store

  @PetStore
  Scenario: Add a pet in the petstore
    Given I build a valid request for adding a pet in the petstore
    When trigger the add pet service
    Then I validate the response after adding the pet
     
  @Sample
  Scenario Outline: Find Pet By Id
    Given I build a valid request for Finding a Pet with Id <petId>
    When trigger the findById service
    Then I validate the Id <petId> of the  Pet
    
    Examples: 
      |petId|petName|
      |678|Brunel|