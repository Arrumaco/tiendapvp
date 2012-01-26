Deface::Override.new(:virtual_path => "user_sessions/new",
                     :name => "login_new_user",
                     :replace => "[data-hook='login']",
                     :partial => "../views/user_sessions/login_usuario",
                     :disabled => false)

