# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 3, 6], #Left column
  [1, 4, 7], #Middle column
  [2, 5, 8], #Right column
  [0, 4, 8], #Diagonal 1
  [2, 4, 6], #Diagonal 2
]

def won?(board)
  WIN_COMBINATIONS.each do |wincombo|
    if board[wincombo[0]] == "X" && board[wincombo[1]] == "X" && board[wincombo[2]] == "X"
      return wincombo
    elsif board[wincombo[0]] == "O" && board[wincombo[1]] == "O" && board[wincombo[2]] == "O"
      return wincombo
    end
  end
  return false
end

def full?(board)
 if board.any?{|board_index| board_index == nil || board_index = " " || board_index = ""}
   return false
 else
   return true
 end
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  end
  false
end

def over?(board)
  if won?(board) || full?(board)
    return true
  else
    return false
  end
end
