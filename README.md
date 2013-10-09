# phpunit.vim

A lightweight PHPUnit runner for Vim

## Installation

If you do not have a preferred method, here are some suggestions:

[Pathogen](https://github.com/tpope/vim-pathogen)

    git clone https://github.com/jonyamo/phpunit.vim ~/.vim/bundle/phpunit.vim

[NeoBundle](https://github.com/Shougo/neobundle.vim)

    NeoBundle 'jonyamo/phpunit.vim'

[Vundle](https://github.com/gmarik/vundle)

    Bundle 'jonyamo/phpunit.vim'

## Usage

### Run Current File

To run all tests from the file located in the current buffer:

    :PHPUnitRunCurrentFile

### Run Current Test

To run a specific test, move the cursor to the test definition, then:

    :PHPUnitRunCurrentTest

### Run Previous Test

To run the previously run test again:

    :PHPUnitRunPreviousTest

## Configuration

By default, `g:phpunit_command` is set to `phpunit {test}`. This may be
modified to execute a custom command.

For example, to run with
[dispatch.vim](https://github.com/tpope/vim-dispatch):

`let g:phpunit_command = "Dispatch phpunit {test}"`

### Suggested Key Mappings

No keys are mapped by default, however, here are some suggestions:

    nnoremap <leader>pf :call PHPUnitRunCurrentFile()<cr>
    nnoremap <leader>pt :call PHPUnitRunCurrentTest()<cr>
    nnoremap <leader>pp :call PHPUnitRunPreviousTest()<cr>
