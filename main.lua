--backround
display.setDefault( "background", 125/255, 0/255, 200/255 )

local age = display.newImageRect( "./assets/age.png", 160, 160 )
age.x = display.contentCenterX
age.y = 50
age.id = " age "

--calculate button
local calculateButton = display.newImageRect( "./assets/calculate.png", 300, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = 240
calculateButton.id = " calculateButton "
 
local myGuessTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 160, 300, 60 )
myGuessTextfield.id = " myGuessTextField"

local screenText = display.newText( "Guess my age!!", 160, 340, native.systemFont, 25 )
screenText:setFillColor( 255/255, 29/255, 96/255 )

print( "Guess my age!!" )
print("")

local endText = display.newText( " ", 160, 450, native.systemFont, 25 )
endText:setFillColor( 255/255, 29/255, 96/255 )


local function calculateButtontouch ( event)
	numberToGuess = 14
    myGuess = tonumber( myGuessTextfield.text )

    if myGuess	> numberToGuess	then
    	print("Too big..")
    	print("")
    	screenText.text = "Too big... Guess again!"

    elseif myGuess	< numberToGuess	then
    	print("Too small..")
    	print("")
    	screenText.text = "Too small... Guess again!"

    elseif numberToGuess == myGuess then
    	print( "Correct" )
    	print("")
    	screenText.text = "Correct! Nice Job"

    else
    	print("ERROR, Guess again!")
    end

end		

calculateButton :addEventListener( "touch", calculateButtontouch )