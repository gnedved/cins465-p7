class HomeController < ApplicationController
  def index
  # if key and value are both empty, then display all photographs
  #  if (@key.empty? && @value.empty?)
    @photographs = Photograph.all
    
  #if key or value are not empty, then display serached photographs
  #  else
  #    @photographs = @matching_photos
  #  end
  end

  def search
    @key = params[:key]
    @value = params[:value]
    puts @search_text
    # @matching_photos = TagHash.find_by_sql("SELECT photograph_id FROM tag_hashes WHERE key = #{@key} AND value = #{@value}")
    @matching_photos = TagHash.all.select { |tag| tag.key =~ Regexp.new(@key) && tag.value =~ Regexp.new(@value)}.map {|tag| tag.photograph}.compact.uniq

    if @matching_photos.empty?
	@matching_photos = nil
    end
  end


end
