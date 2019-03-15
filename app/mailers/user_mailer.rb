class UserMailer < ApplicationMailer
  def account_activation(user)
    @user = user
    mail to: user.email, subject: '[QiitanDebugBeginner]メールアドレス確認メール'
  end

  def password_reset(user)
    mail to: user.email, subject: '[QiitanDebugBeginner]パスワードの再設定について'
  end
end