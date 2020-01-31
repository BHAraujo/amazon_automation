When("devo ser redirecionado para tela de login") do |table|

  table.hashes[0].keys.each do |keys|

    case keys
    when "email"
      tela_login.input_email_send_keys(table.hashes[0][:email])
      tela_login.button_continue_click
    when "password"
      tela_login.input_password_send_keys(table.hashes[0][:password])
      tela_login.button_do_login_click
    else
      raise "Invalid option"
    end

  end
end
