#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#valid_move
def valid_move?(board, index)
  # if index.between?(1,9)
  #   if !position_taken?(board, index)
  #     true
  #   end
  # end
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end
#position_taken
def position_taken?(board, index)
  # basic solution:

  # taken = nil
  # if (board[index] ==  " " || board[index] == "" || board[index] == nil)
  #   taken = false
  # else
  #   taken = true
  # end
  # taken

  # advanced solution w/ ternary operator
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true

end

#move
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, character = "x")
    display_board(board)
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(index)
    end
  end
end
