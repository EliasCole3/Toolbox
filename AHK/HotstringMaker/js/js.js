$(function() {
  
  $("#go").click(function() {
    
    var hotstring = $("#hotstring").val();
    
    // hotstring = hotstring.replace(/\r/g, "***");
    // hotstring = hotstring.replace(/\n/g, "`n\n");
    
    //autohotkey special characters
    hotstring = hotstring.replace(/{/g, "placeholder1");
    hotstring = hotstring.replace(/}/g, "placeholder2");
    hotstring = hotstring.replace(/#/g, "placeholder3");
    hotstring = hotstring.replace(/\+/g, "placeholder4");
    
    hotstring = hotstring.replace(/placeholder1/g, "{{}");
    hotstring = hotstring.replace(/placeholder2/g, "{}}");
    hotstring = hotstring.replace(/placeholder3/g, "{#}");
    hotstring = hotstring.replace(/placeholder4/g, "{+}");
    
    //indenting
    hotstring = hotstring.replace(/  /g, "{space 2}");
    hotstring = hotstring.replace(/(\{space 2\}){8}/g, "{space 16}");
    hotstring = hotstring.replace(/(\{space 2\}){7}/g, "{space 14}");
    hotstring = hotstring.replace(/(\{space 2\}){6}/g, "{space 12}");
    hotstring = hotstring.replace(/(\{space 2\}){5}/g, "{space 10}");
    hotstring = hotstring.replace(/(\{space 2\}){4}/g, "{space 8}");
    hotstring = hotstring.replace(/(\{space 2\}){3}/g, "{space 6}");
    hotstring = hotstring.replace(/(\{space 2\}){2}/g, "{space 4}");

    var array = hotstring.split("\n");
    
    array.forEach(function(element, index, array) {
      array[index] = "SendInput " + element + "`n";
    });
    
    var output = array.join("\n");
    
    $("#output").val(output);
    
  });
  
});