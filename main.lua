--[[

ROCK PAPER SCISSORS :
  i made this project because i need to learn lua
  for very specific purposes!!! currently, i know
  how to code using C++ (i made a main menu game
  on c++ wow!!!), python and now i'm learning lua

  also this game is going to be nominated game
  of the year 2023 surely B)

]]
-- main functions
function clearconsole()
  local command = "clear"
  if os.name == "nt" or "dos" then
    command = "cls"
  end
  os.execute(command)
end

function shutdowngame()
  clearconsole()
  os.exit()
end

function fight(x,y) --1ROCK 2PAPER 3SCISSORS   xPLAYER yCPU
  local tiemsg = "It's a tie!"
  local winmsg = "You won!"
  local losemsg = "You lost!"

  if x == 1 and y == 1 then
    print("Rock VS Rock\n" .. tiemsg)
  elseif x == 1 and y == 2 then
    print("Rock VS Paper\n" .. losemsg)
  elseif x == 1 and y == 3 then
    print("Rock VS Scissors\n" .. winmsg)
  elseif x == 2 and y == 1 then
    print("Paper VS Rock\n" .. winmsg)
  elseif x == 2 and y == 2 then
    print("Paper VS Paper\n" .. tiemsg)
  elseif x == 2 and y == 3 then
    print("Paper VS Scissors\n" .. losemsg)
  elseif x == 3 and y == 1 then
    print("Scissors VS Rock\n" .. losemsg)
  elseif x == 3 and y == 2 then
    print("Scissors VS Paper\n" .. winmsg)
  elseif x == 3 and y == 3 then
    print("Scissors VS Scissors\n" .. tiemsg)
  end
end

-- menu(?)
print([[Rock Paper Scissors
--------------------------
1. Rock
2. Paper
3. Scissors

0. Exit
>> ]])

-- player choices
menuChoice = io.read("*n")
currentChoice = 0

if menuChoice == 1 then
  currentChoice = 1
elseif menuChoice == 2 then
  currentChoice = 2
elseif menuChoice == 3 then
  currentChoice = 3
elseif menuChoice == 0 then
  shutdowngame()
end

clearconsole()
cpuChoice = math.random(1,3)

fight(currentChoice,cpuChoice)
