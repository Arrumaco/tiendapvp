Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "vendors_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :partial => "../views/vendor/shared/tabs_vendor",
                     :disabled => false)
