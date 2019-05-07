%April 6th, 2018
%Maria Yampolsky
%Ms. Krasteva
%My Creation is an animation about six reptiles who play ball and hide and seek.

View.Set ("graphics, offscreenonly")
var myfont : int
myfont := Font.New ("Arial:10")
var myfontend : int
myfontend := Font.New ("Vladimir Script:40")
var myfontstart : int
myfontstart := Font.New ("Harlow Solid Italic:40")
%identify arrays
var snaketailx : array 1 .. 3 of int := init (730, 735, 742)
var snaketaily : array 1 .. 3 of int := init (170, 150, 161)
var crocodiletailx : array 1 .. 3 of int := init (807, 807, 859)
var crocodiletaily : array 1 .. 3 of int := init (80, 50, 45)
var teethx : array 1 .. 3 of int := init (654, 664, 659)
var teethy : array 1 .. 3 of int := init (68, 68, 63)
var teethx1 : array 1 .. 3 of int := init (669, 679, 674)
var teethy1 : array 1 .. 3 of int := init (68, 68, 63)
var geckotailx : array 1 .. 3 of int := init (760, 760, 800)
var geckotaily : array 1 .. 3 of int := init (135, 124, 129)
var xchameleontail : array 1 .. 3 of int := init (400, 400, 450)
var ychameleontail : array 1 .. 3 of int := init (213, 190, 185)
%intro
procedure intro
    for i : 1 .. 400
	drawline (0, i, 640, i, 82)
    end for
    Draw.Text ("Hide and Seek", 170, 240, myfontstart, black)
    Draw.Text ("A short animation about a group of reptiles", 210, 200, myfont, black)
    Draw.Text ("playing games and having some fun", 230, 180, myfont, black)
    Draw.ThickLine (198, 236, 490, 236, 4, black)
    View.Update
    delay (6500)
end intro
%scene 1
procedure backgroundscene1
    for i : 0 .. 640
	drawline (i, 130, i, 400, 101)     %sky
	drawline (i, 130, i, 0, 162)     %ground
    end for
    for i : 0 .. 50
	drawoval (580, 340, i, i, 14)     %sun
    end for
    %cactus
    for i : 0 .. 40
	drawline (140 + i, 150, 140 + i, 180, 120)     %right branch
	drawline (60 - i, 150, 60 - i, 180, 120)     %left branch
    end for
    for i : 0 .. 30
	drawarc (180, 180, i, i, 270, 360, 120)     %right branch bend
	drawarc (179, 180, i, i, 270, 360, 120)
	drawarc (180, 179, i, i, 270, 360, 120)
	drawarc (20, 180, i, i, 180, 271, 120)     %left branch bend
	drawarc (20, 179, i, i, 180, 271, 120)
	drawarc (19, 180, i, i, 180, 271, 120)
    end for
    for i : 0 .. 18
	drawoval (193, 200, i, 45, 120)     %right branch
	drawoval (7, 200, i, 45, 120)     %left branch
    end for
    for i : 0 .. 880     %cactus main body
	drawarc (100, 180, i div 16, i div 16, 0, 181, 120)
	drawarc (99, 180, i div 16, i div 16, 0, 181, 120)
	drawarc (100, 181, i div 16, i div 16, 0, 181, 120)
	drawline (45 + (i div 8), 180, 60 + (i div 11), 100, 120)
    end for
    %flower
    for i : 0 .. 5
	drawoval (165, 183, i, i, 62)
	drawoval (145, 183, i, i, 62)
	drawoval (160, 190, i, i, 62)
	drawoval (150, 190, i, i, 62)
	drawoval (160, 175, i, i, 62)
	drawoval (150, 175, i, i, 62)
	drawoval (155, 183, i, i, 14)
    end for
    %turtle
    drawfilloval (275, 220, 20, 20, blue)     %ball
    drawfillbox (290, 200, 260, 180, 63)     %head
    drawfillarc (290, 185, 5, 5, 180, 270, red)     %mouth
    drawfilloval (280, 193, 4, 2, white)     %eye
    drawfilloval (282, 193, 2, 2, black)     %eye
    drawfillarc (254, 170, 15, 30, 240, 60, 63)     %neck
    drawfillarc (230, 130, 35, 40, 0, 180, 82)     %shell
    drawfillarc (228, 150, 25, 14, 90, 180, 109)     %shell
    drawfillarc (232, 150, 25, 14, 0, 90, 109)     %shell
    drawfillarc (258, 132, 5, 16, 0, 90, 108)     %shell
    drawfillarc (203, 132, 5, 16, 90, 180, 108)     %shell
    drawfillbox (206, 132, 228, 147, 110)     %shell
    drawfillbox (255, 132, 232, 147, 110)     %shell
    drawfillarc (245, 130, 10, 12, 0, 180, 82)     %shell
    drawfillarc (215, 130, 10, 12, 0, 180, 82)     %shell
    drawfillarc (245, 120, 10, 20, 0, 180, 63)     %leg
    drawfillarc (215, 120, 10, 20, 0, 180, 63)     %leg
    drawline (205, 123, 225, 123, 89)     %line on leg
    drawline (235, 123, 255, 123, 89)     %line on leg
end backgroundscene1

process throwballback
    for i : 1 .. 120
	drawfilloval (430 - (i - 1), 202 - (i - 1) div 60, 21, 21, 101)     %erase
	drawfilloval (430 - i, 202 - i div 60, 20, 20, blue)     %draw
	View.Update
	delay (5)
    end for
end throwballback

procedure snakeenters
    %arrays for snake's tail
    for decreasing i : 210 .. 0
	drawfillbox (530 + i, 130, 544 + i, 115, 162)     %erase over ground
	drawfillbox (440 + i, 203, 546 + i, 131, 101)     %erase over sky
	drawfilloval (455 + i, 190, 20, 13, 40)     %head
	drawfillarc (459 + i, 170, 25, 25, 300, 60, 40)     %neck
	drawfillarc (459 + i, 170, 10, 10, 300, 60, 101)     %neck
	drawfillarc (480 + i, 140, 25, 25, 115, 270, 40)     %neck
	drawfillarc (480 + i, 140, 10, 10, 115, 270, 101)     %neck
	drawfillbox (480 + i, 130, 520 + i, 115, 40)     %body
	drawline (480 + i, 130, 485 + i, 115, 42)     %lines on body
	drawline (490 + i, 130, 495 + i, 115, 42)
	drawline (500 + i, 130, 505 + i, 115, 42)
	drawline (510 + i, 130, 515 + i, 115, 42)
	drawfillarc (520 + i, 140, 25, 25, 270, 60, 40)     %tail
	drawfillarc (520 + i, 140, 10, 10, 270, 60, 101)     %tail
	for j : 1 .. 3     %tail
	    snaketailx (j) := snaketailx (j) - 1
	    drawfillpolygon (snaketailx, snaketaily, 3, 40)
	end for
	drawarc (434 + i, 188, 12, 5, 290, 0, black)     %mouth
	drawfilloval (455 + i, 194, 5, 5, white)     %eye
	drawfilloval (453 + i, 194, 3, 3, 130)     %eye
	View.Update
	delay (40)
    end for
end snakeenters
procedure turtlehitsball
    for i : 1 .. 5
	drawfillbox (291 - i, 200, 260, 180, 101)     %erase head
	drawfillbox (290 - i, 200, 260 - i, 180, 63)     %head
	drawfillarc (290 - i, 185, 5, 5, 180, 270, red)     %mouth
	drawfilloval (280 - i, 193, 4, 2, white)     %eye
	drawfilloval (282 - i, 193, 2, 2, black)     %eye
	View.Update
	delay (40)
    end for
    for decreasing i : 5 .. 0
	drawfillbox (289 - i, 200, 259 - i, 180, 101)     %erase
	drawfillbox (290 - i, 200, 260 - i, 180, 63)     %head
	drawfillarc (254, 170, 15, 30, 0 + i, 60, 63)     %neck
	drawfillarc (290 - i, 185, 5, 5, 180, 270, red)
	drawfilloval (280 - i, 193, 4, 2, white)     %eye
	drawfilloval (282 - i, 193, 2, 2, black)     %eye
	View.Update
	delay (40)
    end for
