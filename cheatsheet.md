# Cheat sheet

# __terminal__
## Moving around
- C-a move to beginning of line
- C-b move backward one character 
- C-e move to the end of line
- C-f move forward one character 

## Actions
- C-j insert new line character

# __vim__
## Visual Mode
- : enter **visual-ex-mode**
- C-p in **visual-ex-mode**: previous command

# __vimscript__
## Variables
- Declarations:
    - `let foo=42` assigns 42 to the **var** `foo`
    - `set textwidth=80` assigns 80 to the **options** textwidth.
    - `setlocal textwidth=80` assigns 80 to the **options** textwidth.
    - `echo &textwidth` echo the value of the **option** textwidth.
    - `echo textwidth` echo the value of the **var** textwidth.
    - `let &textwidth=80` assigns to the **option** textwidth using the **var**
      syntax.
- Scoping
    - `let b:hello=42` declares a variable local to the **buffer**
    - `let local:hello=42` inside a **function**, declares a local variable
    - see `:h internal-variables` for full documentation
    - `echo a:0` inside a variadic function, gets the first unnamed argument
## Comparison
- a == 0: comparison to 0 are **always truthy**

