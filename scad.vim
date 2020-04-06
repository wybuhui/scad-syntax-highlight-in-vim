"	Vim syntax file
"	Language:	scad 
"	Maintainer:	wy <wybuhui@linuxstory.org>
"	Last Change: 2020 Feb 16

if exists("b:current_syntax")
	finish
endif


syn keyword 	scadStatement	cube sphere cylinder center
syn keyword		scadFunction	module union difference translate scale resize rotate projection
syn keyword		scadFunction	mirror color minkowski hull intersection
syn keyword 	scadFunction	cos sin tan acos asin atan abs ceil exp ln log
syn keyword 	scadFunction	max min pow sqrt round
syn keyword 	scadLabel		echo 
syn keyword		scadConditional	if else 
syn keyword 	scadRepeat		for 
syn keyword		scadInclude		import
syn keyword		scadTodo		TODO 

syn region 		scadComment		start="/\*"		end="\*/"   contains=scadTodo
syn region		scadCommentL	start="//"		end="$"		contains=scadTodo
syn region		scadString		start=+"+		end=+"+		skip=+\\"+


syn match		scadNumber		"\<\d\+\|\.\d" contains=scadFloat
syn match 		scadFloat		display contained "\d\+\.\d*"



hi def link scadCommentL		scadComment
hi def link scadComment			Comment
hi def link scadInclude			Include
hi def link scadStatement		Statement
hi def link	scadNumber			Number
hi def link scadFloat			Float
hi def link scadFunction		Function
hi def link scadTodo			Todo
hi def link scadConditional		Conditional
hi def link scadRepeat			Repeat
hi def link scadLabel			Label
