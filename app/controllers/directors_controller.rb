class DirectorsController < ApplicationController

  def see_all

    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})

  end

  def see_youngest

    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).last

    render({ :template => "director_templates/youngest.html.erb"})

  end

  def see_eldest

    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)

    render({ :template => "director_templates/eldest.html.erb"})

  end

  def director_details
      # params looks like {"an_id=>"42"}

      the_id = params.fetch("an_id")

      @the_director = Director.where({ :id => the_id }).at(0)

    render({ :template => "director_templates/show.html.erb"})

  end


  def see_movies

    render({ :template => "director_templates/movies.html.erb"})

  end

  def see_actors

    render({ :template => "director_templates/actors.html.erb"})

  end

end
