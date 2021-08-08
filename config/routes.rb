Rails.application.routes.draw do
  
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "see_all"})

    get("/directors/youngest", { :controller => "directors", :action => "see_youngest"})

    get("/directors/eldest", { :controller => "directors", :action => "see_eldest"})

  get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

  get("/movies", { :controller => "directors", :action => "see_movies"})

  get("/actors", { :controller => "directors", :action => "see_actors"})

end
