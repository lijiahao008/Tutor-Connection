class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_unread_conversations




private
  def get_unread_conversations
    @unread_conversations = current_user.mailbox.conversations.select{|conversation| conversation.is_unread?(current_user)}.size
  end

end
