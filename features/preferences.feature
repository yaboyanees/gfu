Feature: Collect user preferences

Scenario: User identifies her preferences
  Given I am on the preferences builder page
  Then I should see "Tell us a little about your preferences"
  When I select a Light skin tone
  And I select a Cool undertone
  And I select Black hair
  And I select a Sassy look
  Then I should see "Now we just need your email address"
  When I enter my email "user@foo.com"
  And I click "Submit"
  Then I should see "Thank you. We will notify you as soon as your samples are ready!"


