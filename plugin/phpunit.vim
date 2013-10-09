"-----------------------------------------------------------------------------
" file:        phpunit.vim
" description: a lightweight phpunit runner for vim
" source:      https://github.com/jonyamo/vim-phpunit
" maintainer:  Jon Yamokoski <https://github.com/jonyamo>
" license:     WTFPL <http://www.wtfpl.net/>
" last change: 09 Oct 2013
"-----------------------------------------------------------------------------

if exists("g:loaded_phpunit_plugin")
  finish
endif
let g:loaded_phpunit_plugin = 1

if !exists("g:phpunit_command")
  let s:cmd = "phpunit {test}"
  " let g:phpunit_command = "!echo " . s:cmd
  let g:phpunit_command = "!echo " . s:cmd . " && " . s:cmd
endif

function! PHPUnitRunCurrentFile()
  let l:file = @%
  call s:SetPreviousTest(l:file)
  call s:PHPUnitRun(l:file)
endfunction

function! PHPUnitRunCurrentTest()
  let l:file = @%
  let l:test = " --filter " . expand("<cword>") . " " . l:file
  call s:SetPreviousTest(l:test)
  call s:PHPUnitRun(l:test)
endfunction

function! PHPUnitRunPreviousTest()
  if exists("s:previous_test")
    call s:PHPUnitRun(s:previous_test)
  endif
endfunction

function! s:SetPreviousTest(test)
  let s:previous_test = a:test
endfunction

function! s:PHPUnitRun(test)
  execute substitute(g:phpunit_command, "{test}", a:test, "g")
endfunction
