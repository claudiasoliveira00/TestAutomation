
#Cenário: Usuário deve ser autenticado
Dado("que eu acesso a página principal") do
    visit 'https://doutor-direto-staging.herokuapp.com'
end

Dado("acesso a tela de login") do
    visit 'https://doutor-direto-staging.herokuapp.com/users/sign_in'
end

Quando("eu faço login com {string} e {string}") do |email, senha|
    find('#user_email').set email
    find('#user_password').set senha
    click_button 'Entrar'
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
    click_button 'Fechar'
end

Então("deve exibir no dashboard a frase {string}") do |mensagem|
    expect(page).to have_content mensagem
    sleep 3
    click_button 'Sair'
end

 