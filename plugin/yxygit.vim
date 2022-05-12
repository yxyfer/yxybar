" =============================================================================
"   Name:        vim-git-info
"   Author:      Mathieu Rivier
"   Version:     1.0
"
"   A git plugin to git you infos on modified and untracked files
" =============================================================================

function! GitInfo()
    " Check if git is initialised
    let s:is_git = system("git rev-parse --is-inside-work-tree 2>/dev/null")

    if s:is_git == ""
        return "  [local][📛]"
    endif

    " Status info
    let s:modified = system("git status -s | grep -i -c M | tr -d '\n'")
    let s:new = system("git status -s | grep -i -c '??' | tr -d '\n'")
    let s:branch = system("git rev-parse --abbrev-ref HEAD | tr -d '\n'")

    " When no modifs
    if str2nr(s:new, 10) == 0 && str2nr(s:modified, 10) == 0
        return "  [" . s:branch . "][🚀]"
    endif

    return  "  [" . s:branch . "][🔥" . s:modified . ",✨" . s:new . "]"

endfunction