end turtlehitsball
process ballishit
    for i : 1 .. 5
	drawfilloval (275 + (i - 1) * 7, 220 - (i - 1) * 4, 20, 20, 101)     %erase ball
	drawfilloval (275 + i * 7, 220 - i * 4, 20, 20, blue)     %ball
	View.Update
	delay (40)
    end for
end ballishit
procedure catchpart1
    fork ballishit
    turtlehitsball
    %snake movements
    for i : 0 .. 120
	drawfilloval (309 + i, 200 + (i - 1) div 60, 20, 20, 101)     %ball erase
	drawfilloval (310 + i, 200 + i div 60, 20, 20, blue)     %ball draw
	drawfilloval (453 + i div 15, 189 + i div 15, 21 - i div 16, 12 + i div 16, 101)     %erase head
	drawfilloval (456 + i div 15, 190 + i div 15, 20 - i div 15, 13 + i div 15, 40)     %head
	drawarc (435 + i div 5, 188 + i div 5, 12 - i div 15, 5 + i div 15, 290 - i * 4 div 5, 0 - i * 4 div 5, red)     %mouth
	drawfilloval (454 + i * 2 div 15, 194 + i div 45, 5, 5, white)     %eye
	drawfilloval (453 + i * 2 div 15, 195 + i div 30, 3, 3, 130)     %eye
	View.Update
	delay (5)
    end for
    fork throwballback
    for decreasing i : 5 .. 0
	drawfilloval (461 + i, 196 + i, 21 - i, 14 + i, 101)     %erase head
	drawfilloval (459 + i, 187 + i, 20 - i, 13 + i, 40)     %head
	drawarc (437 + i * 3, 186 + i * 3, 12 - i, 5 + i, 290 - i * 12, 0 - i * 12, red)     %mouth
	drawfilloval (457 + i * 2, 192 + i div 3, 5, 5, white)     %eye
	drawfilloval (456 + i * 2, 193 + i div 2, 3, 3, 130)     %eye
	View.Update
	delay (40)
    end for
end catchpart1

process snakeopenmouth
    for i : 1 .. 34
	drawfillbox (435, 189 + i, 465, 190 - i div 3, 101)     %erase
	drawfillarc (455, 190 + i, 20, 13, 0, 180, 40)     %head top
	drawfilloval (455, 194 + i, 5, 5, white)     %eye
	drawfilloval (453, 194 + i, 3, 3, 130)     %eye
	drawfillarc (455, 190 - i div 3, 20, 13, 180, 0, 40)     %head
	View.Update
	delay (20)
    end for
end snakeopenmouth

procedure catchpart2
    turtlehitsball
    fork snakeopenmouth
    for i : 0 .. 135     %ball moves in
	drawfilloval (310 + i, 200 + (i - 1) div 60, 20, 20, 101)     %ball erase
	drawfilloval (311 + i, 200 + i div 60, 20, 20, blue)     %ball draw
	View.Update
	delay (7)
    end for
    for decreasing i : 34 .. 8     %snake swallows ball
	drawfillbox (435, 190 + i, 426, 224, 101)     %erase ball
	drawfilloval (480, 190, 20 - i div 2, 20 - i div 2, 40)     %swallowed ball
	drawfillarc (455, 191 + i, 20, 13, 0, 180, 101)     %erase top head
	drawfillarc (449, 190 - (i + 1) div 3, 25, 14, 180, 0, 101)     %erase bottom
	drawfillarc (459, 170, 25, 25, 300, 60, 40)     %neck
	drawfillarc (459, 170, 10, 10, 300, 60, 101)     %neck
	drawfillarc (455, 190 + i, 20, 13, 0, 180, 40)     %head top
	drawfilloval (455, 195 + i, 5, 5, white)     %eye
	drawfilloval (453, 195 + i, 3, 3, 130)     %eye
	drawfillarc (455, 190 - i div 3, 20, 13, 180, 0, 40)     %head bottom
	View.Update
	delay (40)
    end for
    drawfillarc (290, 185, 5, 5, 180, 270, 63)     %turtle mouth change
    drawfilloval (286, 184, 3, 3, red)     %mouth
    drawfilloval (280, 193, 4, 2, white)     %eye
    drawfilloval (281, 192, 2, 2, black)     %eye
    for decreasing i : 8 .. 1
	drawfillbox (435, 190 + i, 426, 224, 101)     %erase ball
	drawfilloval (480, 190, 20 - i div 2, 20 - i div 2, 40)     %swallowed ball
	drawfillarc (455, 191 + i, 20, 13, 40, 180, 101)     %erase top head
	drawfillarc (449, 190 - (i + 1) div 3, 25, 14, 180, 0, 101)     %erase bottom
	drawfillarc (459, 170, 25, 25, 300, 60, 40)     %neck
	drawfillarc (459, 170, 10, 10, 300, 60, 101)     %neck
	drawfillarc (455, 190 + i, 20, 13, 0, 180, 40)     %head top
	drawfilloval (455, 195 + i, 5, 5, white)     %eye
	drawfilloval (453, 195 + i, 3, 3, 130)     %eye
	drawfillarc (455, 190 - i div 3, 20, 13, 180, 0, 40)     %head bottom
	View.Update
	delay (40)
    end for
    for i : 1 .. 20
	drawfilloval (480 + i div 2, 192 - i, 20, 20, 101)     %ball erase
	drawfilloval (455, 190, 20, 13, 40)     %head
	drawarc (434, 188, 12, 5, 290, 0, black)     %mouth
	drawfilloval (455, 194, 5, 5, white)     %eye
	drawfilloval (453, 194, 3, 3, 130)     %eye
	drawfillarc (459, 170, 25, 25, 300, 60, 40)     %neck
	drawfillarc (459, 170, 10, 10, 300, 60, 101)     %neck
	drawfilloval (480 + i div 2, 190 - i, 20, 20, 40)     %ball draw
	View.Update
	delay (40)
    end for
end catchpart2

procedure crocodile
    for decreasing i : 369 .. 0
	drawfillbox (271 + i, 96, 491 + i, 35, 162)     %erase
	drawfillbox (427 + i, 48, 412 + i, 35, 145)     %leg
	drawfillbox (388 + i, 48, 373 + i, 35, 145)     %leg
	drawfilloval (400 + i, 65, 50, 23, 143)     %body
	drawfilloval (400 + i, 52, 36, 10, 45)     %belly
	drawline (400 + i, 62, 400 + i, 42, 190)     %lines on belly
	drawline (410 + i, 61, 410 + i, 43, 190)
	drawline (390 + i, 61, 390 + i, 43, 190)
	drawline (380 + i, 60, 380 + i, 43, 190)
	drawline (420 + i, 60, 420 + i, 43, 190)
	drawarc (354 + i, 80, 6, 16, 0, 180, black)     %eye
	drawarc (344 + i, 80, 6, 16, 0, 180, black)     %eye
	drawfillarc (354 + i, 80, 5, 15, 0, 180, white)     %eye
	drawfillarc (344 + i, 80, 5, 15, 0, 180, white)     %eye
	drawfilloval (354 + i, 83, 2, 2, black)     %eye
	drawfilloval (344 + i, 83, 2, 2, black)     %eye
	drawfillbox (359 + i, 80, 280 + i, 67, 143)     %top of mouth
	drawfillbox (359 + i, 62, 280 + i, 52, 143)     %bottom of mouth
	drawfillbox (359 + i, 67, 330 + i, 62, 143)     %middle of mouth
	drawfilloval (275 + i, 74, 6, 8, 145)     %round end of mouth top
	drawfilloval (277 + i, 57, 4, 6, 145)     %round end of mouth bottom
	for j : 1 .. 3
	    crocodiletailx (j) := crocodiletailx (j) - 1
	    teethx (j) := teethx (j) - 1
	    teethx1 (j) := teethx1 (j) - 1
	    drawfillpolygon (crocodiletailx, crocodiletaily, 3, 143)
	    drawfillpolygon (teethx, teethy, 3, white)
	    drawfillpolygon (teethx1, teethy1, 3, white)
	end for
	Draw.Text ("Come to the beach to play hide and seek!", 90, 90, myfont, white)
	View.Update
	delay (20)
    end for
end crocodile

