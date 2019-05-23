Dado("que eu acesso a página principal") do
  visit 'http://localhost:5000/login' 
end

Quando("eu faço o login com {string} e {string}") do |email, senha|
  @email = email
  find("input[name=email]").set email
  find("#login_password").set senha
  click_button "Login"
  sleep(3)
end

Então("devo ser autenticado com sucesso") do
  expect(page).to have_content @email
end

Então("devo ver a seguite mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end
