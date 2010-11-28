class HomeController < ApplicationController
  NUM_OF_COLLECTION = 12

  before_filter :collect_genre, :get_release_year, :only => :find_suggestion

  def index; end
  
  def find_suggestion
    @items = ITunesSearchAPI.search(:term => params[:q] || params[:query] || params[:hfquery],
      :country => params[:c] || params[:country] || params[:hfcountry],
      :media => params[:m] || params[:media] || params[:hfmedia],
      :entity => params[:entity],
      :attribute => params[:attribute],
      :limit => (params[:limit].blank? ? NUM_OF_COLLECTION : params[:limit]))
  end

  private

  def collect_genre
    if media_is_music?
      @genre = []

      if !params[:cbgenre].nil?
        params[:cbgenre].each do |genre|
          @genre.push(genre[1])
        end
      elsif !params[:cboxgenre].nil?
        params[:cboxgenre].each do |genre|
          @genre.push(genre[1]) unless genre[1].empty?
        end
      elsif !params[:hf_cboxgenre].nil?
        params[:hf_cboxgenre].each do |genre|
          @genre.push(genre[1]) unless genre[1].empty?
        end
      end
    end
  end

  def get_release_year
    if media_is_music?
      @release_year = if !params[:date].nil? and !params[:date][:release_year].blank?
        params[:date][:release_year]
      elsif !params[:rls_year].blank?
        params[:rls_year]
      elsif !params[:hf_release_year].blank?
        params[:hf_release_year]
      end

      release_year_from = if !params[:st_decade].blank? or !params[:decade].blank? or !params[:hf_decade].blank?
        (params[:st_decade] || params[:decade] || params[:hf_decade]).to_i
      elsif !params[:date].nil? and !params[:date][:release_year_from].nil?
        params[:date][:release_year_from].to_i
      elsif !params[:rls_year_from].blank?
        params[:rls_year_from].to_i
      elsif !params[:hf_release_year_from].blank?
        params[:hf_release_year_from].to_i
      end

      release_year_to = if !params[:st_decade].blank? or !params[:decade].blank? or !params[:hf_decade].blank?
        ((params[:st_decade] || params[:decade] || params[:hf_decade]).to_i + 9)
      elsif !params[:date].nil? and !params[:date][:release_year_to].nil?
        params[:date][:release_year_to].to_i
      elsif !params[:rls_year_to].blank?
        params[:rls_year_to].to_i
      elsif !params[:hf_release_year_to].blank?
        params[:hf_release_year_to].to_i
      end
    end

    @release_year_range = determine_release_year(release_year_from, release_year_to)

    unless @release_year_range.nil?
      for i in release_year_from..release_year_to do
        @release_year_range << i.to_s
      end
    end

  end
  
  def media_is_music?
    return true if params[:media].eql?("music")
    return true if params[:m].eql?("music")
    return true if params[:hfmedia].eql?("music")
    return false
  end
  
  def determine_release_year(from, to)
    return nil if from.nil?
    return nil if to.nil?
    return nil if from.zero?
    return nil if to.zero?
    return []
  end
end