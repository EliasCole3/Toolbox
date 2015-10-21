#Include lib\DynamicHotstrings.ahk

hotstrings("conlog(\w+)\s", "conlog")
hotstrings("email(\w+)\s", "email")
hotstrings("test([\w,]+)\s", "test")
hotstrings("foo([\w,-_]+)\s", "foo")
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
    inputs := []

    for each, field in StrSplit($1, ",")
        inputs.Insert(field)

    ; value1 := inputs[1]
    ; value2 := inputs[2]
    ; SendInput %var1%

    
    ; html
    ; -------------------------
    
    SendInput htmlString {+}= ```n
    SendInput <div id="custom-radio-button-wrapper" class="">`n
    SendInput {space 2}<div class="btn-group" role="group">`n
    
    for each, field in inputs
      SendInput {space 4}<button id="%field%" type="button" class="btn btn-default custom-radio-button">%field%</button>`n
      
    SendInput {space 2}</div>`n
    
    for each, field in inputs
      SendInput {space 2}<input id="%field%-radio" name="environment" class="hidden" type="radio">`n

    SendInput </div>```n
    
    
    SendInput `n`n`n
    
    
    ; js
    ; -------------------------
    
    SendInput let buttonIds = [
    
    for each, field in inputs
      SendInput "%field%",{space}
    
    ; removing the last space and comma
    SendInput {BackSpace 2}
    
    SendInput ]`n
    SendInput `n
    SendInput buttonIds.forEach(buttonId => {{}`n
    SendInput {space 2}$("{#}" {+} buttonId).click(e => {{}`n
    SendInput {space 4}let button = $(e.currentTarget)`n
    SendInput {space 4}$("{#}" {+} buttonId {+} "-radio").click()`n
    SendInput {space 4}$(".employee-filter-button").removeClass("btn-success")`n
    SendInput {space 4}button.addClass("btn-success")`n
    SendInput {space 2}{}})`n
    SendInput {}})`n
    SendInput `n
    
    
return


