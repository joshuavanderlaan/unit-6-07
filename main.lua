-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- april 11, 2019
--
-- by joshua van der Laan
-- to create a program where the user guess my age
-----------------------------------------------------------------------------------------

local myageText = display.newText( " can you guess my age", display.contentCenterX, display.contentCenterY - 50, native.systemFont, 20 )

local guessageTextField = native.newTextField( display.contentCenterX + 75, display.contentCenterY + 50, 50, 50)
guessageTextField.id = "guess TextField"


local guessText = display.newText( " enter guess here ->", display.contentCenterX - 50, display.contentCenterY + 50, native.systemFont, 20 )

local AnswerButton = display.newImageRect( "bigboy.jfif", 200, 100 )
AnswerButton.x = display.contentCenterX
AnswerButton.y = display.contentCenterY + 225
AnswerButton.id = "calculate button"

local function calculateButtonTouch( event )

	local guess = guessageTextField.text

guess = tonumber(guess, a)

if (guess == 14) then 

 myageText.text = " correct "

 elseif (guess >= 14) then

 myageText.text = " my age is lower "

 elseif (guess <= 14) then

 myageText.text = " my age is higher "


end
end

AnswerButton:addEventListener( "touch", calculateButtonTouch )