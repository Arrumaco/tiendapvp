class OrderMailer < ActionMailer::Base
  helper 'spree/base'

  def notific_usuario_email(order, resend=false)
    @order = order
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.confirm_email.subject')} ##{order.number}"
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
    @orden = orden
    @lineas = lineas
    subject = (resend ? "[#{t(:resend).upcase}] " : "")
    subject += "#{Spree::Config[:site_name]} #{t('order_mailer.confirm_email.subject')}  para la orden #{orden.number}"
    mail(:to => vendor.email, :subject => subject)
  end

end