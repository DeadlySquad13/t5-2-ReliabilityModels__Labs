let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <C-X>Þ <Nop>
inoremap <silent> <C-X> <Cmd>lua require("which-key").show("\24", {mode = "i", auto = true})
cnoremap <silent> <C-X>Þ <Nop>
cnoremap <silent> <C-X> <Cmd>lua require("which-key").show("\24", {mode = "c", auto = true})
inoremap <silent> <C-G>Þ <Nop>
inoremap <silent> <C-G> <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent> <C-R><C-R>Þ <Nop>
cnoremap <silent> <C-R><C-O>Þ <Nop>
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent> <Home> ^
inoremap <silent> <C-_> <Cmd>lua require("Comment.api").toggle_current_linewise()
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
cmap <F7> eAppendSome()
imap <silent> <S-Tab> <Plug>(TaboutBack)
inoremap <Plug>(TaboutBackMulti) <Cmd>lua require("tabout").taboutBackMulti()
inoremap <Plug>(TaboutBack) <Cmd>lua require("tabout").taboutBack()
inoremap <Plug>(TaboutMulti) <Cmd>lua require("tabout").taboutMulti()
inoremap <Plug>(Tabout) <Cmd>lua require("tabout").tabout()
cnoremap <expr> <C-R><C-O><C-P> traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr> <C-R><C-O><C-F> traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr> <C-R><C-O><C-A> traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr> <C-R><C-O><C-W> traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-P> traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-F> traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-A> traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-W> traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr> <C-R><C-P> traces#check_b() ? traces#get_pfile() : "\\"
cnoremap <expr> <C-R><C-F> traces#check_b() ? traces#get_cfile() : "\\"
cnoremap <expr> <C-R><C-A> traces#check_b() ? traces#get_cWORD() : "\\"
cnoremap <expr> <C-R><C-W> traces#check_b() ? traces#get_cword() : "\\"
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <C-W> u
inoremap <C-U> u
nnoremap <silent>  <Cmd>lua require"dial.command".select_augend_normal()<Cmd>let &opfunc="dial#operator#increment_normal"g@<Cmd>lua require("dial.command").textobj()
vnoremap <silent>  <Cmd>lua require"dial.command".select_augend_visual()<Cmd>let &opfunc="dial#operator#increment_visual"g@
xnoremap <silent>  <Cmd>STSSelectParentNode
onoremap <silent> 	 n
nnoremap <silent> 	 n
xnoremap <silent> 	 n
xnoremap <silent> <NL> <Cmd>STSSelectNextSiblingNode
xnoremap <silent>  <Cmd>STSSelectPrevSiblingNode
xnoremap <silent>  <Cmd>STSSelectChildNode
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
xnoremap <silent>  3
nnoremap <silent>  3
xmap <nowait>  <Plug>(VM-Find-Subword-Under)
nmap <silent>  <Plug>(YankyCycleForward)
nmap <silent>  <Plug>(YankyCycleBackward)
xnoremap <silent>  3
nnoremap <silent>  3
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent> z <Cmd>wincmd o
nnoremap <silent> m :FocusMaximise
nnoremap s :below new
nnoremap v :vnew
nnoremap <silent>  <Cmd>lua require"dial.command".select_augend_normal()<Cmd>let &opfunc="dial#operator#decrement_normal"g@<Cmd>lua require("dial.command").textobj()
vnoremap <silent>  <Cmd>lua require"dial.command".select_augend_visual()<Cmd>let &opfunc="dial#operator#decrement_visual"g@
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent>  gg <Cmd>Neogit
nnoremap <silent>  ? ?
nnoremap <silent>  / /
nnoremap <silent>  zÞ <Nop>
nnoremap <silent>  za <Cmd>TZAtaraxis
nnoremap <silent>  zm <Cmd>TZMinimalist
nnoremap <silent>  zn <Cmd>TZNarrow
nnoremap <silent>  zf <Cmd>TZFocus
xnoremap <silent>  zÞ <Nop>
xnoremap <silent>  z <Cmd>lua require("which-key").show(" z", {mode = "v", auto = true})
xnoremap <silent>  zn :'<,'>TZNarrow
nnoremap <silent>  iÞ <Nop>
nnoremap <silent>  gc <Cmd>G commit
nnoremap <silent>  ts <Cmd>ASToggle
nnoremap <silent>  fs <Cmd>TSJSplit
nnoremap <silent>  fj <Cmd>TSJJoin
xnoremap <silent>  eÞ <Nop>
xnoremap <silent>  e <Cmd>lua require("which-key").show(" e", {mode = "v", auto = true})
xnoremap <silent>  giÞ <Nop>
xnoremap <silent>  gÞ <Nop>
xnoremap <silent>  g <Cmd>lua require("which-key").show(" g", {mode = "v", auto = true})
xnoremap <silent>  sÞ <Nop>
xnoremap <silent>  s <Cmd>lua require("which-key").show(" s", {mode = "v", auto = true})
xnoremap <silent>  dÞ <Nop>
xnoremap <silent>  d <Cmd>lua require("which-key").show(" d", {mode = "v", auto = true})
nnoremap <silent>  eÞ <Nop>
nnoremap <silent>  hÞ <Nop>
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  ,Þ <Nop>
nnoremap <silent>   Þ <Nop>
nnoremap <silent>  giÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  rÞ <Nop>
nnoremap <silent>  tÞ <Nop>
nnoremap <silent>  dÞ <Nop>
nnoremap <silent>  тÞ <Nop>
nnoremap <silent>  nÞ <Nop>
onoremap <silent>  6 <Cmd>BufferLineGoToBuffer 6
onoremap <silent>  1 <Cmd>BufferLineGoToBuffer 1
onoremap <silent>  2 <Cmd>BufferLineGoToBuffer 2
onoremap <silent>  3 <Cmd>BufferLineGoToBuffer 3
onoremap <silent>  7 <Cmd>BufferLineGoToBuffer 7
onoremap <silent>  8 <Cmd>BufferLineGoToBuffer 8
onoremap <silent>  4 <Cmd>BufferLineGoToBuffer 4
onoremap <silent>  9 <Cmd>BufferLineGoToBuffer 9
onoremap <silent>  5 <Cmd>BufferLineGoToBuffer 5
onoremap <silent>  $ <Cmd>BufferLineGoToBuffer -1
xnoremap <silent>  1 <Cmd>BufferLineGoToBuffer 1
xnoremap <silent>  6 <Cmd>BufferLineGoToBuffer 6
xnoremap <silent>  2 <Cmd>BufferLineGoToBuffer 2
xnoremap <silent>  3 <Cmd>BufferLineGoToBuffer 3
xnoremap <silent>  > <Cmd>lua ___comment_semantically(vim.fn.visualmode())
xnoremap <silent>  f "+y
xnoremap <silent>  < <Cmd>lua ___uncomment_semantically(vim.fn.visualmode())
xnoremap <silent>  x <Cmd>JupyniumExecuteSelectedCells
xnoremap <silent>  p "+p
xnoremap <silent>  c> <Cmd>set operatorfunc=v:lua.___comment_semanticallyg@
xnoremap <silent>  c<< <Cmd>lua ___uncomment_semantically_current_line()
xnoremap <silent>  c< <Cmd>set operatorfunc=v:lua.___uncomment_semanticallyg@
xnoremap <silent>  cD :Neogen
xnoremap <silent>  c>> <Cmd>lua ___comment_semantically_current_line()
xnoremap <silent>  7 <Cmd>BufferLineGoToBuffer 7
xnoremap <silent>  8 <Cmd>BufferLineGoToBuffer 8
xnoremap <silent>  4 <Cmd>BufferLineGoToBuffer 4
xnoremap <silent>  9 <Cmd>BufferLineGoToBuffer 9
xnoremap <silent>  $ <Cmd>BufferLineGoToBuffer -1
xnoremap <silent>  5 <Cmd>BufferLineGoToBuffer 5
nnoremap <silent>  ee <Cmd>ChooseAndEditConfigs
nnoremap <silent>  ev <Cmd>vsplit $MYVIMRC
nnoremap  eh :e =expand("%:h")
nnoremap <silent>  es <Cmd>SnippetsEdit
nnoremap <silent>  eS <Cmd>ChooseSnippetsEdit
nnoremap <silent>  f "+y
nnoremap <silent>   w p
nnoremap <silent>   b <C-6>
nnoremap <silent>   c :<Up>
nnoremap <silent>  x <Cmd>JupyniumExecuteSelectedCells
nnoremap <silent>  bD <Cmd>%bdelete
nnoremap <silent>  bz <Cmd>%bdelete|edit#
nnoremap <silent>  bs <Cmd>BufferLineSortByRelativeDirectory
nnoremap <silent>  bH <Cmd>BufferLineMovePrev
nnoremap <silent>  bl <Cmd>BufferLineCycleNext
nnoremap <silent>  bL <Cmd>BufferLineMoveNext
nnoremap <silent>  bh <Cmd>BufferLineCyclePrev
nnoremap <silent>  bd <Cmd>Bdelete
nnoremap <silent>  bP <Cmd>BufferLineTogglePin
nnoremap <silent>  ,* <Cmd>Inspect
nnoremap <silent>  ,C <Cmd>highlight
nnoremap <silent>  ,h :noh
nnoremap <silent>  : mtO`t
nnoremap <silent>  p "+p
nnoremap <silent>  c> <Cmd>set operatorfunc=v:lua.___comment_semanticallyg@
nnoremap <silent>  c<< <Cmd>lua ___uncomment_semantically_current_line()
nnoremap <silent>  c< <Cmd>set operatorfunc=v:lua.___uncomment_semanticallyg@
nnoremap <silent>  cD :Neogen
nnoremap <silent>  c>> <Cmd>lua ___comment_semantically_current_line()
nnoremap  sp :source $HOME/.config/nvim/lua/plugins.lua:PackerCompile
nnoremap  sV :w<Cmd>source $MYVIMRC
nnoremap  sv :source $MYVIMRC
nnoremap <silent>  sw :w
nnoremap <silent>  sS :LuaSnipSource
nnoremap <silent>  rt :%s;<\w*>\(<\\\w*>\)\?;;g<Left><Left>
nnoremap <silent>  tq :QuickScopeToggle
nnoremap <silent>  tm :FocusMaxOrEqual
nnoremap <silent>  tf :FocusToggle
nnoremap <silent>  . mto`t
nnoremap <silent>  hv K
nnoremap <silent>  hm :Man 
nnoremap <silent>  ne :e ./
nnoremap <silent>  n/ :Neotree
nnoremap <silent>  nF <Cmd>RnvimrToggle
nnoremap <silent>  1 <Cmd>BufferLineGoToBuffer 1
nnoremap <silent>  2 <Cmd>BufferLineGoToBuffer 2
nnoremap <silent>  3 <Cmd>BufferLineGoToBuffer 3
nnoremap <silent>  6 <Cmd>BufferLineGoToBuffer 6
nnoremap <silent>  7 <Cmd>BufferLineGoToBuffer 7
nnoremap <silent>  8 <Cmd>BufferLineGoToBuffer 8
nnoremap <silent>  4 <Cmd>BufferLineGoToBuffer 4
nnoremap <silent>  9 <Cmd>BufferLineGoToBuffer 9
nnoremap <silent>  $ <Cmd>BufferLineGoToBuffer -1
nnoremap <silent>  5 <Cmd>BufferLineGoToBuffer 5
vnoremap  de :!python3 -c 'import sys; from urllib import parse; print(parse.unquote_plus(sys.stdin.read().strip()))'
vnoremap  en :!python3 -c 'import sys; from urllib import parse; print(parse.quote_plus(sys.stdin.read().strip()))'
nmap <silent>  gl <Plug>(Rel)
noremap  gih K
nnoremap  ти <Cmd>Telescope buffers
xnoremap  C <Plug>(comment_toggle_blockwise_visual)
xnoremap  c <Plug>(comment_toggle_linewise_visual)
nnoremap  C <Plug>(comment_toggle_blockwise)
nnoremap  c <Plug>(comment_toggle_linewise)
snoremap <silent>   "_c 
nmap   r <Plug>JupyterRestart
nmap   X <Plug>JupyterExecuteAll
nmap   x <Plug>JupyterExecute
nnoremap <silent>  m m
snoremap <silent> ! "_c!
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
snoremap <silent> " "_c"
snoremap <silent> # "_c#
onoremap <silent> $ L
xnoremap <silent> $ L
nnoremap <silent> $ L
snoremap <silent> $ "_c$
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
snoremap <silent> % "_c%
snoremap <silent> & "_c&
nnoremap & :&&
onoremap <silent> '' ``
onoremap <silent> ' `
xnoremap <silent> '' ``
xnoremap <silent> ' `
nnoremap <silent> ' `
nnoremap <silent> '' ``
snoremap <silent> ' "_c'
snoremap <silent> ( "_c(
snoremap <silent> ) "_c)
snoremap <silent> * "_c*
snoremap <silent> + "_c+
onoremap <silent> , <Cmd>lua require("various-textobjs").restOfParagraph()
xnoremap <silent> , <Cmd>lua require("various-textobjs").restOfParagraph()
snoremap <silent> , "_c,
snoremap <silent> - "_c-
onoremap <silent> . o
xnoremap <silent> . o
nnoremap <silent> . o
snoremap <silent> . "_c.
snoremap <silent> / "_c/
snoremap <silent> 0 "_c0
snoremap <silent> 1 "_c1
snoremap <silent> 2 "_c2
snoremap <silent> 3 "_c3
snoremap <silent> 4 "_c4
snoremap <silent> 5 "_c5
snoremap <silent> 6 "_c6
snoremap <silent> 7 "_c7
snoremap <silent> 8 "_c8
snoremap <silent> 9 "_c9
onoremap <silent> : O
xnoremap <silent> : O
nnoremap <silent> : O
snoremap <silent> : "_c:
snoremap <silent> ; "_c;
vnoremap < <gv
snoremap <silent> = "_c=
nnoremap <silent> >mÞ <Nop>
nnoremap <silent> >zÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
nmap <silent> >zp <Plug>(YankyPutIndentAfterShiftRight)
nmap <silent> >zP <Plug>(YankyPutIndentBeforeShiftRight)
xnoremap <silent> >mÞ <Nop>
xnoremap <silent> >m <Cmd>lua require("which-key").show(">m", {mode = "v", auto = true})
xnoremap <silent> >zÞ <Nop>
xnoremap <silent> >z <Cmd>lua require("which-key").show(">z", {mode = "v", auto = true})
xmap <silent> >zp <Plug>(YankyPutIndentAfterShiftRight)
xmap <silent> >zP <Plug>(YankyPutIndentBeforeShiftRight)
vnoremap > >gv
snoremap <silent> ? "_c?
snoremap <silent> @ "_c@
xnoremap <silent> <expr> @ ':normal! @'.getcharstr().''
snoremap <silent> A "_cA
onoremap <silent> B <Cmd>lua require("various-textobjs").entireBuffer()
xnoremap <silent> B <Cmd>lua require("various-textobjs").entireBuffer()
snoremap <silent> B "_cB
onoremap <silent> C <Cmd>lua require('spider').motion('b')
snoremap <silent> C "_cC
nnoremap <silent> C <Cmd>lua require('spider').motion('b')
xnoremap <silent> C <Cmd>lua require('spider').motion('b')
onoremap <silent> D <Cmd>lua require('spider').motion('e')
snoremap <silent> D "_cD
nnoremap <silent> D <Cmd>lua require('spider').motion('e')
xnoremap <silent> D <Cmd>lua require('spider').motion('e')
onoremap <silent> Ei <Cmd>lua require("various-textobjs").greedyOuterIndentation("outer")
onoremap <silent> Ep ap
xnoremap <silent> Ei <Cmd>lua require("various-textobjs").greedyOuterIndentation("outer")
xnoremap <silent> Ep ap
nnoremap <silent> E A
snoremap <silent> E "_cE
onoremap <silent> F y$
xnoremap <silent> F y$
nnoremap <silent> F y$
snoremap <silent> F "_cF
snoremap <silent> G "_cG
snoremap <silent> H "_cH
nmap <silent> I <Plug>(leap-backward-to)
omap <silent> I <Plug>(leap-backward-to)
xmap <silent> I <Plug>(leap-backward-to)
snoremap <silent> I "_cI
snoremap <silent> J "_cJ
snoremap <silent> K "_cK
onoremap <silent> L "_D
xnoremap <silent> L "_D
nnoremap <silent> L "_D
snoremap <silent> L "_cL
onoremap <silent> M C
xnoremap <silent> M C
nnoremap <silent> M C
snoremap <silent> M "_cM
nnoremap <silent> N D
snoremap <silent> N "_cN
onoremap <silent> O G
xnoremap <silent> O G
nnoremap <silent> O G
snoremap <silent> O "_cO
nmap <silent> P <Plug>(YankyPutBefore)
xmap <silent> P <Plug>(YankyPutBefore)
snoremap <silent> P "_cP
onoremap <silent> Qi <Cmd>lua require("various-textobjs").greedyOuterIndentation("inner")
onoremap <silent> Qp ip
xnoremap <silent> Qi <Cmd>lua require("various-textobjs").greedyOuterIndentation("inner")
xnoremap <silent> Qp ip
nnoremap <silent> Q I
snoremap <silent> Q "_cQ
xnoremap <silent> Q :normal! @=reg_recorded()
snoremap <silent> R "_cR
onoremap <silent> S <Plug>(leap-backward-to)
snoremap <silent> S "_cS
xnoremap <silent> S "_S
xnoremap T <Plug>(nvim-surround-visual-line)
nnoremap T <Plug>(nvim-surround-normal-line)
snoremap <silent> T "_cT
snoremap <silent> U "_cU
snoremap <silent> V "_cV
omap <silent> W <Plug>(smartword-w)
xmap <silent> W <Plug>(smartword-w)
nmap <silent> W <Plug>(smartword-w)
snoremap <silent> W "_cW
onoremap <silent> X <Plug>(leap-backward-till)
snoremap <silent> X "_cX
nnoremap <silent> X "_X
xnoremap <silent> X "_X
onoremap <silent> Y .
xnoremap <silent> Y .
snoremap <silent> Y "_cY
nnoremap <silent> Y .
xmap <silent> Z <Plug>(leap-backward-till)
snoremap <silent> Z "_cZ
nmap <silent> [P <Plug>(YankyGPutBefore)
nmap <silent> [p <Plug>(YankyGPutAfter)
xmap <silent> [p <Plug>(YankyGPutAfter)
xmap <silent> [P <Plug>(YankyGPutBefore)
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
nnoremap [b :call searchpair('\[','','\]','b')
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap [h <Plug>(textobj-hydrogen-p)
xmap [h <Plug>(textobj-hydrogen-p)
nmap [h <Plug>(textobj-hydrogen-p)
snoremap <silent> [ "_c[
xnoremap <silent> \\Þ <Nop>
xnoremap <silent> \\ <Cmd>lua require("which-key").show("\\\\", {mode = "v", auto = true})
nnoremap <silent> \\gÞ <Nop>
nnoremap <silent> \\Þ <Nop>
nnoremap <silent> \Þ <Nop>
nnoremap <silent> \ <Cmd>lua require("which-key").show("\\", {mode = "n", auto = true})
snoremap <silent> \ "_c\\
xmap <nowait> \\c <Plug>(VM-Visual-Cursors)
nmap <nowait> \\gS <Plug>(VM-Reselect-Last)
nmap <nowait> \\/ <Plug>(VM-Start-Regex-Search)
nmap <nowait> \\\ <Plug>(VM-Add-Cursor-At-Pos)
xmap <nowait> \\a <Plug>(VM-Visual-Add)
xmap <nowait> \\f <Plug>(VM-Visual-Find)
xmap <nowait> \\/ <Plug>(VM-Visual-Regex)
xmap <nowait> \\A <Plug>(VM-Visual-All)
nmap <nowait> \\A <Plug>(VM-Select-All)
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
nnoremap ]b :call searchpair('\[','','\]')
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
omap ]h <Plug>(textobj-hydrogen-n)
xmap ]h <Plug>(textobj-hydrogen-n)
nmap ]h <Plug>(textobj-hydrogen-n)
snoremap <silent> ] "_c]
onoremap <silent> ^ H
xnoremap <silent> ^ H
nnoremap <silent> ^ H
snoremap <silent> ^ "_c^
snoremap <silent> _ "_c_
onoremap <silent> ` '
onoremap <silent> `` ''
xnoremap <silent> ` '
xnoremap <silent> `` ''
nnoremap <silent> ` '
nnoremap <silent> `` ''
snoremap <silent> ` "_c`
omap <silent> a <Plug>(smartword-w)
xmap <silent> a <Plug>(smartword-w)
nmap <silent> a <Plug>(smartword-w)
xmap a% <Plug>(MatchitVisualTextObject)
onoremap <silent> aC :call TextObjWordBasedColumn("aW")
onoremap <silent> ac :call TextObjWordBasedColumn("aw")
xnoremap <silent> aC :call TextObjWordBasedColumn("aW")
xnoremap <silent> ac :call TextObjWordBasedColumn("aw")
omap ai <Plug>(textobj-indent-a)
xmap ai <Plug>(textobj-indent-a)
omap aI <Plug>(textobj-indent-same-a)
xmap aI <Plug>(textobj-indent-same-a)
omap ah <Plug>(textobj-hydrogen-a)
xmap ah <Plug>(textobj-hydrogen-a)
omap ar <Plug>(textobj-indentedparagraph-a)
xmap ar <Plug>(textobj-indentedparagraph-a)
snoremap <silent> a "_ca
snoremap <silent> b "_cb
omap <silent> c <Plug>(smartword-b)
nmap cr <Plug>(abolish-coerce-word)
snoremap <silent> c "_cc
nmap <silent> c <Plug>(smartword-b)
xmap <silent> c <Plug>(smartword-b)
omap <silent> d <Plug>(smartword-e)
snoremap <silent> d "_cd
nmap <silent> d <Plug>(smartword-e)
xmap <silent> d <Plug>(smartword-e)
omap <silent> ei <Plug>(textobj-indent-same-a)
onoremap <silent> ea <Cmd>lua require("various-textobjs").subword("outer")
onoremap <silent> ek <Cmd>lua require("various-textobjs").key("outer")
omap <silent> eI <Plug>(textobj-indent-a)
onoremap <silent> ev <Cmd>lua require("various-textobjs").value("outer")
onoremap <silent> eA aw
xmap <silent> ei <Plug>(textobj-indent-same-a)
xnoremap <silent> ea <Cmd>lua require("various-textobjs").subword("outer")
xnoremap <silent> ek <Cmd>lua require("various-textobjs").key("outer")
xmap <silent> eI <Plug>(textobj-indent-a)
xnoremap <silent> ev <Cmd>lua require("various-textobjs").value("outer")
xnoremap <silent> eA aw
nnoremap <silent> e a
snoremap <silent> e "_ce
nnoremap <silent> fTÞ <Nop>
nnoremap <silent> fT <Cmd>lua require("which-key").show("fT", {mode = "n", auto = true})
onoremap <silent> f y
omap <silent> fP <Cmd>ProjectRoot n
onoremap <silent> f% <Cmd>let @" = expand("%:p")
omap <silent> fp <Cmd>lcd %:h n
onoremap <silent> ff yy
xnoremap <silent> f y
xmap <silent> fP <Cmd>ProjectRoot n
xnoremap <silent> f% <Cmd>let @" = expand("%:p")
xmap <silent> fp <Cmd>lcd %:h n
xnoremap <silent> ff yy
nnoremap <silent> f y
nmap <silent> fP <Cmd>ProjectRoot n
nnoremap <silent> f% <Cmd>let @" = expand("%:p")
nmap <silent> fp <Cmd>lcd %:h n
nnoremap <silent> ff yy
nnoremap fTT <Plug>(nvim-surround-normal-cur-line)
snoremap <silent> f "_cf
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xmap <silent> gi <Plug>(leap-from-window)
vnoremap <silent> g<C-X> <Cmd>lua require"dial.command".select_augend_gvisual()<Cmd>let &opfunc="dial#operator#decrement_gvisual"g@
vnoremap <silent> g <Cmd>lua require"dial.command".select_augend_gvisual()<Cmd>let &opfunc="dial#operator#decrement_gvisual"g@
vnoremap <silent> g<C-A> <Cmd>lua require"dial.command".select_augend_gvisual()<Cmd>let &opfunc="dial#operator#increment_gvisual"g@
vnoremap <silent> g <Cmd>lua require"dial.command".select_augend_gvisual()<Cmd>let &opfunc="dial#operator#increment_gvisual"g@
xnoremap <silent> g<Plug>(dial-decrementÞ <Nop>
xnoremap <silent> g<Plug>(dial-decremenÞ <Nop>
xnoremap <silent> g<Plug>(dial-decremeÞ <Nop>
xnoremap <silent> g<Plug>(dial-decremÞ <Nop>
xnoremap <silent> g<Plug>(dial-decreÞ <Nop>
xnoremap <silent> g<Plug>(dial-decrÞ <Nop>
xnoremap <silent> g<Plug>(dial-decÞ <Nop>
xnoremap <silent> g<Plug>(dial-deÞ <Nop>
xnoremap <silent> g<Plug>(dial-dÞ <Nop>
xnoremap <silent> g<Plug>(dial-incrementÞ <Nop>
xnoremap <silent> g<Plug>(dial-incremenÞ <Nop>
xnoremap <silent> g<Plug>(dial-incremeÞ <Nop>
xnoremap <silent> g<Plug>(dial-incremÞ <Nop>
xnoremap <silent> g<Plug>(dial-increÞ <Nop>
xnoremap <silent> g<Plug>(dial-incrÞ <Nop>
xnoremap <silent> g<Plug>(dial-incÞ <Nop>
xnoremap <silent> g<Plug>(dial-inÞ <Nop>
xnoremap <silent> g<Plug>(dial-iÞ <Nop>
xnoremap <silent> g<Plug>(dial-Þ <Nop>
xnoremap <silent> g<Plug>(dialÞ <Nop>
xnoremap <silent> g<Plug>(diaÞ <Nop>
xnoremap <silent> g<Plug>(diÞ <Nop>
xnoremap <silent> g<Plug>(dÞ <Nop>
xnoremap <silent> g<Plug>(Þ <Nop>
xnoremap <silent> g<Plug>Þ <Nop>
xnoremap <silent> g<Plug> <Cmd>lua require("which-key").show("g��S", {mode = "v", auto = true})
xnoremap <silent> gaÞ <Nop>
xnoremap <silent> ga <Cmd>lua require("which-key").show("ga", {mode = "v", auto = true})
nnoremap <silent> g<Plug>(dial-decrementÞ <Nop>
nnoremap <silent> g<Plug>(dial-decremenÞ <Nop>
nnoremap <silent> g<Plug>(dial-decremeÞ <Nop>
nnoremap <silent> g<Plug>(dial-decremÞ <Nop>
nnoremap <silent> g<Plug>(dial-decreÞ <Nop>
nnoremap <silent> g<Plug>(dial-decrÞ <Nop>
nnoremap <silent> g<Plug>(dial-decÞ <Nop>
nnoremap <silent> g<Plug>(dial-deÞ <Nop>
nnoremap <silent> g<Plug>(dial-dÞ <Nop>
nnoremap <silent> g<Plug>(dial-incrementÞ <Nop>
nnoremap <silent> g<Plug>(dial-incremenÞ <Nop>
nnoremap <silent> g<Plug>(dial-incremeÞ <Nop>
nnoremap <silent> g<Plug>(dial-incremÞ <Nop>
nnoremap <silent> g<Plug>(dial-increÞ <Nop>
nnoremap <silent> g<Plug>(dial-incrÞ <Nop>
nnoremap <silent> g<Plug>(dial-incÞ <Nop>
nnoremap <silent> g<Plug>(dial-inÞ <Nop>
nnoremap <silent> g<Plug>(dial-iÞ <Nop>
nnoremap <silent> g<Plug>(dial-Þ <Nop>
nnoremap <silent> g<Plug>(dialÞ <Nop>
nnoremap <silent> g<Plug>(diaÞ <Nop>
nnoremap <silent> g<Plug>(diÞ <Nop>
nnoremap <silent> g<Plug>(dÞ <Nop>
nnoremap <silent> g<Plug>(Þ <Nop>
nnoremap <silent> g<Plug>Þ <Nop>
omap <silent> gd <Plug>(smartword-ge)
xmap <silent> gd <Plug>(smartword-ge)
nnoremap <silent> gM <Cmd>Telescope agrolens query=functions
nnoremap <silent> gC <Cmd>Telescope agrolens query=callings
nnoremap <silent> gm <Cmd>Telescope agrolens query=functions buffers=all
nnoremap <silent> gF <Cmd>e <cfile>
nnoremap <silent> gc <Cmd>Telescope agrolens query=callings buffers=all
nmap <silent> gd <Plug>(smartword-ge)
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
onoremap <silent> gs <Plug>(leap-from-window)
xnoremap <silent> gs <Plug>(leap-from-window)
nnoremap <silent> gs <Plug>(leap-from-window)
omap g) <Plug>(textobj-indentedparagraph-n)
xmap g) <Plug>(textobj-indentedparagraph-n)
nmap g) <Plug>(textobj-indentedparagraph-n)
omap g( <Plug>(textobj-indentedparagraph-p)
xmap g( <Plug>(textobj-indentedparagraph-p)
nmap g( <Plug>(textobj-indentedparagraph-p)
snoremap <silent> g "_cg
vnoremap g<Plug>(dial-decrement) <Cmd>lua require"dial.command".select_augend_gvisual()<Cmd>let &opfunc="dial#operator#decrement_gvisual"g@gv
vnoremap g<Plug>(dial-increment) <Cmd>lua require"dial.command".select_augend_gvisual()<Cmd>let &opfunc="dial#operator#increment_gvisual"g@gv
nnoremap g<Plug>(dial-decrement) <Cmd>lua require"dial.command".select_augend_gnormal()<Cmd>let &opfunc="dial#operator#decrement_gnormal"g@<Cmd>lua require("dial.command").textobj()
nnoremap g<Plug>(dial-increment) <Cmd>lua require"dial.command".select_augend_gnormal()<Cmd>let &opfunc="dial#operator#increment_gnormal"g@<Cmd>lua require("dial.command").textobj()
snoremap <silent> h "_ch
nmap <silent> i <Plug>(leap-forward-to)
omap <silent> i <Plug>(leap-forward-to)
xmap <silent> i <Plug>(leap-forward-to)
onoremap <silent> iC :call TextObjWordBasedColumn("iW")
onoremap <silent> ic :call TextObjWordBasedColumn("iw")
xnoremap <silent> iC :call TextObjWordBasedColumn("iW")
xnoremap <silent> ic :call TextObjWordBasedColumn("iw")
omap ii <Plug>(textobj-indent-i)
xmap ii <Plug>(textobj-indent-i)
omap iI <Plug>(textobj-indent-same-i)
xmap iI <Plug>(textobj-indent-same-i)
omap ih <Plug>(textobj-hydrogen-i)
xmap ih <Plug>(textobj-hydrogen-i)
omap ir <Plug>(textobj-indentedparagraph-i)
xmap ir <Plug>(textobj-indentedparagraph-i)
snoremap <silent> i "_ci
snoremap <silent> j "_cj
snoremap <silent> k "_ck
onoremap <silent> l "_d
onoremap <silent> ll "_dd
xnoremap <silent> l "_d
xnoremap <silent> ll "_dd
nnoremap <silent> l "_d
nnoremap <silent> ll "_dd
nnoremap lt <Plug>(nvim-surround-delete)
snoremap <silent> l "_cl
onoremap <silent> m c
onoremap <silent> mm cc
xnoremap <silent> m c
xnoremap <silent> mm cc
nnoremap <silent> m c
nnoremap <silent> mm cc
nnoremap mT <Plug>(nvim-surround-change-line)
nnoremap mt <Plug>(nvim-surround-change)
snoremap <silent> m "_cm
nnoremap <silent> nn dd
xnoremap <silent> n d
nnoremap <silent> n d
snoremap <silent> n "_cn
xmap o g
nmap o g
snoremap <silent> o "_co
nmap <silent> p <Plug>(YankyPutAfter)
xmap <silent> p <Plug>(YankyPutAfter)
snoremap <silent> p "_cp
omap <silent> qi <Plug>(textobj-indent-same-i)
onoremap <silent> qa <Cmd>lua require("various-textobjs").subword("inner")
onoremap <silent> qk <Cmd>lua require("various-textobjs").key("inner")
omap <silent> qI <Plug>(textobj-indent-i)
onoremap <silent> qv <Cmd>lua require("various-textobjs").value("inner")
onoremap <silent> qA iw
xmap <silent> qi <Plug>(textobj-indent-same-i)
xnoremap <silent> qa <Cmd>lua require("various-textobjs").subword("inner")
xnoremap <silent> qk <Cmd>lua require("various-textobjs").key("inner")
xmap <silent> qI <Plug>(textobj-indent-i)
xnoremap <silent> qv <Cmd>lua require("various-textobjs").value("inner")
xnoremap <silent> qA iw
nnoremap <silent> q i
snoremap <silent> q "_cq
onoremap <silent> r :
xnoremap <silent> r :
nnoremap <silent> r :
snoremap <silent> r "_cr
onoremap <silent> s<Right> r
onoremap <silent> sl r
xnoremap <silent> s<Right> r
xnoremap <silent> sl r
nnoremap <silent> s<Right> r
nnoremap <silent> sl r
onoremap <silent> s r
snoremap <silent> s "_cs
xnoremap t <Plug>(nvim-surround-visual)
nnoremap tt <Plug>(nvim-surround-normal-cur)
nnoremap t <Plug>(nvim-surround-normal)
snoremap <silent> t "_ct
snoremap <silent> u "_cu
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> vx <Cmd>STSSelectMasterNode
nnoremap <silent> vn <Cmd>STSSelectCurrentNode
snoremap <silent> v "_cv
onoremap <silent> w <Cmd>lua require('spider').motion('w')
xnoremap <silent> w <Cmd>lua require('spider').motion('w')
nnoremap <silent> w <Cmd>lua require('spider').motion('w')
snoremap <silent> w "_cw
onoremap <silent> x <Plug>(leap-forward-till)
snoremap <silent> x "_cx
nnoremap <silent> x "_x
xnoremap <silent> x "_x
snoremap <silent> y "_cy
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
xmap <silent> z <Plug>(leap-forward-till)
nmap <silent> zp <Plug>(YankyPutIndentAfterLinewise)
nmap <silent> zP <Plug>(YankyPutIndentBeforeLinewise)
xmap <silent> zp <Plug>(YankyPutIndentAfterLinewise)
xmap <silent> zP <Plug>(YankyPutIndentBeforeLinewise)
nnoremap <silent> zhÞ <Nop>
nnoremap <silent> z<Up> zkzxzz
nnoremap <silent> z+ <Cmd>set foldlevel+=1
nnoremap <silent> z- <Cmd>set foldlevel-=1
nnoremap <silent> z<Down> zjzxzz
snoremap <silent> z "_cz
snoremap <silent> { "_c{
snoremap <silent> | "_c|
snoremap <silent> } "_c}
snoremap <silent> ~ "_c~
xnoremap <silent> <C-J> <Cmd>STSSelectNextSiblingNode
xnoremap <silent> <C-K> <Cmd>STSSelectPrevSiblingNode
xnoremap <silent> <M-j> <Cmd>STSSwapNextVisual
xnoremap <silent> <C-L> <Cmd>STSSelectChildNode
xnoremap <silent> <M-k> <Cmd>STSSwapPrevVisual
xnoremap <silent> <C-H> <Cmd>STSSelectParentNode
nnoremap <silent> <C-X> <Cmd>lua require"dial.command".select_augend_normal()<Cmd>let &opfunc="dial#operator#decrement_normal"g@<Cmd>lua require("dial.command").textobj()
nnoremap <silent> <C-A> <Cmd>lua require"dial.command".select_augend_normal()<Cmd>let &opfunc="dial#operator#increment_normal"g@<Cmd>lua require("dial.command").textobj()
vnoremap <silent> <C-X> <Cmd>lua require"dial.command".select_augend_visual()<Cmd>let &opfunc="dial#operator#decrement_visual"g@
vnoremap <silent> <C-A> <Cmd>lua require"dial.command".select_augend_visual()<Cmd>let &opfunc="dial#operator#increment_visual"g@
nmap <silent> <C-P> <Plug>(YankyCycleBackward)
xnoremap <silent> <SNR>57_(save-cursor-posÞ <Nop>
xnoremap <silent> <SNR>57_(save-cursor-poÞ <Nop>
xnoremap <silent> <SNR>57_(save-cursor-pÞ <Nop>
xnoremap <silent> <SNR>57_(save-cursor-Þ <Nop>
xnoremap <silent> <SNR>57_(save-cursorÞ <Nop>
xnoremap <silent> <SNR>57_(save-cursoÞ <Nop>
xnoremap <silent> <SNR>57_(save-cursÞ <Nop>
xnoremap <silent> <SNR>57_(save-curÞ <Nop>
xnoremap <silent> <SNR>57_(save-cuÞ <Nop>
xnoremap <silent> <SNR>57_(save-cÞ <Nop>
xnoremap <silent> <SNR>57_(save-Þ <Nop>
xnoremap <silent> <SNR>57_(saveÞ <Nop>
xnoremap <silent> <SNR>57_(savÞ <Nop>
xnoremap <silent> <SNR>57_(saÞ <Nop>
xnoremap <silent> <SNR>57_(sÞ <Nop>
xnoremap <silent> <SNR>57_(Þ <Nop>
xnoremap <silent> <SNR>57_Þ <Nop>
xnoremap <silent> <SNR>57Þ <Nop>
xnoremap <silent> <SNR>5Þ <Nop>
xnoremap <silent> <SNR>Þ <Nop>
xnoremap <silent> <SNR> <Cmd>lua require("which-key").show("��R", {mode = "v", auto = true})
nnoremap <silent> <SNR>94_Þ <Nop>
nnoremap <silent> <SNR>94Þ <Nop>
nnoremap <silent> <SNR>9Þ <Nop>
nnoremap <silent> <SNR>57_(save-cursor-posÞ <Nop>
nnoremap <silent> <SNR>57_(save-cursor-poÞ <Nop>
nnoremap <silent> <SNR>57_(save-cursor-pÞ <Nop>
nnoremap <silent> <SNR>57_(save-cursor-Þ <Nop>
nnoremap <silent> <SNR>57_(save-cursorÞ <Nop>
nnoremap <silent> <SNR>57_(save-cursoÞ <Nop>
nnoremap <silent> <SNR>57_(save-cursÞ <Nop>
nnoremap <silent> <SNR>57_(save-curÞ <Nop>
nnoremap <silent> <SNR>57_(save-cuÞ <Nop>
nnoremap <silent> <SNR>57_(save-cÞ <Nop>
nnoremap <silent> <SNR>57_(save-Þ <Nop>
nnoremap <silent> <SNR>57_(saveÞ <Nop>
nnoremap <silent> <SNR>57_(savÞ <Nop>
nnoremap <silent> <SNR>57_(saÞ <Nop>
nnoremap <silent> <SNR>57_(sÞ <Nop>
nnoremap <silent> <SNR>57_(Þ <Nop>
nnoremap <silent> <SNR>57Þ <Nop>
nnoremap <silent> <SNR>5Þ <Nop>
nnoremap <silent> <SNR>Þ <Nop>
nnoremap <silent> <SNR> <Cmd>lua require("which-key").show("��R", {mode = "n", auto = true})
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
onoremap <silent> <Home> ^
onoremap <silent> <S-Tab> N
xnoremap <silent> <Home> ^
xnoremap <silent> <C-M> 3
xnoremap <silent> <S-Tab> N
xnoremap <silent> <C-Q> 3
nnoremap <silent> <Home> ^
nnoremap <silent> <C-W>z <Cmd>wincmd o
nnoremap <silent> <C-W>m :FocusMaximise
nnoremap <silent> <C-M> 3
nnoremap <silent> <S-Tab> N
nnoremap <silent> <C-Q> 3
xnoremap <silent> <Plug>(nvim-surround-visual-line) <Cmd>lua require'nvim-surround'.visual_surround({ line_mode = true })
xnoremap <silent> <Plug>(nvim-surround-visual) <Cmd>lua require'nvim-surround'.visual_surround({ line_mode = false })
nnoremap <SNR>94_: :=v:count ? v:count : ''
nnoremap <M-j> J
snoremap <M-j> J
onoremap <M-j> J
nnoremap <C-W>s :below new
nnoremap <C-W>v :vnew
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
noremap <Plug>(smartword-basic-ge) ge
noremap <Plug>(smartword-basic-e) e
noremap <Plug>(smartword-basic-b) b
noremap <Plug>(smartword-basic-w) w
onoremap <silent> <Plug>(smartword-ge) :call smartword#move('ge','o')
onoremap <silent> <Plug>(smartword-e) :call smartword#move('e','o')
onoremap <silent> <Plug>(smartword-b) :call smartword#move('b','o')
onoremap <silent> <Plug>(smartword-w) :call smartword#move('w','o')
vnoremap <silent> <Plug>(smartword-ge) :call smartword#move('ge','v')
vnoremap <silent> <Plug>(smartword-e) :call smartword#move('e','v')
vnoremap <silent> <Plug>(smartword-b) :call smartword#move('b','v')
vnoremap <silent> <Plug>(smartword-w) :call smartword#move('w','v')
nnoremap <silent> <Plug>(smartword-ge) :call smartword#move('ge','n')
nnoremap <silent> <Plug>(smartword-e) :call smartword#move('e','n')
nnoremap <silent> <Plug>(smartword-b) :call smartword#move('b','n')
nnoremap <silent> <Plug>(smartword-w) :call smartword#move('w','n')
xnoremap <silent> <C-I> :lua require("luasnip.util.select").pre_cut()gv"zs<Cmd>lua require('luasnip.util.select').post_cut("z")
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
snoremap <silent> <BS> "_c
nnoremap <Plug>JupyterRestart :call jupyter_ascending#restart()
nnoremap <Plug>JupyterExecuteAll :call jupyter_ascending#execute_all()
nnoremap <Plug>JupyterExecute :call jupyter_ascending#execute()
nmap <nowait> <C-Down> <Plug>(VM-Add-Cursor-Down)
xmap <nowait> <C-N> <Plug>(VM-Find-Subword-Under)
nmap <nowait> <C-Up> <Plug>(VM-Add-Cursor-Up)
nmap <nowait> <S-Right> <Plug>(VM-Select-l)
nmap <nowait> <S-Left> <Plug>(VM-Select-h)
nmap <silent> <C-N> <Plug>(YankyCycleForward)
nnoremap <silent> <Plug>(VM-Select-BBW) :call vm#commands#motion('BBW', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-gE) :call vm#commands#motion('gE', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-ge) :call vm#commands#motion('ge', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-E) :call vm#commands#motion('E', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-e) :call vm#commands#motion('e', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-B) :call vm#commands#motion('B', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-b) :call vm#commands#motion('b', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-W) :call vm#commands#motion('W', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-w) :call vm#commands#motion('w', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-l) :call vm#commands#motion('l', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-k) :call vm#commands#motion('k', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-j) :call vm#commands#motion('j', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Select-h) :call vm#commands#motion('h', v:count1, 1, 0)
nnoremap <silent> <Plug>(VM-Mouse-Column) :call vm#commands#mouse_column()
nmap <silent> <Plug>(VM-Mouse-Word) <Plug>(VM-Left-Mouse)<Plug>(VM-Find-Under)
nmap <silent> <Plug>(VM-Mouse-Cursor) <Plug>(VM-Left-Mouse)<Plug>(VM-Add-Cursor-At-Pos)
nnoremap <silent> <Plug>(VM-Left-Mouse) <LeftMouse>
xnoremap <silent> <Plug>(VM-Visual-Regex) :call vm#commands#find_by_regex(2):call feedkeys('/', 'n')
nnoremap <silent> <Plug>(VM-Slash-Search) @=vm#commands#find_by_regex(3)
nnoremap <silent> <Plug>(VM-Start-Regex-Search) @=vm#commands#find_by_regex(1)
nnoremap <silent> <Plug>(VM-Find-Under) :call vm#commands#ctrln(v:count1)
xnoremap <silent> <Plug>(VM-Visual-Reduce) :call vm#visual#reduce()
xnoremap <silent> <Plug>(VM-Visual-Add) :call vm#commands#visual_add()
xnoremap <silent> <Plug>(VM-Visual-Cursors) :call vm#commands#visual_cursors()
nnoremap <silent> <Plug>(VM-Select-All) :call vm#commands#find_all(0, 1)
nnoremap <silent> <Plug>(VM-Reselect-Last) :call vm#commands#reselect_last()
nnoremap <silent> <Plug>(VM-Select-Cursor-Up) :call vm#commands#add_cursor_up(1, v:count1)
nnoremap <silent> <Plug>(VM-Select-Cursor-Down) :call vm#commands#add_cursor_down(1, v:count1)
nnoremap <silent> <Plug>(VM-Add-Cursor-Up) :call vm#commands#add_cursor_up(0, v:count1)
nnoremap <silent> <Plug>(VM-Add-Cursor-Down) :call vm#commands#add_cursor_down(0, v:count1)
nnoremap <silent> <Plug>(VM-Add-Cursor-At-Word) :call vm#commands#add_cursor_at_word(1, 1)
nnoremap <silent> <Plug>(VM-Add-Cursor-At-Pos) :call vm#commands#add_cursor_at_pos(0)
xmap <silent> <expr> <Plug>(VM-Visual-Find) vm#operators#find(1, 1)
vnoremap <Plug>(dial-decrement) <Cmd>lua require"dial.command".select_augend_visual()<Cmd>let &opfunc="dial#operator#decrement_visual"g@gv
vnoremap <Plug>(dial-increment) <Cmd>lua require"dial.command".select_augend_visual()<Cmd>let &opfunc="dial#operator#increment_visual"g@gv
nnoremap <Plug>(dial-decrement) <Cmd>lua require"dial.command".select_augend_normal()<Cmd>let &opfunc="dial#operator#decrement_normal"g@<Cmd>lua require("dial.command").textobj()
nnoremap <Plug>(dial-increment) <Cmd>lua require"dial.command".select_augend_normal()<Cmd>let &opfunc="dial#operator#increment_normal"g@<Cmd>lua require("dial.command").textobj()
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nnoremap <Plug>(Marks-prev-bookmark9) <Cmd> lua require'marks'.prev_bookmark9()
nnoremap <Plug>(Marks-next-bookmark9) <Cmd> lua require'marks'.next_bookmark9()
nnoremap <Plug>(Marks-toggle-bookmark9) <Cmd> lua require'marks'.toggle_bookmark9()
nnoremap <Plug>(Marks-delete-bookmark9) <Cmd> lua require'marks'.delete_bookmark9()
nnoremap <Plug>(Marks-set-bookmark9) <Cmd> lua require'marks'.set_bookmark9()
nnoremap <Plug>(Marks-prev-bookmark8) <Cmd> lua require'marks'.prev_bookmark8()
nnoremap <Plug>(Marks-next-bookmark8) <Cmd> lua require'marks'.next_bookmark8()
nnoremap <Plug>(Marks-toggle-bookmark8) <Cmd> lua require'marks'.toggle_bookmark8()
nnoremap <Plug>(Marks-delete-bookmark8) <Cmd> lua require'marks'.delete_bookmark8()
nnoremap <Plug>(Marks-set-bookmark8) <Cmd> lua require'marks'.set_bookmark8()
nnoremap <Plug>(Marks-prev-bookmark7) <Cmd> lua require'marks'.prev_bookmark7()
nnoremap <Plug>(Marks-next-bookmark7) <Cmd> lua require'marks'.next_bookmark7()
nnoremap <Plug>(Marks-toggle-bookmark7) <Cmd> lua require'marks'.toggle_bookmark7()
nnoremap <Plug>(Marks-delete-bookmark7) <Cmd> lua require'marks'.delete_bookmark7()
nnoremap <Plug>(Marks-set-bookmark7) <Cmd> lua require'marks'.set_bookmark7()
nnoremap <Plug>(Marks-prev-bookmark6) <Cmd> lua require'marks'.prev_bookmark6()
nnoremap <Plug>(Marks-next-bookmark6) <Cmd> lua require'marks'.next_bookmark6()
nnoremap <Plug>(Marks-toggle-bookmark6) <Cmd> lua require'marks'.toggle_bookmark6()
nnoremap <Plug>(Marks-delete-bookmark6) <Cmd> lua require'marks'.delete_bookmark6()
nnoremap <Plug>(Marks-set-bookmark6) <Cmd> lua require'marks'.set_bookmark6()
nnoremap <Plug>(Marks-prev-bookmark5) <Cmd> lua require'marks'.prev_bookmark5()
nnoremap <Plug>(Marks-next-bookmark5) <Cmd> lua require'marks'.next_bookmark5()
nnoremap <Plug>(Marks-toggle-bookmark5) <Cmd> lua require'marks'.toggle_bookmark5()
nnoremap <Plug>(Marks-delete-bookmark5) <Cmd> lua require'marks'.delete_bookmark5()
nnoremap <Plug>(Marks-set-bookmark5) <Cmd> lua require'marks'.set_bookmark5()
nnoremap <Plug>(Marks-prev-bookmark4) <Cmd> lua require'marks'.prev_bookmark4()
nnoremap <Plug>(Marks-next-bookmark4) <Cmd> lua require'marks'.next_bookmark4()
nnoremap <Plug>(Marks-toggle-bookmark4) <Cmd> lua require'marks'.toggle_bookmark4()
nnoremap <Plug>(Marks-delete-bookmark4) <Cmd> lua require'marks'.delete_bookmark4()
nnoremap <Plug>(Marks-set-bookmark4) <Cmd> lua require'marks'.set_bookmark4()
nnoremap <Plug>(Marks-prev-bookmark3) <Cmd> lua require'marks'.prev_bookmark3()
nnoremap <Plug>(Marks-next-bookmark3) <Cmd> lua require'marks'.next_bookmark3()
nnoremap <Plug>(Marks-toggle-bookmark3) <Cmd> lua require'marks'.toggle_bookmark3()
nnoremap <Plug>(Marks-delete-bookmark3) <Cmd> lua require'marks'.delete_bookmark3()
nnoremap <Plug>(Marks-set-bookmark3) <Cmd> lua require'marks'.set_bookmark3()
nnoremap <Plug>(Marks-prev-bookmark2) <Cmd> lua require'marks'.prev_bookmark2()
nnoremap <Plug>(Marks-next-bookmark2) <Cmd> lua require'marks'.next_bookmark2()
nnoremap <Plug>(Marks-toggle-bookmark2) <Cmd> lua require'marks'.toggle_bookmark2()
nnoremap <Plug>(Marks-delete-bookmark2) <Cmd> lua require'marks'.delete_bookmark2()
nnoremap <Plug>(Marks-set-bookmark2) <Cmd> lua require'marks'.set_bookmark2()
nnoremap <Plug>(Marks-prev-bookmark1) <Cmd> lua require'marks'.prev_bookmark1()
nnoremap <Plug>(Marks-next-bookmark1) <Cmd> lua require'marks'.next_bookmark1()
nnoremap <Plug>(Marks-toggle-bookmark1) <Cmd> lua require'marks'.toggle_bookmark1()
nnoremap <Plug>(Marks-delete-bookmark1) <Cmd> lua require'marks'.delete_bookmark1()
nnoremap <Plug>(Marks-set-bookmark1) <Cmd> lua require'marks'.set_bookmark1()
nnoremap <Plug>(Marks-prev-bookmark0) <Cmd> lua require'marks'.prev_bookmark0()
nnoremap <Plug>(Marks-next-bookmark0) <Cmd> lua require'marks'.next_bookmark0()
nnoremap <Plug>(Marks-toggle-bookmark0) <Cmd> lua require'marks'.toggle_bookmark0()
nnoremap <Plug>(Marks-delete-bookmark0) <Cmd> lua require'marks'.delete_bookmark0()
nnoremap <Plug>(Marks-set-bookmark0) <Cmd> lua require'marks'.set_bookmark0()
nnoremap <Plug>(Marks-prev-bookmark) <Cmd> lua require'marks'.prev_bookmark()
nnoremap <Plug>(Marks-next-bookmark) <Cmd> lua require'marks'.next_bookmark()
nnoremap <Plug>(Marks-delete-bookmark) <Cmd> lua require'marks'.delete_bookmark()
nnoremap <Plug>(Marks-prev) <Cmd> lua require'marks'.prev()
nnoremap <Plug>(Marks-next) <Cmd> lua require'marks'.next()
nnoremap <Plug>(Marks-preview) <Cmd> lua require'marks'.preview()
nnoremap <Plug>(Marks-deletebuf) <Cmd> lua require'marks'.delete_buf()
nnoremap <Plug>(Marks-deleteline) <Cmd> lua require'marks'.delete_line()
nnoremap <Plug>(Marks-delete) <Cmd> lua require'marks'.delete()
nnoremap <Plug>(Marks-toggle) <Cmd> lua require'marks'.toggle()
nnoremap <Plug>(Marks-setnext) <Cmd> lua require'marks'.set_next()
nnoremap <Plug>(Marks-set) <Cmd> lua require'marks'.set()
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\7", {mode = "i", auto = true})
inoremap S <Plug>(nvim-surround-insert-line)
inoremap s <Plug>(nvim-surround-insert)
inoremap <expr>  v:lua.MPairs.completion_confirm()
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent> Þ <Nop>
cnoremap <silent> Þ <Nop>
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
cnoremap <expr>  traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr>  traces#check_b() ? traces#get_pfile() : "\\"
cnoremap <expr>  traces#check_b() ? traces#get_cfile() : "\\"
cnoremap <expr>  traces#check_b() ? traces#get_cWORD() : "\\"
cnoremap <expr>  traces#check_b() ? traces#get_cword() : "\\"
inoremap  u
inoremap  u
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\24", {mode = "i", auto = true})
cnoremap <silent> Þ <Nop>
cnoremap <silent>  <Cmd>lua require("which-key").show("\24", {mode = "c", auto = true})
inoremap <silent>  <Cmd>lua require("Comment.api").toggle_current_linewise()
cabbr exn exec "normal"<Left>
cabbr %% =expand('%:p:h')
iabbr pmeRe Pakalo Alexander
iabbr pme13 DeadlySquad13
iabbr @@ sasha.pakalo@gmail.com
let &cpo=s:cpo_save
unlet s:cpo_save
set background=light
set backupdir=~/.local/share/nvim/backup/
set completeopt=menu,menuone,noselect
set directory=~/.local/share/nvim/swag/
set expandtab
set fillchars=eob:\ ,fold:\ ,foldopen:⮛,foldsep:\ ,foldclose:⮚
set foldlevelstart=6
set formatoptions=2jc1rql
set grepprg=rg\ --hidden\ --vimgrep\ --smart-case\ --
set helplang=en
set history=2000
set ignorecase
set indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
set keywordprg=:help
set langmap=ЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭ//ЯЧСМИТЬБЮ\\,/;~WFMPV*:Q[]Z{RSNTG\\;AEIHJ}\\|XCLDB+UOY\\,/,ёйцукенгшщзхъфывап��олджэ\\\\\\\\ячсмитьбю\\./;`wfmpv/\\.q\\\"'z(rsntg\\,aeihj)\\\\xcldb-uoy\\./
set laststatus=3
set listchars=extends:→,nbsp:⦸,precedes:←,space:⋅,tab:⌁\ ,trail:-
set noloadplugins
set operatorfunc=v:lua.require'substitute'.operator_callback
set packpath=~/.asdf/installs/neovim/nightly/share/nvim/runtime
set pumblend=10
set pumheight=20
set report=4
set noruler
set runtimepath=
set runtimepath+=~/.config/nvim
set runtimepath+=~/.local/share/nvim/site
set runtimepath+=~/.local/share/nvim/lazy/lazy.nvim
set runtimepath+=~/.local/share/nvim/lazy/markdown-preview.nvim
set runtimepath+=~/.local/share/nvim/lazy/lsp_signature.nvim
set runtimepath+=~/.local/share/nvim/lazy/indent-blankline.nvim
set runtimepath+=~/.local/share/nvim/lazy/lualine.nvim
set runtimepath+=~/.local/share/nvim/lazy/bufferline.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-surround
set runtimepath+=~/.local/share/nvim/lazy/plantuml-syntax
set runtimepath+=~/.local/share/nvim/lazy/neogit
set runtimepath+=~/.local/share/nvim/lazy/flit.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-colorizer.lua
set runtimepath+=~/.local/share/nvim/lazy/mind.nvim
set runtimepath+=~/.local/share/nvim/lazy/leap.nvim
set runtimepath+=~/.local/share/nvim/lazy/textobj-word-column.vim
set runtimepath+=~/.local/share/nvim/lazy/nvim-various-textobjs
set runtimepath+=~/.local/share/nvim/lazy/lush.nvim
set runtimepath+=~/dotfiles/stow_home/nvim/CustomThemes/deadly-gruv.nvim
set runtimepath+=~/.local/share/nvim/lazy/vim-smartword
set runtimepath+=~/.local/share/nvim/lazy/vim-textobj-indent
set runtimepath+=~/.local/share/nvim/lazy/vim-textobj-hydrogen
set runtimepath+=~/.local/share/nvim/lazy/clear-action.nvim
set runtimepath+=~/.local/share/nvim/lazy/vim-textobj-user
set runtimepath+=~/.local/share/nvim/lazy/vim-textobj-indented-paragraph
set runtimepath+=~/.local/share/nvim/lazy/jupynium.nvim
set runtimepath+=~/.local/share/nvim/lazy/sj.nvim
set runtimepath+=~/.local/share/nvim/lazy/legendary.nvim
set runtimepath+=~/.local/share/nvim/lazy/todo-comments.nvim
set runtimepath+=~/.local/share/nvim/lazy/diffview.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-lsp-ts-utils
set runtimepath+=~/.local/share/nvim/lazy/rainbow-delimiters.nvim
set runtimepath+=~/.local/share/nvim/lazy/TrueZen.nvim
set runtimepath+=~/.local/share/nvim/lazy/tabout.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-yati
set runtimepath+=~/.local/share/nvim/lazy/winshift.nvim
set runtimepath+=~/.local/share/nvim/lazy/lspsaga.nvim
set runtimepath+=~/.local/share/nvim/lazy/traces.vim
set runtimepath+=~/.local/share/nvim/lazy/headlines.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-autopairs
set runtimepath+=~/.local/share/nvim/lazy/lspkind.nvim
set runtimepath+=~/.local/share/nvim/lazy/cmp_luasnip
set runtimepath+=~/.local/share/nvim/lazy/cmp-copilot
set runtimepath+=~/.local/share/nvim/lazy/cmp-omni
set runtimepath+=~/.local/share/nvim/lazy/cmp-cmdline
set runtimepath+=~/.local/share/nvim/lazy/cmp-calc
set runtimepath+=~/.local/share/nvim/lazy/cmp-buffer
set runtimepath+=~/.local/share/nvim/lazy/cmp-path
set runtimepath+=~/.local/share/nvim/lazy/cmp-spell
set runtimepath+=~/.local/share/nvim/lazy/nvim-cmp
set runtimepath+=~/.local/share/nvim/lazy/nvim-recorder
set runtimepath+=~/.local/share/nvim/lazy/auto-session
set runtimepath+=~/.local/share/nvim/lazy/bufdelete.nvim
set runtimepath+=~/.local/share/nvim/lazy/git-worktree.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-vtsls
set runtimepath+=~/.local/share/nvim/lazy/twilight.nvim
set runtimepath+=~/.local/share/nvim/lazy/project.nvim
set runtimepath+=~/.local/share/nvim/lazy/scope.nvim
set runtimepath+=~/.local/share/nvim/lazy/langmapper.nvim
set runtimepath+=~/.local/share/nvim/lazy/which-key.nvim
set runtimepath+=~/.local/share/nvim/lazy/substitute.nvim
set runtimepath+=~/.local/share/nvim/lazy/syntax-tree-surfer
set runtimepath+=~/.local/share/nvim/lazy/vim-fugitive
set runtimepath+=~/.local/share/nvim/lazy/dressing.nvim
set runtimepath+=~/.local/share/nvim/lazy/other.nvim
set runtimepath+=~/.local/share/nvim/lazy/auto-save.nvim
set runtimepath+=~/.local/share/nvim/lazy/fidget.nvim
set runtimepath+=~/.local/share/nvim/lazy/cmp-nvim-lsp
set runtimepath+=~/.local/share/nvim/lazy/nvim-lspconfig
set runtimepath+=~/.local/share/nvim/lazy/neodev.nvim
set runtimepath+=~/.local/share/nvim/lazy/nui.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-web-devicons
set runtimepath+=~/.local/share/nvim/lazy/neo-tree.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-window
set runtimepath+=~/.local/share/nvim/lazy/nvim-treesitter-context
set runtimepath+=~/.local/share/nvim/lazy/LuaSnip-snippets.nvim
set runtimepath+=~/.local/share/nvim/lazy/LuaSnip
set runtimepath+=~/.local/share/nvim/lazy/mason-lspconfig.nvim
set runtimepath+=~/.local/share/nvim/lazy/conceal.nvim
set runtimepath+=~/.local/share/nvim/lazy/range-highlight.nvim
set runtimepath+=~/.local/share/nvim/lazy/debuglog
set runtimepath+=~/.local/share/nvim/lazy/yop.nvim
set runtimepath+=~/.local/share/nvim/lazy/vim-abolish
set runtimepath+=~/.local/share/nvim/lazy/schemastore.nvim
set runtimepath+=~/.local/share/nvim/lazy/neogen
set runtimepath+=~/.local/share/nvim/lazy/mini.ai
set runtimepath+=~/.local/share/nvim/lazy/mini.files
set runtimepath+=~/.local/share/nvim/lazy/null-ls.nvim
set runtimepath+=~/.local/share/nvim/lazy/cmd-parser.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-ts-context-commentstring
set runtimepath+=~/.local/share/nvim/lazy/Comment.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-spider
set runtimepath+=~/.local/share/nvim/lazy/vim-devicons
set runtimepath+=~/.local/share/nvim/lazy/cutlass.nvim
set runtimepath+=~/.local/share/nvim/lazy/git-blame.nvim
set runtimepath+=~/.local/share/nvim/lazy/glance.nvim
set runtimepath+=~/.local/share/nvim/lazy/jupyter_ascending.vim
set runtimepath+=~/.local/share/nvim/lazy/incline.nvim
set runtimepath+=~/.local/share/nvim/lazy/vim-illuminate
set runtimepath+=~/.local/share/nvim/lazy/treesj
set runtimepath+=~/.local/share/nvim/lazy/actions-preview.nvim
set runtimepath+=~/.local/share/nvim/lazy/vim-visual-multi
set runtimepath+=~/.local/share/nvim/lazy/agrolens.nvim
set runtimepath+=~/.local/share/nvim/lazy/mason.nvim
set runtimepath+=~/.local/share/nvim/lazy/lsp-format.nvim
set runtimepath+=~/.local/share/nvim/lazy/dial.nvim
set runtimepath+=~/.local/share/nvim/lazy/persisted.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope-undo.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope-file-browser.nvim
set runtimepath+=~/.local/share/nvim/lazy/yanky.nvim
set runtimepath+=~/.local/share/nvim/lazy/plenary.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope.nvim
set runtimepath+=~/.local/share/nvim/lazy/dashboard-nvim
set runtimepath+=~/.local/share/nvim/lazy/promise-async
set runtimepath+=~/.local/share/nvim/lazy/nvim-ufo
set runtimepath+=~/.local/share/nvim/lazy/nvim-hlslens
set runtimepath+=~/.local/share/nvim/lazy/marks.nvim
set runtimepath+=~/.local/share/nvim/lazy/hydra.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-treesitter
set runtimepath+=~/.local/share/nvim/lazy/nvim-treesitter-textobjects
set runtimepath+=~/.asdf/installs/neovim/nightly/share/nvim/runtime
set runtimepath+=~/.asdf/installs/neovim/nightly/share/nvim/runtime/pack/dist/opt/matchit
set runtimepath+=~/.asdf/installs/neovim/nightly/lib/nvim
set runtimepath+=~/.local/share/nvim/lazy/indent-blankline.nvim/after
set runtimepath+=~/.local/share/nvim/lazy/jupynium.nvim/after
set runtimepath+=~/.local/share/nvim/lazy/cmp_luasnip/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-copilot/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-omni/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-cmdline/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-calc/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-buffer/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-path/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-spell/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-nvim-lsp/after
set runtimepath+=~/.config/nvim/after
set runtimepath+=~/.local/state/nvim/lazy/readme
set scrolljump=8
set scrolloff=5
set sessionoptions=buffers,curdir,folds,help,tabpages,winsize
set shada=!,'300,<50,@100,s10,h
set shiftwidth=0
set shortmess=filwxoOsTIF
set showbreak=↳\ \ 
set showtabline=0
set sidescrolloff=3
set smartcase
set softtabstop=-1
set spellcapcheck=
set spellfile=~/.local/share/nvim/spell/en.uft-8.add
set spelllang=en_us,ru_ru
set spelloptions=camel
set splitright
set statusline=%#Normal#
set noswapfile
set switchbuf=usetab,uselast
set synmaxcol=256
set tabline=%!v:lua.nvim_bufferline()
set tabstop=4
set termguicolors
set textwidth=79
set timeoutlen=600
set undodir=~/.local/share/nvim/undo/
set undofile
set updatetime=300
set viewdir=~/.local/share/nvim/view/
set virtualedit=block
set whichwrap=b,hl,s
set wildignore=*.pyc
set window=62
set nowritebackup
" vim: set ft=vim :
