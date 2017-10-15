class ChatChannel < ApplicationCable::Channel
  def subscribed
		if (conditions_for_user)
  		entity = User.find_by(auth_token: params[:user_token])
  		return if entity.nil?
  		channel = "campaign#{params[:campaign_id]}_x_finder#{params[:finder_id]}"
		end

    stream_from channel
  end

  def unsubscribed; end

  def create(opts)
    ChatMessage.create(
      content: opts.fetch('content')
    )
  end

 	private
	def conditions_for_user
		params[:user_token].present? && params[:campaign_id].present? && params[:finder_id].present?
	end
end