class CheckAuthentication
  include Rack::Utils

  def initialize(app)
    @app = app
  end

  def call(env)
    status, @headers, resp = @app.call(env)

    if env["HTTP_C_APP_ID"] == "hello" && env["HTTP_C_APP_KEY"] == 'world'
      [status, @headers, resp]
    else
      reverse = ["access denied"]
      @headers['Content-Length'] &&= bytesize(reverse.first).to_s
      [401, @headers, reverse]
    end

  end
end

Cuba.use CheckAuthentication

Cuba.plugin Cuba::Sugar::As

Cuba.define do
  on get do

    on root do
      res.write "hello world"
    end

    on "hello" do
      as_json do
        {"0":"hello","1":"world"}
      end
    end

  end
end
