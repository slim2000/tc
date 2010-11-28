module HomeHelper
  def filter_more_search_options(param_value, label, param_name = "attribute")
    link_to_remote "#{label}",
      {:update => "result",
      :url  => {:action => :find_suggestion},
      :with => "'#{param_name}=#{param_value}&c='+$('c').value+'&m='+$('m').value+'&q='+$('q').value",
      :loading => "$('ajax-loader').show();",
      :complete => "$('ajax-loader').hide(); #{visual_effect(:highlight, "result", :duration => 0.5)}"},
      {:onclick => "clicked(this)"}
  end

  def generate_decade_year
    decades = []
    decades << ["Choose year", ""]
    
    (1950..Date.today.year).step(10) do |decade|
      decades << [decade.to_s + "s", decade]
    end
    
    return decades
  end
end