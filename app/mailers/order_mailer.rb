class OrderMailer < ActionMailer::Base
  helper 'spree/base'

  def notific_usuario_email(order, resend=false)
    @order = order
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.notify_email.subject')} ##{order.number}"
    mail(:to => order.email, :subject => subject)
  end

  def confirm_usuario_email(order, resend=false)
    @order = order
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.confirm_email.subject')} ##{order.number}"
    mail(:to => order.email,
         :subject => subject)
  end

  def cancel_usuario_email(order, resend=false)
    @order = order
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.cancel_email.subject')} ##{order.number}"
    mail(:to => order.email, :subject => subject)
  end

  def notific_vendor_email(orden,lineas, vendor, resend=false)
    @order = orden
    @lineas = lineas
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.notify_email.subject')}  para la orden #{orden.number}"
    mail(:to => vendor.email, :subject => subject)
  end

  def confirm_vendor_email(orden,lineas, vendor, resend=false)
    @order = orden
    @lineas = lineas
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.confirm_email.subject')}  para la orden #{orden.number}"
    mail(:to => vendor.email, :subject => subject)
  end

  def confirmacion_registro_usuario_email(cliente, email, resend=false)
    @cliente = cliente
    @email = email
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('Confirmacion de Registro')} "
    mail(:to => email, :subject => subject)
  end

end

