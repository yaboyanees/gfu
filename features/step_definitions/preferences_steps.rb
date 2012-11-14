Given /^I am on the preferences builder page$/ do
  visit preferences_path
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should see "([^"]*)" in the "([^"]*)" section$/ do |text, section|
  within(section) do
    page.should have_content(text)
  end
end

When /^I select a (.*?) skin tone$/ do |skin_tone|
  page.should have_selector("input", name: "skin_tone")
  page.choose "skin_tone_#{skin_tone.downcase}"
end

When /^I select a (.*?) undertone$/ do |undertone|
  page.should have_selector("input", name: "undertone")
  page.choose "undertone_#{undertone.downcase}"
end

When /^I select (.*?) hair$/ do |hair_color|
  page.should have_selector("input", name: "hair_color")
  page.choose "hair_color_#{hair_color.downcase}"
end

When /^I select a (.*?) look$/ do |look|
  page.should have_selector("input", name: "look")
  page.choose "look_#{look.downcase}"
end

When /^I enter my email "(.*?)"$/ do |email|
  fill_in "user_address",  with: "foo@yahoo.com"
end

When /^I click "(.*?)"$/ do |arg1|
  click_button "Submit"
end

