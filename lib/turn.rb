def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, move)
  if (board[move] == "X" or board[move] == "O")
    return TRUE
  end
  return FALSE
end

def valid_move?(board, move)
  move.to_i
  if ((move < 9 && move > 8) ) 
end

def move(board, move, player = "X")
  if()
end





















def turn
  board = ["","","","","","","","",""]
  loop
  
  end
end