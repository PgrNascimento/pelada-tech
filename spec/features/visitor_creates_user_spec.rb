require 'rails_helper'

feature 'Visitor creates user' do
  scenario 'successfully' do
    visit root_path
    click_on 'Cadastre-se aqui'
    fill_in 'Nome', with: 'Alan'
    fill_in 'Email', with: 'alan@alan.com'
    fill_in 'Senha', with: 'senha1234'
    click_on 'Enviar'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Usuário cadastrado com sucesso')
  end
end
