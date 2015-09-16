require 'json'

class BallClock
  attr_accessor :original_queue, :current_queue, :one_minute_chute, :five_minute_chute, :hour_chute

  def initialize(ball_count)
    raise "The number of balls must be equal to or less than 127" if ball_count > 127
    raise "The number of balls must be greater than 25" if ball_count < 26

    @one_minute_chute  = []
    @five_minute_chute = []
    @hour_chute        = []
    n = ball_count.to_i
    @original_queue = Array(0..n)
    @current_queue = Array(0..n)
#    @test_queue = [4, 18, 12, 26, 6, 20, 28, 29, 13, 15, 23, 2, 8, 7, 0, 19, 9, 10, 27, 17, 25, 1, 21, 22, 14, 3, 16, 11, 5, 24]
  end

  def next_ball
    @current_queue.shift
  end

  def add_minute
    ball = next_ball
    if @one_minute_chute.size < 4
      @one_minute_chute << ball
    else
      add_five_minute(ball)
      empty_to_current_queue(@one_minute_chute)
      @one_minute_chute = []
    end
  end

  def add_five_minute(ball)
    if @five_minute_chute.size < 11
      @five_minute_chute << ball
    else
      add_hour(ball)
      empty_to_current_queue(@five_minute_chute)
      @five_minute_chute = []
    end
  end

  def add_hour(ball)
      @hour_chute << ball
    if @hour_chute.size == 12
      empty_to_current_queue(@hour_chute)
      @hour_chute = []
    end
  end

  def empty_to_current_queue(balls)
    balls.reverse.each do |ball|
      @current_queue.push(ball)
    end
  end

  def original_sequence?
    @current_queue == @original_queue
  end

  def self.run(ball_count, max_minutes=(1_000_000))
    limit            = max_minutes
    minutes          = 0
    is_original      = false

    bc = new(ball_count)

    while is_original == false
      if minutes >= limit
        puts "Exceeded #{limit} minutes"
        break
      end
      minutes += 1
      bc.add_minute
      puts bc.inspect.to_json
      if bc.original_sequence?
        puts "It took #{(minutes/60/24)} days"
        break
      end
    end
  end
end

BallClock.run(29, 100_000)
