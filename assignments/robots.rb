class Robot
  def speak
    puts "I am your robot Overlord. Bow before me!"
  end
end

class Ultron < Robot
  # Your code goes here
  def speak
    puts "I am Ultron, leader of the AutoBots. No need to bow before me!"
  end
end

class MegaMan < Robot
  # Your code goes here
  def speak
    puts "I am MegaMan! I am part human, part robot, part child!"
  end
end

class Glados < Robot
  # Your code goes here
  def speak
    super
    puts "The cake is a lie. Just like your life. I hate all humans."
  end
end

robos = [ Glados.new, MegaMan.new, Ultron.new ]

robos.each { |robo|
    robo.speak
}
