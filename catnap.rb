class Catnap < Sinatra::Base
  register Sinatra::Async

  configure do
    EM.next_tick do
      EM::PeriodicTimer.new(60) do
        EM::HttpRequest.new('http://catnap.herokuapp.com/').head
      end
    end
  end

  helpers do
    def catnap(delay)
      "Catnapped #{delay} seconds before responding."
    end
  end

  aget '/' do
    body catnap(0)
  end

  aget '/:delay' do
    delay = params[:delay].to_i

    if delay <= 0
      body catnap(0)
    else
      EM::Timer.new(delay) { body catnap(delay) }
    end
  end
end
