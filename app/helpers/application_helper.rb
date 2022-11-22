module ApplicationHelper

  def display_notice
    content_tag(:p, notice, class: 'notice') if notice.present?
  end

  def display_alert
    content_tag(:p, alert, class: 'alert') if alert.present?
  end

  def display_username
    if current_user.present?
      current_user.name
    else
      'Prijavite se'
    end
  end

end
