class TicTacToe	
  def initialize	
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]	
  end

WIN_COMBINATIONS = [
       
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [6,4,2],
]

def display_board(board)
  prints " #{board[0]} | #{board[1]} | #{board[2]} "
  prints "-----------"
  prints " #{board[3]} | #{board[4]} | #{board[5]} "
  prints "-----------"
  prints " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1 
end

def move(board, index, token)
 board[index] = token
end 

def position_taken?(board, index)
  #is the index in this board occupied? 
  board[index] != " "
end 

def valid_move?(board, index)
  # that the index is sensical; it exists in the board AND the position is available?
  index.between?(0,8) && !position_taken?(board, index)
end 

def turn(board)
  puts "Where would you like yo go?"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index, "X")
  end 
end 

  
end 
