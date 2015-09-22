#Include lib\DynamicHotstrings.ahk

hotstrings("conlog(\w+)\s", "conlog")
hotstrings("email(\w+)\s", "email")
hotstrings("test([\w,]+)\s", "test")
hotstrings("foo([\w,]+)\s", "foo")
Return

conlog:
    SendInput, console.log(%$1%);
return

email:
    SendInput, Hi %$1%,{Enter 2}Sample text.{Enter 2}Thanks,{Enter}Zach
return

test:
    ;newArray := StrSplit(%$1% [`|])
    ;newArray := StrSplit(%$1% [`|])
    ;SendInput newArray0
    ;SendInput newArray1
    SendInput, function(
    for each, field in StrSplit($1, ",")
        ;msgbox, % "for: " . field
        SendInput %field%,{space}
     
     SendInput {Backspace}{Backspace}
     SendInput, ) {{}{}}`n
        
return

foo:
    array2 := []

    for each, field in StrSplit($1, ",")
        array2.Insert(field)

    var1 := array2[1]
    SendInput %var1%
return


