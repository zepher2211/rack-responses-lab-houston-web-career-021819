class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now < Time.new(Time.now.year, Time.now.month, Time.now.day, 12)
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
