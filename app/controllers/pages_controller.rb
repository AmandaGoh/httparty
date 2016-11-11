class PagesController < ApplicationController
  def home
    @batman = HTTParty.get("http://www.omdbapi.com/?s=Batman")
    logger.debug "HTTParty result is: #{@batman['Search']}"
    #code
  end

  def about
  end

  def search
    logger.debug "I am trying to search for #{params[:keyword]}"
    keyword = params[:keyword]
    @search = HTTParty.get("http://www.omdbapi.com/?s=#{keyword}")
    logger.debug "HTTParty result is: #{@keyword}"
  end

  def help
  end

  def searchpage
  end

  def searchpost
    logger.debug('got post')
    logger.debug( params[:q])
    keyword = params[:q]

    render json: {
      'result': keyword
    }
  end

end
