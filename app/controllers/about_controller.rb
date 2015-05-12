class AboutController < ApplicationController
  def index
    @entries = []
    feed = Feedjira::Feed.fetch_and_parse('http://davematthews.tumblr.com/rss')
    feed.entries.each do |e|
      @entries << {title: e.title, content: e.summary.html_safe}
    end
  end
end
