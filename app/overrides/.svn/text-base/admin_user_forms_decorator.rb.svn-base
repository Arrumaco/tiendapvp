Deface::Override.new(:virtual_path => "admin/users/edit",
                     :name => "admin_users_forms3", 
                     :sequence => {:after => "api_admin_user_edit_form"},
                     :replace => "code[erb-loud]:contains('form_for [:admin, @user] do |f|')",
                     :text => "<%= form_for [session[:rol_usuario], @user]  do |f| %> ",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/users/new",
                     :name => "admin_users_forms2", 
                     :sequence => {:after => "api_admin_user_edit_form"},
                     :replace => "code[erb-loud]:contains('form_for [:admin, @user] do |f|')",
                     :text => "<%= form_for [session[:rol_usuario], @user]  do |f| %> ",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/users/index",
                     :name => "admin_users_forms1", 
                     :sequence => {:after => "api_admin_user_edit_form"},
                     :replace => "code[erb-loud]:contains('form_for [:admin, @search] do |f|')",
                     :text => "<%= form_for [session[:rol_usuario], @search]  do |f| %> ",
                     :disabled => false)
Deface::Override.new(:virtual_path => "admin/users/_form",
                     :insert_after => "[data-hook='admin_user_form_fields']",
                     :partial => "../views/shared/user_form", 
                     :name => "admin_users_forms4")
