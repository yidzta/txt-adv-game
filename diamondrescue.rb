puts "Welcome to Diamond Rescue! The game where you use maths and other skills to find your way to the Enchanted Castle and rescue the Diamond!"
puts "Please enter your name, hero!"
$player_name = $stdin.gets.chomp    #Added a $ to beginning makes the variable a 'Global' variable, to be used throughout different methods.

class Player
  @health = 100
  def initialize(health_stat)
    @health = health_stat
 end
 def self.show_stat
   return @health
 end
 def self.lose_health
   @health -= 25
 end
end

puts "Hello #{$player_name}, you sound like a true hero! King Harold has fled his castle after it was haunted by an Enderman!
He was in a such a rush, he forgot to take his Diamond with him. Your mission is to go and rescue the diamond! Do you accept the mission? Yes Or No"
mission_answer = $stdin.gets.chomp
 if mission_answer == "yes"
  puts "Great, I will escort you to the starting area...lets go! No time to waste!"
  else mission_answer == "no"
  abort "Thats a shame, the King will be very upset. You must leave this area at once! Goodbye!"
 end

puts "...after a long walk, you arrive at the starting area! You can see the massive castle looming in the distance, high upon a mountain top!"
sleep 2
puts "
Which route will you take? To the left...a haunted forest, to the right, the beach lined with shipwrecks. What will it be? Left or Right?"


def haunted_forest
  puts "You pluck up the courage to end the dark, cold, haunted forest, who knows what awaits inside!"
  sleep 3
  puts "You hear a rustle in some bushes, you shine your torch, you hear a clatter of BONES! A skeleton appears!"
  sleep 3
  puts "You look into his hollow eyes...he gives you 2 options. 1.FIGHT or 2. Answer a maths question and you shall pass! 1 or 2?"
  skel_question = $stdin.gets.chomp

  if skel_question == "1"
    puts "you have chosen to FIGHT! HIT RETURN!"
    puts "You swing your sword, but the skeleton blocks your attack! RETURN!"
    puts "The skeleton dodges to the right, and strikes you with his mace! You lose health!"
    Player.lose_health
    puts "You current health is now #{Player.show_stat}%!"
  elsif skel_question =="2"
    puts "Ok, here is your question, answer this and you may pass! Get it wrong and you shall feel the wrath of my mace!"
    sleep 2
    puts "What is 5 x 8?"
    maths_1 = $stdin.gets.chomp
    if maths_1 == "40"
      puts "Well done #{$player_name}, you answered correctly! The skeleton lets you pass!"
    else
      puts "You are wrong! The skeleton hits you with his weapon!"
      Player.lose_health
      puts "Your health is now at #{Player.show_stat}%!"
      puts "Try again!"
    end
  end
end

def direction
$direction_answer = $stdin.gets.chomp
  if $direction_answer == "left"
    puts "You have chosen the haunted forest! Good luck #{$player_name} your health is currently #{Player.show_stat}%!"
    haunted_forest
  elsif $direction_answer == "right"
  end
end

direction
