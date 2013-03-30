When /^I add a story$/ do
  visit root_path
  fill_in "Naam",     :with => "Ruben"
  fill_in "Titel",    :with => "Mijn verhaal"
  fill_in "Verhaal",  :with => "Het was lang geleden. Ik leerde ze kennen.."
  click_button "Verzend"
end

Then /^I see I have added a story$/ do
  page.should have_content "Bedankt voor het verhaal. Het wordt in het boek geplaatst!"
end
