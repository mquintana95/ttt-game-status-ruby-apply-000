# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2]
    ]
def won?(board)
  WIN_COMBINATIONS.detect do|combo| 
  board[combo[0]] == board[combo[1]] && 
  board[combo[1]] == board[combo[2]] &&
  position_taken?(board, combo[0])
  end
end
def full?(board)
  !board.any? { |x| x == " " }
end
  
def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board) || !won?(board)
    return false
  end
end 

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    combo = won?(board)
    winning_index = combo[0]
  return board[winning_index]
  end
end
  