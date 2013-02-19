# |      - 1 -     |                 |                 |
# |     -- 2 --    |                 |                 |
# |    --- 3 ---   |                 |                 |
# |   ---- 4 ----  |                 |                 |
# _________A________________B_________________C_________

#1 to b, 2 to c, 1 to c.
#top: A to B, A to C, B to C

# |                |                 |                 |
# |                |                 |                 |
# |    --- 3 ---   |                 |      - 1 -      |
# |   ---- 4 ----  |                 |     -- 2 --     |
# _________A________________B_________________C_________

# 3 to b, 1 to a, 2 to b, 1 to b, 4 to c.
# top: A to B, C to A, C to B, A to B, A to C

# |                |                 |                 |
# |                |      - 1 -      |                 |
# |                |     -- 2 --     |                 |
# |                |    --- 3 ---    |   ---- 4 ----   |
# _________A________________B_________________C_________

#1 to C, 2 to A, 1 to A, 3 to C, 1 to B, 2 to C, 1 to C
#top: B to C, B to A, C to A, B to C, A to B, A to C, B to C

# |                |                 |       - 1 -     |
# |                |                 |      -- 2 --    |
# |                |                 |     --- 3 ---   |
# |                |                 |    ---- 4 ----  |
# _________A________________B_________________C_________


$a=[1,2,3,4]
$b=[]
$c=[]

def peg
	puts "Peg A: #{$a}"
	puts "Peg B: #{$b}"
	puts "Peg C: #{$c}"
end

def move_disc(x,y)
	peg
	puts "moving a disc"
	y.unshift x.delete_at(0)
end

move_disc($a,$b)
move_disc($a,$c)
move_disc($b,$c)
move_disc($a,$b)
move_disc($c,$a)
move_disc($c,$b)
move_disc($a,$b)
move_disc($a,$c)
move_disc($b,$c)
move_disc($b,$a)
move_disc($c,$a)
move_disc($b,$c)
move_disc($a,$b)
move_disc($a,$c)
move_disc($b,$c)
peg

