module P
    class Per
      def initialize
        @fname = "weam"
        @lname = "ibrahim"
        @birth_date = "1999/10/01"
        @age = 23
      end
  
      def getData
        puts "please enter first name: "
        @fname = gets.chomp
        puts "please enter last name: "
        @lname = gets.chomp
        puts "please enter birth date (yyyy-mm-dd): "
        @birth_date = gets.chomp
        @age = self.calcAge
      end
  
      def calcAge
        year = Time.new.year - @birth_date.split("/")[0].to_i
        month = Time.new.month - @birth_date.split("/")[1].to_i
        day = Time.new.day - @birth_date.split("/")[2].to_i
        
        return "your age is #{year} year, #{month} months, #{day} days"
      end
      
      def welcome
        puts "Welcome #{@fname} #{@lname}"
        puts @age 
      end
    end
  end
  
  user = P::Per.new()
  
  user.getData()
  user.welcome()