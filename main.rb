=begin

1.	En un campeonato de futbol participan 8 equipos que juegan todos contra todos dos veces, de local y de visitante. Ej. Equipo A vs Equipo B (en el estadio del equipo A), y equipo B vs Equipo A (en el estadio del equipo B). Escribir un algoritmo que pida los nombres de los 8 equipos y luego, los resultados de cada uno de los partidos, esto es, cuántos goles metió cada equipo en cada partido. Sabiendo que por cada partido ganado un equipo recibe 3 puntos y por cada partido empatado un equipo recibe 1 punto. Presentar como resultado quién es el equipo campeón, quién es el equipo más goleador y quién es el equipo menos goleado.	

=end


module UserMenu
  def self.display_menu
    teams = []
    loop do
      display_menu_message
      input = gets.chomp.to_i
      case input
      when 1
        teams = create_teams(8)
      when 2
        get_information
      when 3
        puts 'bye bye'
        break
      end
    end
  end

  def self.display_menu_message
    4.times { puts '' }
    puts 'Enter your option'
    puts '1. Enter list of teams and information about the matches'
    puts '2. Get results'
    puts '3. Exit'
    puts ''
    print 'Your option is: '
  end
end

module UserInterface
  def self.get_team_name(index)
    puts "Enter the name of the team #{index + 1}"
    gets.chomp
  end
end

class Team
  attr_accessor :name, :wins, :losses, :draws, :goals_for, :goals_against, :points

  def initialize(index)
    @name = UserInterface.get_team_name(index)
  end
end

def create_teams(number)
  (1..number).map { |team_number| Team.new(team_number) }
end

UserMenu.display_menu
=begin
esto es para la prueba 2
=end

