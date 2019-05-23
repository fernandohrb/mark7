Before do |scn|
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  page.driver.browser.manage.window.maximize
end

After("@logout") do
  click_link @email
  click_link "sair"
end
