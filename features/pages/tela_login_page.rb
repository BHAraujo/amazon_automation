require "site_prism"


class TelaLogin < SitePrism::Page

    element :input_email, "#ap_email"
    elements :button_continue, "#continue"
    element :input_password, "#ap_password"
    element :button_do_login, "#signInSubmit"

    def input_email_send_keys(email)
      input_email.send_keys email
    end

    def button_continue_click
      button_continue[0].click
    end

    def input_password_send_keys(password)
      input_password.send_keys password
    end

    def button_do_login_click
      button_do_login.click
    end

end