process music
    for i : 1 .. 2
	play (">>4a4d4e2f+2f+4p4f+4e4f+2d2d4p4d4e4f+2g2b4p4b4a4g1f+4p4d4e4f+2g2b4b4b4a4g2f+2d2p4d4e2f+4p4g4e2e4f+1d<")
    end for
end music

procedure leavingscene1
    drawfilloval (286, 184, 3, 3, 63)
    drawfillarc (290, 185, 5, 5, 180, 270, red)     %turtle mouth change back to smile
    %snake turns around
    for i : 1 .. 20
	drawfillbox (435, 130, 545, 204, 101)     %erase over sky
	drawfillbox (435, 115, 545, 130, 162)     %erase over ground
	drawfillarc (520 - i, 140, 25 - i div 2, 25 - i div 2, 270, 60, 40)     %tail
	drawfillarc (520 - i, 140, 10 - i div 4, 10 - i div 4, 270, 60, 101)     %tail
	drawfillarc (459 + i * 17 div 10, 170, 25 - i div 2, 25 - i div 2, 300, 60, 40)     %neck
	drawfillarc (459 + i * 17 div 10, 170, 10 - i div 4, 10 - i div 4, 300, 60, 101)     %neck
	drawfillarc (480 + i, 140, 25 - i div 2, 25 - i div 2, 115, 270, 40)     %neck
	drawfillarc (480 + i, 140, 10 - i div 4, 10 - i div 4, 115, 270, 101)     %neck
	drawfilloval (455 + i * 2, 190 - i div 4, 20, 13, 40)     %head
	drawfilloval (455 + i * 2, 194 - i div 4, 5, 5, white)     %eye
	drawfilloval (453 + i * 15 div 7, 194 - i div 4, 3, 3, 130)     %eye
	snaketailx (1) := snaketailx (1) - 3 div 2
	snaketailx (2) := snaketailx (2) - 3 div 2
	snaketailx (3) := snaketailx (3) - 2
	drawfillpolygon (snaketailx, snaketaily, 3, 40)
	drawfilloval (490 + i div 2, 170, 20, 20, 40)     %swallowed ball
	View.Update
	delay (10)
    end for

    for i : 1 .. 20
	drawfillbox (440, 130, 545, 203, 101)     %erase over sky
	drawfillbox (440, 115, 545, 130, 162)     %erase over ground
	drawfillarc (500 - i, 140, 15 + i div 2, 15 + i div 2, 120, 270, 40)     %tail
	drawfillarc (500 - i, 140, 5 + i div 4, 5 + i div 4, 120, 270, 101)     %tail
	drawfillarc (505 + i * 17 div 10, 170, 15 + i div 2, 15 + i div 2, 120, 240, 40)     %neck
	drawfillarc (505 + i * 17 div 10, 170, 5 + i div 4, 5 + i div 4, 120, 240, 101)     %neck
	drawfillarc (500 + i, 140, 15 + i div 2, 15 + i div 2, 270, 425, 40)     %neck
	drawfillarc (500 + i, 140, 5 + i div 4, 5 + i div 4, 270, 425, 101)     %neck
	drawfilloval (495 + i * 2, 185 + i div 4, 20, 13, 40)     %head
	drawfillbox (500 - i, 130, 500 + i, 115, 40)     %body
	drawfilloval (495 + i * 2, 189 + i div 4, 5, 5, white)        %eye
	drawfilloval (496 + i * 17 div 8, 189 + i div 4, 3, 3, 130)     %eye
	snaketailx (1) := snaketailx (1) - 1
	snaketailx (2) := snaketailx (1) - 3
	snaketailx (3) := snaketailx (1) - 14
	drawfillpolygon (snaketailx, snaketaily, 3, 40)
	drawfilloval (500 + i div 2, 168, 20, 20, 40)     %swallowed ball
	View.Update
	delay (10)
    end for
    drawline (480, 130, 485, 115, 42)         %lines on body
    drawline (490, 130, 495, 115, 42)
    drawline (500, 130, 505, 115, 42)
    drawline (510, 130, 515, 115, 42)
    %snake leaves
    for i : 1 .. 200
	drawfillbox (450 + i, 203, 545 + i, 130, 101)     %erase over sky
	drawfillbox (450 + i, 115, 545 + i, 130, 162)     %erase over ground
	drawfillarc (480 + i, 140, 25, 25, 120, 270, 40)     %tail
	drawfillarc (480 + i, 140, 10, 10, 120, 270, 101)     %tail
	drawfillarc (539 + i, 170, 25, 25, 120, 240, 40)     %neck
	drawfillarc (539 + i, 170, 10, 10, 120, 240, 101)     %neck
	drawfillarc (520 + i, 140, 25, 25, 270, 425, 40)     %neck
	drawfillarc (520 + i, 140, 10, 10, 270, 425, 101)     %neck
	drawfilloval (535 + i, 190, 20, 13, 40)     %head
	drawfillbox (480 + i, 130, 520 + i, 115, 40)     %body
	drawfilloval (535 + i, 194, 5, 5, white)      %eye
	drawfilloval (538 + i, 194, 3, 3, 130)     %eye
	drawfilloval (510 + i, 168, 20, 20, 40)
	drawline (480 + i, 130, 485 + i, 115, 42)     %lines on body
	drawline (490 + i, 130, 495 + i, 115, 42)
	drawline (500 + i, 130, 505 + i, 115, 42)
	drawline (510 + i, 130, 515 + i, 115, 42)
	for j : 1 .. 3
	    snaketailx (j) := snaketailx (j) + 1
	    drawfillpolygon (snaketailx, snaketaily, 3, 40)
	end for
	View.Update
	delay (20)
    end for
    %turtle leaves
    for i : 0 .. 445
	drawfillbox (290 + i, 200, 194 + i, 131, 101)     %erase over sky
	drawfillbox (195 + i, 120, 244 + i, 130, 162) %erase over ground
	for j : 1 .. 18
	    drawfillarc (193, 200, j, 46, 270, 0, 120) %erase over cactus
	end for
	drawfillbox (290 + i, 200, 260 + i, 180, 63)     %head
	drawfillarc (290 + i, 185, 5, 5, 180, 270, red)     %mouth
	drawfilloval (280 + i, 193, 4, 2, white)     %eye
	drawfilloval (282 + i, 193, 2, 2, black)     %eye
	drawfillarc (254 + i, 170, 15, 30, 240, 60, 63)     %neck
	drawfillarc (230 + i, 130, 35, 40, 0, 180, 82)     %shell
	drawfillarc (228 + i, 150, 25, 14, 90, 180, 109)     %shell
	drawfillarc (232 + i, 150, 25, 14, 0, 90, 109)     %shell
	drawfillarc (258 + i, 132, 5, 16, 0, 90, 108)     %shell
	drawfillarc (203 + i, 132, 5, 16, 90, 180, 108)     %shell
	drawfillbox (206 + i, 132, 228 + i, 147, 110)     %shell
	drawfillbox (255 + i, 132, 232 + i, 147, 110)     %shell
	drawfillarc (245 + i, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (215 + i, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (245 + i, 120, 10, 20, 0, 180, 63)     %legs
	drawfillarc (215 + i, 120, 10, 20, 0, 180, 63)
	drawline (205 + i, 123, 225 + i, 123, 89)     %lines on legs
	drawline (235 + i, 123, 255 + i, 123, 89)
	View.Update
	delay (10)
    end for
end leavingscene1

%scene 2
procedure sandcastle
    for i : 0 .. 30
	drawoval (50, 50, i, i div 2, 68)
	drawoval (110, 50, i, i div 2, 68)
	drawbox (20, 35 - i div 2, 140, 35 + i div 2, 68)
	drawoval (50, 20, i, i div 2, 68)
	drawoval (110, 20, i, i div 2, 68)
	drawline (50, 80, 20 + i * 2, 50, 68)
	drawline (110, 80, 80 + i * 2, 50, 68)
    end for
    for i : 0 .. 5
	drawoval (50, 48, i, i, 28)
	drawoval (50, 32, i, i, 28)
	drawoval (55, 40, i, i, 28)
	drawoval (45, 40, i, i, 28)
	drawoval (110, 48, i, i, 28)
	drawoval (110, 32, i, i, 28)
	drawoval (115, 40, i, i, 28)
	drawoval (105, 40, i, i, 28)
    end for
end sandcastle
procedure backgroundscene2
    for i : 0 .. 640
	drawline (i, 180, i, 400, 101)     %sky
    end for
    for i : 0 .. 180
	drawline (0, i, 400, i, 67)     %sand
	drawline (401, i, 640, i, 78)     %water
    end for
    for j : 1 .. 400
	var sandx : int
	var sandy : int
	randint (sandx, 0, 375)     %little sand specks
	randint (sandy, 0, 175)
	drawdot (sandx, sandy, 43)
    end for
    for i : 0 .. 30     % water edge
	for j : 0 .. 120 by 60
	    drawarc (402, 30 + j, i, i, 0, 270, 78)
	end for
    end for
    for i : 0 .. 50
	drawoval (580, 340, i, i, 14)     %sun
    end for
    %umbrella
    drawline (20, 180, 40, 250, black)
    for i : 1 .. 100
	drawarc (40, 250, i, 100 div 3, 0, 180, 134)
    end for
    sandcastle
end backgroundscene2
procedure animalsenter
    %identify arrays
    var crocodiletailx : array 1 .. 3 of int := init (-278, -278, -330)
    var crocodiletaily : array 1 .. 3 of int := init (130, 100, 95)
    var teethx : array 1 .. 3 of int := init (-115, -125, -120)
    var teethy : array 1 .. 3 of int := init (118, 118, 113)
    var teethx1 : array 1 .. 3 of int := init (-150, -140, -145)
    var teethy1 : array 1 .. 3 of int := init (118, 118, 113)
    var snaketailx : array 1 .. 3 of int := init (-75, -82, -70)
    var snaketaily : array 1 .. 3 of int := init (51, 62, 70)
    for i : 1 .. 290
	%turtle
	drawfillbox (-34 + i, 180, -1 + i, 200, 101)     %erase over sky
	drawline (20, 180, 40, 250, black)     %erase over umbrella
	drawfillbox (-96 + i, 120, -36 + i, 179, 67)     %erase over sand
	drawfillbox (0 + i, 200, -30 + i, 180, 63)     %head
	drawfillarc (0 + i, 185, 5, 5, 180, 270, red)     %mouth
	drawfilloval (-10 + i, 193, 4, 2, white)     %eye
	drawfilloval (-8 + i, 193, 2, 2, black)     %eye
	drawfillarc (-36 + i, 170, 15, 30, 240, 60, 63)     %neck
	drawfillarc (-60 + i, 130, 35, 40, 0, 180, 82)     %shell
	drawfillarc (-62 + i, 150, 25, 14, 90, 180, 109)     %shell
	drawfillarc (-58 + i, 150, 25, 14, 0, 90, 109)     %shell
	drawfillarc (-32 + i, 132, 5, 16, 0, 90, 108)     %shell
	drawfillarc (-87 + i, 132, 5, 16, 90, 180, 108)     %shell
	drawfillbox (-84 + i, 132, -62 + i, 147, 110)     %shell
	drawfillbox (-35 + i, 132, -58 + i, 147, 110)     %shell
	drawfillarc (-45 + i, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (-75 + i, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (-45 + i, 120, 10, 20, 0, 180, 63)     %leg
	drawfillarc (-75 + i, 120, 10, 20, 0, 180, 63)     %leg
	drawline (-85 + i, 123, -65 + i, 123, 89)     %line on leg
	drawline (-55 + i, 123, -35 + i, 123, 89)     %line on leg

	%snake
	drawfillbox (-96 + i, 15, 4 + i, 103, 67)     %erase
	drawfillarc (-70 + i, 40, 25, 25, 120, 270, 40)     %tail
	drawfillarc (-70 + i, 40, 10, 10, 120, 270, 67)     %tail
	drawfillarc (-11 + i, 70, 25, 25, 120, 240, 40)     %neck
	drawfillarc (-11 + i, 70, 10, 10, 120, 240, 67)     %neck
	drawfillarc (-30 + i, 40, 25, 25, 270, 425, 40)     %neck
	drawfillarc (-30 + i, 40, 10, 10, 270, 425, 67)     %neck
	drawfilloval (-15 + i, 90, 20, 13, 40)     %head
	drawfillbox (-70 + i, 30, -30 + i, 15, 40)     %body
	drawfilloval (-40 + i, 62, 20, 20, 40)
	drawfilloval (-15 + i, 94, 5, 5, white)     %eye
	drawfilloval (-12 + i, 94, 3, 3, black)
	drawline (-70 + i, 30, -65 + i, 15, 42)         %lines on body
	drawline (-60 + i, 30, -55 + i, 15, 42)
	drawline (-50 + i, 30, -45 + i, 15, 42)
	drawline (-40 + i, 30, -35 + i, 15, 42)
	drawarc (3 + i, 88, 8, 3, 180, 270, black)     %mouth
	for j : 1 .. 3
	    snaketailx (j) := snaketailx (j) + 1
	    drawfillpolygon (snaketailx, snaketaily, 3, 40)
	end for
	sandcastle

	%lizard
	drawfillbox (705 - i, 90, 831 - i, 25, 78)     %erase over water
	drawfilloval (770 - i, 30, 60, 5, 14)     %surfboard
	drawfillbox (710 - i, 30, 830 - i, 50, 15)     %surfboard
	drawfilloval (770 - i, 50, 60, 5, 14)     %surfboard
	drawfillbox (730 - i, 70, 745 - i, 80, 46)     %neck
	drawfillbox (785 - i, 53, 780 - i, 63, 130)     %leg
	drawfillbox (760 - i, 53, 755 - i, 63, 130)     %leg
	drawfilloval (770 - i, 75, 30, 15, 45)     %body
	drawfillarc (710 - i, 66, 30, 17, 290, 60, 49)     %beard
	drawfilloval (720 - i, 75, 18, 10, 45)     %head
	drawfilloval (782 - i, 51, 5, 2, 145)     %foot
	drawfilloval (757 - i, 51, 5, 2, 145)     %foot
	drawfilloval (720 - i, 78, 2, 2, black)     %eye
	drawarc (707 - i, 71, 7, 4, 280, 10, red)     %mouth
	drawline (715 - i, 64, 723 - i, 53, 191)     %lines on beard
	drawline (720 - i, 64, 728 - i, 55, 191)
	drawline (725 - i, 64, 733 - i, 57, 191)
	drawline (730 - i, 66, 736 - i, 60, 191)

	%gecko
	drawfillbox (695 - i, 177, 802 - i, 102, 78)     %erase
	drawfilloval (750 - i, 105, 40, 3, 108)     %surfboard
	drawfillbox (710 - i, 105, 790 - i, 110, 14)     %surfboard
	drawfilloval (750 - i, 110, 40, 3, 108)     %surfboard
	drawfillbox (750 - i, 110, 740 - i, 130, 187)     %leg
	drawfillbox (730 - i, 110, 720 - i, 130, 187)     %leg
	drawfillbox (720 - i, 135, 710 - i, 140, 186)     %neck
	drawfillarc (720 - i, 160, 12, 17, 0, 180, 41)     %head section behind eyes
	drawfillarc (706 - i, 160, 12, 17, 0, 180, 41)     %head section behind eyes
	drawfilloval (735 - i, 129, 35, 10, 42)     %body
	drawfilloval (715 - i, 155, 25, 15, 42)     %head
	drawfilloval (721 - i, 168, 6, 6, white)     %eye
	drawfilloval (705 - i, 168, 6, 6, white)     %eye
	drawfilloval (721 - i, 165, 4, 4, black)     %eye
	drawfilloval (705 - i, 165, 4, 4, black)     %eye
	drawarc (715 - i, 154, 10, 4, 0, 180, 193)     %nose
	drawdot (718 - i, 154, 193)     %nostril
	drawdot (712 - i, 154, 193)     %nostril
	drawline (710 - i, 148, 720 - i, 148, red)     %mouth
	for j : 1 .. 3
	    geckotailx (j) := geckotailx (j) - 1
	    drawfillpolygon (geckotailx, geckotaily, 3, 42)
	end for

	%crocodile
	drawfillbox (-104 + i, 85, -331 + i, 146, 67)     %erase
	drawfillbox (-213 + i, 98, -228 + i, 85, 145)     %legs
	drawfillbox (-252 + i, 98, -267 + i, 85, 145)     %legs
	drawfilloval (-240 + i, 115, 50, 23, 143)     %body
	drawfilloval (-240 + i, 102, 36, 10, 45)     %belly
	drawline (-240 + i, 112, -240 + i, 92, 190)     %stripes on belly
	drawline (-230 + i, 111, -230 + i, 93, 190)
	drawline (-250 + i, 111, -250 + i, 93, 190)
	drawline (-260 + i, 110, -260 + i, 93, 190)
	drawline (-220 + i, 110, -220 + i, 93, 190)
	drawarc (-194 + i, 130, 6, 16, 0, 180, black)     %eyes
	drawarc (-184 + i, 130, 6, 16, 0, 180, black)     %eyes
	drawfillbox (-199 + i, 130, -110 + i, 117, 143)     %top part of mouth
	drawfillbox (-199 + i, 112, -120 + i, 102, 143)     %bottom part of mouth
	drawfillbox (-199 + i, 117, -170 + i, 112, 143)     %middle part of mouth
	drawfillarc (-194 + i, 130, 5, 15, 0, 180, white)     %eye
	drawfillarc (-184 + i, 130, 5, 15, 0, 180, white)     %eye
	drawfilloval (-194 + i, 133, 2, 2, black)     %eye
	drawfilloval (-184 + i, 133, 2, 2, black)     %eye
	drawfilloval (-110 + i, 124, 6, 8, 145)     %round end of mouth top
	drawfilloval (-117 + i, 107, 4, 6, 145)     %round end of mouth bottom
	for j : 1 .. 3
	    crocodiletailx (j) := crocodiletailx (j) + 1
	    teethx (j) := teethx (j) + 1
	    teethx1 (j) := teethx1 (j) + 1
	    drawfillpolygon (crocodiletailx, crocodiletaily, 3, 143)
	    drawfillpolygon (teethx, teethy, 3, white)
	    drawfillpolygon (teethx1, teethy1, 3, white)
	end for

	%chameleon
	drawfilloval (380, 200, 35, 15, 79 - i div 9)     %body
	drawfillarc (360, 200, 30, 30, 90, 180, 79 - i div 9)     %head
	drawfilloval (347, 213, 8, 8, 77 - i div 9)     %circle around eye
	drawfilloval (345, 212, 6, 6, white)     %eye
	drawfilloval (345, 212, 4, 4, green)     %eye
	drawfilloval (344, 212, 2, 2, black)     %eye
	drawfillbox (360, 195, 365, 177, 79 - i div 9)     %legs
	drawfillbox (395, 195, 400, 177, 79 - i div 9)
	drawline (360, 227, 363, 224, green)     %lines on back of head
	drawline (360, 225, 363, 222, green)
	drawline (360, 223, 363, 220, green)
	drawline (360, 221, 363, 218, green)
	drawline (360, 219, 363, 216, green)
	drawline (360, 217, 363, 214, green)

	drawfillpolygon (xchameleontail, ychameleontail, 3, 79 - i div 9)     %tail
	drawarc (334, 203, 4, 3, 270, 0, black)     %mouth
	for j : 1 .. 6
	    drawarc (327, 200, j, j, 230 + j * 70, 300 + j * 70, 61)     %tongue
	end for
	View.Update
	delay (30)
    end for
end animalsenter

procedure snakeeyesclosed
    View.Update
    delay (1000)
    for i : 0 .. 5
	drawfillarc (275, 99 - i, i, i, 0, 180, 40)     %top eyelid
	drawfillarc (275, 89 + i, i, i, 180, 0, 40)     %bottom eyelid
	View.Update
	delay (40)
    end for
end snakeeyesclosed

process turtlehides
    for i : 0 .. 40
	drawfillbox (298 - i, 201 - i, 261 - i, 181 - i, 67)     %erase over sand
	drawfillbox (300, 201, 242, 181, 101)     %erase over sky
	drawfillbox (290 - i, 200 - i, 260 - i, 180 - i, 63)     %head
	drawfillarc (290 - i, 185 - i, 5, 5, 180, 270, red)
	drawfilloval (280 - i, 193 - i, 4, 2, white)     %eye
	drawfilloval (282 - i, 193 - i, 2, 2, black)     %eye
	drawfillarc (254 - i, 170 - i div 2, 15 - i div 4, 30 - i div 2, 240, 60, 63)     %neck
	drawfillarc (230, 130, 35, 40, 0, 180, 82)     %shell
	drawfillarc (228, 150, 25, 14, 90, 180, 109)     %shell
	drawfillarc (232, 150, 25, 14, 0, 90, 109)     %shell
	drawfillarc (258, 132, 5, 16, 0, 90, 108)     %shell
	drawfillarc (203, 132, 5, 16, 90, 180, 108)     %shell
	drawfillbox (206, 132, 228, 147, 110)     %shell
	drawfillbox (255, 132, 232, 147, 110)     %shell
	drawfillarc (245, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (215, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (245, 120, 11, 20, 0, 180, 67)     %leg
	drawfillarc (215, 120, 11, 20, 0, 180, 67)     %leg
	View.Update
	delay (30)
    end for

end turtlehides
procedure geckohides
    var geckotailx : array 1 .. 3 of int := init (470, 470, 510)
    var geckotaily : array 1 .. 3 of int := init (135, 124, 129)
    for i : 0 .. 10     %gecko jumps up
	drawfillbox (400, 170 + i, 512, 102 + i, 78)     %erase over water
	drawfillbox (460, 110 + i, 450, 130 + i, 187)     %leg
	drawfillbox (440, 110 + i, 430, 130 + i, 187)     %leg
	drawfillbox (430, 135 + i, 420, 140 + i, 186)     %neck
	drawfillarc (430, 160 + i, 12, 17, 0, 180, 41)     %top of head behind eyes
	drawfillarc (416, 160 + i, 12, 17, 0, 180, 41)     %top of ehad behind eyes
	drawfilloval (445, 129 + i, 35, 10, 42)     %body
	drawfilloval (425, 155 + i, 25, 15, 42)     %head
	drawfilloval (431, 168 + i, 6, 6, white)     %eye
	drawfilloval (415, 168 + i, 6, 6, white)     %eye
	drawfilloval (431, 165 + i, 4, 4, black)     %eye
	drawfilloval (415, 165 + i, 4, 4, black)     %eye
	drawarc (425, 154 + i, 10, 4, 0, 180, 193)     %nose
	drawdot (428, 154 + i, 193)     %nostril
	drawdot (422, 154 + i, 193)     %nostril
	drawline (420, 148 + i, 430, 148 + i, red)     %mouth
	for j : 1 .. 3
	    geckotaily (j) := geckotaily (j) + 1
	    drawfillpolygon (geckotailx, geckotaily, 3, 42)
	end for
	View.Update
	delay (10)
    end for
    for i : 0 .. 25     %gecko jumps down
	drawfillbox (400, 188 - i, 512, 120 - i, 78)     %erase over water
	drawfillbox (400, 181, 512, 188, 101)     %erase over sky
	drawfillbox (460, 120 - i, 450, 140 - i, 187)     %legs
	drawfillbox (440, 120 - i, 430, 140 - i, 187)     %legs
	drawfillbox (430, 145 - i, 420, 150 - i, 186)     %neck
	drawfillarc (430, 170 - i, 12, 17, 0, 180, 41)     %top of head behind eyes
	drawfillarc (416, 170 - i, 12, 17, 0, 180, 41)     %top of head behind eyes
	drawfilloval (445, 139 - i, 35, 10, 42)     %body
	drawfilloval (425, 165 - i, 25, 15, 42)     %head
	drawfilloval (431, 178 - i, 6, 6, white)     %eye
	drawfilloval (415, 178 - i, 6, 6, white)     %eye
	drawfilloval (431, 175 - i, 4, 4, black)     %eye
	drawfilloval (415, 175 - i, 4, 4, black)     %eye
	drawarc (425, 164 - i, 10, 4, 0, 180, 193)     %nose
	drawdot (428, 164 - i, 193)     %nostril
	drawdot (422, 164 - i, 193)     %nostril
	drawline (420, 158 - i, 430, 158 - i, red)     %mouth
	for j : 1 .. 3
	    geckotaily (j) := geckotaily (j) - 1
	    drawfillpolygon (geckotailx, geckotaily, 3, 42)
	end for
	drawfillbox (400, 90, 510, 140, 78)     %water covering gecko's body
	drawfilloval (460, 105, 40, 3, 108)     %surfboard
	drawfillbox (420, 105, 500, 110, 14)     %surfboard
	drawfilloval (460, 110, 40, 3, 108)     %surfboard
	View.Update
	delay (30)
    end for
end geckohides
procedure lizardhides
    for i : 1 .. 15     %lizard jumps up
	drawfillbox (412, 90 + i, 541, 25 + i, 78)     %erase over water
	drawfillbox (440, 70 + i, 455, 80 + i, 46)     %neck
	drawfillbox (495, 53 + i, 490, 63 + i, 130)     %leg
	drawfillbox (470, 53 + i, 465, 63 + i, 130)     %leg
	drawfilloval (480, 75 + i, 30, 15, 45)     %body
	drawfillarc (420, 66 + i, 30, 17, 290, 60, 49)     %beard
	drawfilloval (430, 75 + i, 18, 10, 45)     %head
	drawfilloval (492, 51 + i, 5, 2, 145)     %foot
	drawfilloval (467, 51 + i, 5, 2, 145)     %foot
	drawfilloval (430, 78 + i, 2, 2, black)     %eye
	drawarc (417, 71 + i, 7, 4, 280, 10, red)     %arc
	drawline (425, 64 + i, 433, 53 + i, 191)     %lines on beard
	drawline (430, 64 + i, 438, 55 + i, 191)
	drawline (435, 64 + i, 443, 57 + i, 191)
	drawline (440, 66 + i, 446, 60 + i, 191)
	drawfilloval (480, 30, 60, 5, 14)     %surfboard
	drawfillbox (420, 30, 540, 50, 15)
	drawfilloval (480, 50, 60, 5, 14)
	drawfilloval (460, 105, 40, 3, 108)     %surfboard #2
	drawfillbox (420, 105, 500, 110, 14)
	drawfilloval (460, 110, 40, 3, 108)
	View.Update
	delay (20)
    end for
    for i : 1 .. 60     %lizard jumps down
	drawfillbox (412, 106 - i, 541, 40 - i, 78)     %erase
	drawfillbox (440, 85 - i, 455, 95 - i, 46)     %neck
	drawfillbox (495, 68 - i, 490, 78 - i, 130)     %leg
	drawfillbox (470, 68 - i, 465, 78 - i, 130)     %leg
	drawfilloval (480, 90 - i, 30, 15, 45)     %body
	drawfillarc (420, 81 - i, 30, 17, 290, 60, 49)     %beard
	drawfilloval (430, 90 - i, 18, 10, 45)     %head
	drawfilloval (492, 66 - i, 5, 2, 145)     %foot
	drawfilloval (467, 66 - i, 5, 2, 145)     %foot
	drawfilloval (430, 93 - i, 2, 2, black)     %eye
	drawarc (417, 86 - i, 7, 4, 280, 10, red)     %mouth
	drawline (425, 79 - i, 433, 68 - i, 191)     %lines on beard
	drawline (430, 79 - i, 438, 70 - i, 191)
	drawline (435, 79 - i, 443, 72 - i, 191)
	drawline (440, 81 - i, 446, 75 - i, 191)
	drawfillbox (410, 30, 540, 4, 78)     %water covering lizard
	drawfilloval (480, 30, 60, 5, 14)     %surfboard
	drawfillbox (420, 30, 540, 50, 15)
	drawfilloval (480, 50, 60, 5, 14)
	drawfilloval (460, 105, 40, 3, 108)     %surfboard #2
	drawfillbox (420, 105, 500, 110, 14)
	drawfilloval (460, 110, 40, 3, 108)
	View.Update
	delay (30)
    end for
end lizardhides

process crocodilehides
    var crocodiletailx : array 1 .. 3 of int := init (12, 12, -40)
    var crocodiletaily : array 1 .. 3 of int := init (130, 100, 95)
    var teethx : array 1 .. 3 of int := init (175, 165, 170)
    var teethy : array 1 .. 3 of int := init (118, 118, 113)
    var teethx1 : array 1 .. 3 of int := init (140, 150, 145)
    var teethy1 : array 1 .. 3 of int := init (118, 118, 113)
    for i : 1 .. 60     % crocodile moves down to hide behind sand castle
	drawfillbox (186, 85 - i, -41, 147 - i, 67)     %erase over sand
	drawfillbox (77, 98 - i, 62, 85 - i, 145)     %leg
	drawfillbox (38, 98 - i, 23, 85 - i, 145)     %leg
	drawfilloval (50, 115 - i, 50, 23, 143)     %body
	drawfilloval (50, 102 - i, 36, 10, 45)     %belly
	drawline (50, 112 - i, 50, 92 - i, 190)     %lines on belly
	drawline (60, 111 - i, 60, 93 - i, 190)
	drawline (40, 111 - i, 40, 93 - i, 190)
	drawline (30, 110 - i, 30, 93 - i, 190)
	drawline (70, 110 - i, 70, 93 - i, 190)
	drawarc (96, 130 - i, 6, 16, 0, 180, black)     %eye
	drawarc (106, 130 - i, 6, 16, 0, 180, black)     %eye
	drawfillbox (91, 130 - i, 180, 117 - i, 143)     %top part of mouth
	drawfillbox (91, 112 - i, 170, 102 - i, 143)     %bottom part of mouth
	drawfillbox (91, 117 - i, 120, 112 - i, 143)     %middle part of mouth
	drawfillarc (96, 130 - i, 5, 15, 0, 180, white)     %eye
	drawfillarc (106, 130 - i, 5, 15, 0, 180, white)     %eye
	drawfilloval (96, 133 - i, 2, 2, black)     %eye
	drawfilloval (106, 133 - i, 2, 2, black)     %eye
	drawfilloval (180, 124 - i, 6, 8, 145)     %round end of mouth top
	drawfilloval (173, 107 - i, 4, 6, 145)     %round end of mouth bottom
	for j : 1 .. 3
	    crocodiletaily (j) := crocodiletaily (j) - 1
	    teethy (j) := teethy (j) - 1
	    teethy1 (j) := teethy1 (j) - 1
	    drawfillpolygon (crocodiletailx, crocodiletaily, 3, 143)
	    drawfillpolygon (teethx, teethy, 3, white)
	    drawfillpolygon (teethx1, teethy1, 3, white)
	    sandcastle
	    View.Update
	    delay (30)
	end for
    end for
end crocodilehides

procedure chameleonhides
    var xchameleontail : array 1 .. 3 of int := init (400, 400, 450)
    var ychameleontail : array 1 .. 3 of int := init (213, 190, 185)
    for i : 1 .. 200
	drawfillbox (325 - i, 177, 452 - i, 230, 101)     %erase over sky
	drawfillbox (325 - i, 177, 452 - i, 180, 67)     %erase over sand
	drawfillbox (395, 177, 452, 180, 78)     %erase over water
	drawfilloval (380 - i, 200, 35, 15, 47)     %body
	drawfillarc (360 - i, 200, 30, 30, 90, 180, 47)     %head
	drawfilloval (347 - i, 213, 8, 8, 45)     %circle around eye
	drawfilloval (345 - i, 212, 6, 6, white)     %eye
	drawfilloval (345 - i, 212, 4, 4, green)     %eye
	drawfilloval (344 - i, 212, 2, 2, black)     %eye
	drawfillbox (360 - i, 195, 365 - i, 177, 47)     %legs
	drawfillbox (395 - i, 195, 400 - i, 177, 47)
	drawline (360 - i, 227, 363 - i, 224, green)     %lines on back of head
	drawline (360 - i, 225, 363 - i, 222, green)
	drawline (360 - i, 223, 363 - i, 220, green)
	drawline (360 - i, 221, 363 - i, 218, green)
	drawline (360 - i, 219, 363 - i, 216, green)
	drawline (360 - i, 217, 363 - i, 214, green)
	for j : 1 .. 3
	    xchameleontail (j) := xchameleontail (j) - 1
	    drawfillpolygon (xchameleontail, ychameleontail, 3, 47)     %tail
	end for
	drawarc (334 - i, 203, 4, 3, 270, 0, black)     %mouth
	for j : 1 .. 6
	    drawarc (327 - i, 200, j, j, 230 + j * 70, 300 + j * 70, 61)     %tongue
	end for
	View.Update
	delay (30)
    end for
    %clour change
    drawfilloval (180, 200, 35, 15, 102)         %body
    drawfillarc (160, 200, 30, 30, 90, 180, 102)     %head
    drawfilloval (147, 213, 8, 8, 102)     %circle around eye
    drawfillbox (160, 195, 165, 177, 102)     %legs
    drawfillbox (195, 195, 200, 177, 102)
    drawfilloval (145, 212, 6, 6, white)     %eye
    drawfilloval (145, 212, 4, 4, green)     %eye
    drawfilloval (144, 212, 2, 2, black)     %eye
    drawarc (134, 203, 4, 3, 270, 0, black)     %mouth
    drawfillpolygon (xchameleontail, ychameleontail, 3, 102)
end chameleonhides

procedure lizardfound
    for i : 1 .. 2
	Draw.Text ("Ready or not, here I come!", 220, 110, myfont, black)
	View.Update
	delay (1500)
    end for
    for decreasing i : 5 .. 0     %snake eye opens
	drawfilloval (275, 94, 5, 5, white)     %eye
	drawfilloval (278, 94, 3, 3, black)
	drawfillarc (275, 99 - i, i, i, 0, 180, 40)     %top eyelid
	drawfillarc (275, 89 + i, i, i, 180, 0, 40)     %bottom eyelid
	View.Update
	delay (40)
    end for
    drawfillbox (220, 107, 373, 120, 67)     %erase text
    var snaketailx : array 1 .. 3 of int := init (215, 208, 220)
    var snaketaily : array 1 .. 3 of int := init (51, 62, 70)
    for i : 1 .. 50     %snake moves towards lizard
	drawfillbox (194 + i, 15, 295 + i, 103, 67)
	drawfillarc (220 + i, 40, 25, 25, 120, 270, 40)     %tail
	drawfillarc (220 + i, 40, 10, 10, 120, 270, 67)     %tail
	drawfillarc (279 + i, 70, 25, 25, 120, 240, 40)     %neck
	drawfillarc (279 + i, 70, 10, 10, 120, 240, 67)     %neck
	drawfillarc (260 + i, 40, 25, 25, 270, 425, 40)     %neck
	drawfillarc (260 + i, 40, 10, 10, 270, 425, 67)     %neck
	drawfilloval (275 + i, 90, 20, 13, 40)     %head
	drawfillbox (220 + i, 30, 260 + i, 15, 40)     %body
	drawfilloval (250 + i, 62, 20, 20, 40)
	drawfilloval (275 + i, 94, 5, 5, white)     %eye
	drawfilloval (278 + i, 94, 3, 3, black)
	drawline (220 + i, 30, 225 + i, 15, 42)     %lines on body
	drawline (230 + i, 30, 235 + i, 15, 42)
	drawline (240 + i, 30, 245 + i, 15, 42)
	drawline (250 + i, 30, 255 + i, 15, 42)
	drawarc (293 + i, 88, 8, 3, 180, 270, black)     %mouth
	for j : 1 .. 3
	    snaketailx (j) := snaketailx (j) + 1
	    drawfillpolygon (snaketailx, snaketaily, 3, 40)
	end for
	View.Update
	delay (30)
    end for
    for i : 1 .. 2     % snake looks at lizard
	drawfilloval (326, 94, 5, 5, white)     %eye
	drawfilloval (328 - i div 2, 94 - i, 3, 3, black)
	View.Update
	delay (30)
    end for
    for decreasing i : 60 .. 20     % lizard moves up
	drawfillbox (412, 106 - i, 541, 40 - i, 78)     %erase
	drawfillbox (440, 85 - i, 455, 95 - i, 46)     %neck
	drawfillbox (495, 68 - i, 490, 78 - i, 130)     %legs
	drawfillbox (470, 68 - i, 465, 78 - i, 130)
	drawfilloval (480, 90 - i, 30, 15, 45)     %body
	drawfillarc (420, 81 - i, 30, 17, 290, 60, 49)     %beard
	drawfilloval (430, 90 - i, 18, 10, 45)     %head
	drawfilloval (492, 66 - i, 5, 2, 145)     %feet
	drawfilloval (467, 66 - i, 5, 2, 145)
	drawfilloval (430, 93 - i, 2, 2, black)     %eye
	drawarc (417, 86 - i, 7, 4, 280, 10, red)     %mouth
	drawline (425, 79 - i, 433, 68 - i, 191)     %lines on beard
	drawline (430, 79 - i, 438, 70 - i, 191)
	drawline (435, 79 - i, 443, 72 - i, 191)
	drawline (440, 81 - i, 446, 75 - i, 191)
	drawfillbox (420, 4 + i, 540, 30, 78)     %covers legs
	drawfilloval (480, 30, 60, 5, 14)     %surfboard
	drawfillbox (420, 30, 540, 50, 15)
	drawfilloval (480, 50, 60, 5, 14)
	View.Update
	delay (30)
    end for
end lizardfound
procedure geckofound
    for i : 1 .. 4     %snake looks at gecko
	drawfilloval (326, 94, 5, 5, white)     %eye
	drawfilloval (327, 92 + i, 3, 3, black)
	View.Update
	delay (30)
    end for
    for i : 0 .. 4     %gecko moves up
	drawfillbox (400, 178 + i, 512, 102 + i, 78)     %erase over water
	drawfillbox (400, 181, 512, 190, 101)     %erase over sky
	drawfillbox (460, 110 + i, 450, 130 + i, 187)     %legs
	drawfillbox (440, 110 + i, 430, 130 + i, 187)
	drawfillbox (430, 135 + i, 420, 140 + i, 186)     %neck
	drawfillarc (430, 160 + i, 12, 17, 0, 180, 41)     %top of head behind eyes
	drawfillarc (416, 160 + i, 12, 17, 0, 180, 41)
	drawfilloval (445, 129 + i, 35, 10, 42)     %body
	drawfilloval (425, 155 + i, 25, 15, 42)     %head
	drawfilloval (431, 168 + i, 6, 6, white)     %eyes
	drawfilloval (415, 168 + i, 6, 6, white)
	drawfilloval (431, 165 + i, 4, 4, black)
	drawfilloval (415, 165 + i, 4, 4, black)
	drawarc (425, 154 + i, 10, 4, 0, 180, 193)     %nose
	drawdot (428, 154 + i, 193)     %nostrils
	drawdot (422, 154 + i, 193)
	drawline (420, 148 + i, 430, 148 + i, red)     %mouth
	for j : 1 .. 3
	    geckotaily (j) := geckotaily (j) + 1
	    drawfillpolygon (geckotailx, geckotaily, 3, 42)
	end for
	drawfilloval (460, 105, 40, 3, 108)     %surfboard
	drawfillbox (420, 105, 500, 110, 14)
	drawfilloval (460, 110, 40, 3, 108)
	View.Update
	delay (100)
    end for
end geckofound
procedure turtlefound
    for i : 1 .. 2     % snake looks at turtle
	drawfilloval (326, 94, 5, 5, white)     %eye
	drawfilloval (327 - i, 96, 3, 3, black)
	View.Update
	delay (30)
    end for
    for decreasing i : 40 .. 0     %turtle comes out of shell
	drawfillbox (289 - i, 199 - i, 259 - i, 179 - i, 67)     %erase over sand
	drawfillbox (289, 201, 239, 181, 101)     %erase over sky
	drawfillarc (254, 170 - i div 2, 15 - i div 4, 30 - i div 2, 240, 60, 63)     %neck
	drawfillbox (290 - i, 200 - i, 260 - i, 180 - i, 63)     %head
	drawfillarc (290 - i, 185 - i, 5, 5, 180, 270, red)
	drawfilloval (280 - i, 193 - i, 4, 2, white)     %eye
	drawfilloval (282 - i, 193 - i, 2, 2, black)     %eye
	drawfillarc (230, 130, 35, 40, 0, 180, 82)     %shell
	drawfillarc (228, 150, 25, 14, 90, 180, 109)     %shell
	drawfillarc (232, 150, 25, 14, 0, 90, 109)     %shell
	drawfillarc (258, 132, 5, 16, 0, 90, 108)     %shell
	drawfillarc (203, 132, 5, 16, 90, 180, 108)     %shell
	drawfillbox (206, 132, 228, 147, 110)     %shell
	drawfillbox (255, 132, 232, 147, 110)     %shell
	drawfillarc (245, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (215, 130, 10, 12, 0, 180, 82)     %shell
	drawfillarc (245, 120, 10, 20, 0, 180, 63)         %leg
	drawfillarc (215, 120, 10, 20, 0, 180, 63)     %leg
	drawline (205, 123, 225, 123, 89)     %line on leg
	drawline (235, 123, 255, 123, 89)     %line on leg
	View.Update
	delay (30)
    end for
end turtlefound
procedure crocodilefound
    for i : 1 .. 2     %snake looks at crocodile
	drawfilloval (326, 94, 5, 5, white)     %eye
	drawfilloval (325 - i div 2, 96 - i, 3, 3, black)
	View.Update
	delay (30)
    end for
    var crocodiletailx : array 1 .. 3 of int := init (12, 12, -40)
    var crocodiletaily : array 1 .. 3 of int := init (70, 40, 35)
    var teethx : array 1 .. 3 of int := init (175, 165, 170)
    var teethy : array 1 .. 3 of int := init (58, 58, 53)
    var teethx1 : array 1 .. 3 of int := init (140, 150, 145)
    var teethy1 : array 1 .. 3 of int := init (58, 58, 53)
    for decreasing i : 60 .. 1     %crocodile moves up
	drawfillbox (186, 84 - i, -41, 146 - i, 67)     %erase
	drawfillbox (77, 98 - i, 62, 85 - i, 145)     %legs
	drawfillbox (38, 98 - i, 23, 85 - i, 145)
	drawfilloval (50, 115 - i, 50, 23, 143)     %body
	drawfilloval (50, 102 - i, 36, 10, 45)     %belly
	drawline (50, 112 - i, 50, 92 - i, 190)     %lines on belly
	drawline (60, 111 - i, 60, 93 - i, 190)
	drawline (40, 111 - i, 40, 93 - i, 190)
	drawline (30, 110 - i, 30, 93 - i, 190)
	drawline (70, 110 - i, 70, 93 - i, 190)
	drawarc (96, 130 - i, 6, 16, 0, 180, black)     %eyes
	drawarc (106, 130 - i, 6, 16, 0, 180, black)
	drawfillbox (91, 130 - i, 180, 117 - i, 143)     %top part of mouth
	drawfillbox (91, 112 - i, 170, 102 - i, 143)     %bottom part of mouth
	drawfillbox (91, 117 - i, 120, 112 - i, 143)     %middle part of mouth
	drawfillarc (96, 130 - i, 5, 15, 0, 180, white)     %eyes
	drawfillarc (106, 130 - i, 5, 15, 0, 180, white)
	drawfilloval (96, 133 - i, 2, 2, black)
	drawfilloval (106, 133 - i, 2, 2, black)
	drawfilloval (180, 124 - i, 6, 8, 145)     %round end of mouth top
	drawfilloval (173, 107 - i, 4, 6, 145)     %round end of mouth bottom
	for j : 1 .. 3
	    crocodiletaily (j) := crocodiletaily (j) + 1
	    teethy (j) := teethy (j) + 1
	    teethy1 (j) := teethy1 (j) + 1
	    drawfillpolygon (crocodiletailx, crocodiletaily, 3, 143)
	    drawfillpolygon (teethx, teethy, 3, white)
	    drawfillpolygon (teethx1, teethy1, 3, white)
	    sandcastle
	    View.Update
	    delay (30)
	end for
    end for
end crocodilefound
process scarymusic
    play ("<<2b2c1f")
end scarymusic
procedure whereischameleon
    fork scarymusic
    for i : 1 .. 5
	drawarc (343, 88, 8, 3, 180, 270, 40)
	drawfilloval (338, 89, 3, 3, 87)
	Draw.Text ("But... where is Cammi the chameleon?", 320, 200, myfont, black)
	View.Update
	delay (500)
    end for
    for i : 1 .. 2
	Draw.Text ("?", 20 + i * 50, 320 + i ** 3, myfont, black)
	Draw.Text ("?", 500 + i * 50, 240 + i ** 3, myfont, black)
	View.Update
	delay (200)
    end for
    for i : 1 .. 3
	Draw.Text ("?", 40 + i * 50, 270 + i ** 3, myfont, black)
	Draw.Text ("?", 380 + i * 50, 365 + i ** 3, myfont, black)
	Draw.Text ("?", 462 + i * 50, 450 + i ** 3, myfont, black)
	Draw.Text ("?", 170 + i * 50, 257 + i ** 3, myfont, black)
	View.Update
	delay (300)
    end for
    var xchameleontail : array 1 .. 3 of int := init (200, 200, 250)
    var ychameleontail : array 1 .. 3 of int := init (213, 190, 185)
    for i : 0 .. 225
	drawline (0, 240 + i, 640, 240 + i, 101)     %erase question marks
	drawbox (320, 198, 320 + i, 220, 101)
	for j : 0 .. 50
	    drawoval (580, 340, j, j, 14)     %sun
	end for
	%umbrella
	drawline (20, 180, 40, 250, black)
	for j : 1 .. 100
	    drawarc (40, 250, j, 100 div 3, 0, 180, 134)
	end for
    end for
    drawfilloval (180, 200, 35, 15, 47)         %body
    drawfillarc (160, 200, 30, 30, 90, 180, 47)     %head
    drawfilloval (147, 213, 8, 8, 45)     %circle around eye
    drawfillbox (160, 195, 165, 177, 47)     %legs
    drawfillbox (195, 195, 200, 177, 47)
    drawfilloval (145, 212, 6, 6, white)     %eye
    drawfilloval (145, 212, 4, 4, green)     %eye
    drawfilloval (144, 212, 2, 2, black)     %eye
    drawarc (134, 203, 4, 3, 270, 0, black)     %mouth
    for j : 1 .. 3
	xchameleontail (j) := xchameleontail (j) - 1
	drawfillpolygon (xchameleontail, ychameleontail, 3, 47)     %tail
    end for
    Draw.Text ("Don't worry, I'm here!", 130, 230, myfont, black)
    for i : 1 .. 6     % eyes move to look at chameleon
	drawfilloval (338, 89, 3, 3, 40)     %snake mouth changes
	drawarc (343, 88, 8, 3, 180, 270, black)
	drawfilloval (326, 94, 5, 5, white)     %snake
	drawfilloval (327 - i div 3, 96 + i div 6, 3, 3, black)     %snake
	drawfillarc (96, 130, 5, 15, 0, 180, white)     %crocodile
	drawfillarc (106, 130, 5, 15, 0, 180, white)
	drawfilloval (96 + i div 6, 133 + i, 2, 2, black)
	drawfilloval (106 + i div 6, 133 + i, 2, 2, black)
	View.Update
	delay (400)
    end for
    for i : 1 .. 3
	Draw.Text ("No way you're not seeking next time we play.", 350, 204, myfont, black)
	drawfilloval (431, 172, 6, 6, white)
	drawfilloval (415, 172, 6, 6, white)
	drawfilloval (431 - i, 169 + i, 4, 4, black)
	drawfilloval (415 - i, 169 + i, 4, 4, black)
	View.Update
	delay (500)
    end for
    play (">>4b4a8b1g4p4b4a8b1g8p4g4a4g8p4b4a4g")
    View.Update
    delay (3000)
end whereischameleon
procedure ending
    for i : 0 .. 320
	drawline (i, 0, i, 400, red)
	drawline (640 - i, 0, 640 - i, 400, red)
	View.Update
	delay (5)
    end for
    Draw.Text ("The End", 240, 250, myfontend, white)
    Draw.Text ("By: Maria Yampolsky", 260, 200, myfont, white)
end ending
%MainCode
intro
backgroundscene1
snakeenters
catchpart1
catchpart2
crocodile
fork music
leavingscene1
backgroundscene2
animalsenter
snakeeyesclosed
fork turtlehides
geckohides
fork crocodilehides
lizardhides
chameleonhides
lizardfound
geckofound
turtlefound
crocodilefound
whereischameleon
ending









