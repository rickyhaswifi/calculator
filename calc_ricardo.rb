# √ take the first number
# √ take modifier
# √ take the last number
# √ puts result
# √ make + - * / work
# √ make it work with floats
# √ calculator history
# √ memory function
# ~ error checking
# Not completed
# user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last number 
# so result continues to build until the user decides to clear the calculator
# - make clear work

@first_number = []
@mod = []
@second_number = []
@solution_arr = []

def welcome
    puts 'Welcome to the ruby calculator'
end

def calc_menu
    puts
    puts welcome
    puts 'Please select an option'
    puts '1) Math calculator'
    puts '2) See Memory'
    puts '3) Reset calculator'
    puts '4) Exit'
    calc_menu_options
end

def calc_menu_options
    choice = gets.to_i
    if choice == 1
        first_number
        elsif choice == 2
        solutions
        elsif choice == 3
        reset
        elsif choice == 4
        exit
        else choice == '' || ("a".."z").to_a || ("A".."Z").to_a
        puts
        puts 'Sorry try again'
        puts
        calc_menu
    end
end


def first_number
    puts
    puts 'Please input your first number'
    @first_number = gets.chomp.to_f
    
    modifier
end

def modifier
    puts
    puts 'Please enter your modifier (+ - * /)'
    @mod = gets.chomp
    second_number
end

def second_number
    puts
    puts 'Please input your second number'
    @second_number = gets.chomp.to_f
    results
end


def results
    error_check = [@first_number, @mod, @second_number]
    # OPERATORS
    if @mod == '+'
        @solution = (@first_number + @second_number)
        elsif @mod == '-'
        @solution = (@first_number - @second_number)
        elsif @mod == '*'
        @solution = (@first_number * @second_number)
        elsif @mod == '/'
        @solution = (@first_number / @second_number)
        elsif error_check == 'exit'
        exit
        else @mod || error_check == '' || ("a".."z").to_a || ("A".."Z").to_a
        puts "Sorry, try again please"
        puts
        first_number
    end
    # Clone to hash
    def result_store
        
        result_arr =  "#{@first_number}  #{@mod}  #{@second_number} = #{@solution}"
        @solution_arr.push(result_arr)
    end
    result_store
    # Print Result
    puts
    puts 'Calculating...'
    puts "#{@first_number}  #{@mod}  #{@second_number} = #{@solution}"
    
    calc_menu
    
end


def solutions
    puts
    puts 'See previous calculations'
    puts @solution_arr
    calc_menu
end

def reset
    puts
    puts 'You turned the calculator off & back on'
    @solution_arr.clear
    calc_menu
end

# PROGRAM INIT
calc_menu
