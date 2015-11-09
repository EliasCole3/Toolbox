/*
for making an actual template: 

sed -i 's/<<entity>>/entity_key/g' work-order-planner.js
sed -i 's/<<entityCamelPlural>>/entityKeys/g' work-order-planner.js
sed -i 's/<<entityPascal>>/EntityKey/g' work-order-planner.js
sed -i 's/<<entityDashed>>/entity-key/g' work-order-planner.js
sed -i 's/<<entityCamel>>/entityKey/g' work-order-planner.js
sed -i 's/<<entityUnderscore>>/entity_key/g' work-order-planner.js

*/



/*

Basic JS

*/
:*:jjcon::
SendInput console.log()
Send {Left 1}
return

:*:jjale::
SendInput alert()
Send {Left 2}
return

:*:jj++::
SendInput " {+}  {+} "
Send {Left 4}
return

:*:jjcalled::
SendInput console.log("Called")
return

:*:jjhs::
SendInput htmlString {+}= ````
Send {Left 1}
return



/*

PHP

*/
:*:jj''::
SendInput " .  . "
Send {Left 4}
return

:*:jj..::
SendInput " .  . "
Send {Left 4}
return



/*

HTML

*/
:*:jjdivs::
SendInput <div id='' class=''></div>
Send {Left 6}
return

:*:jjdivd::
SendInput <div id="" class=""></div>
Send {Left 6}
return

:*:jjspans::
SendInput <span id='' class=''></span>
Send {Left 6}
return

:*:jjspand::
SendInput <span id="" class=""></span>
Send {Left 6}
return

:*:jj<!::
SendInput <{!}--  -->
Send {Left 4}
return

:*:jjbr::
SendInput <br>
return

:*:jjinput::
SendInput <input id='' name='' class='' type=''>
Send {Left 27}
return

:*:jjbut::
SendInput <button id='' class='btn btn-lg'></button>
Send {Left 9}
return

:*:jjtable::
SendInput <table id='' class=''></table>
Send {Left 8}
return

:*:jjtr::
SendInput <tr></tr>
Send {Left 5}
return

:*:jjth::
SendInput <th></th>
Send {Left 5}
return

:*:jjtd::
SendInput <td></td>
Send {Left 5}
return

:*:jjplus::
SendInput <i class='glyphicon glyphicon-plus'></i>
Send {Left 4}
return

:*:jjglyph::
SendInput <i class='glyphicon glyphicon-'></i>
Send {Left 6}
return

:*:jjlabel::
SendInput <label></label>
Send {Left 8}
return

:*:jjselect::
SendInput <select id=''></select>
Send {Left 11}
return

:*:jjoption::
SendInput <option value=''></option>
Send {Left 11}
return

:*:jjimg::
SendInput <img src=''>
Send {Left 2}
return



/*

Complex JS

*/
:*:jjfun::
SendInput temp: function() {{}`n
SendInput {space 2}`n
SendInput {}},
Send {Up 2}
Send {Home}
Send {Shift Down}
Send {Right 4}
Send {Shift Up}
return

:*:jjfilter::
SendInput var temp = array.filter(function(element) {{}`n
SendInput   return temp === temp;`n
SendInput {}});`n
Send {Up 3}
Send {Right 4}
return

:*:jjforeach::
SendInput array.forEach(function(element) {{}`n
SendInput   `n
SendInput {}});`n
Send {Up 3}
Send {Shift Down}
Send {Right 5}
Send {Shift Up}
return

:*:jjanon::
SendInput (function() {{}{}})();
Send {Left 5}
return

::jjfor::
SendInput for(var i = 0; i < {;} i{+}{+}) {{}`n
SendInput   `n
SendInput {}}`n
Send {Left 3}
Send {Up 2}
Send {Right 20}
return

::jjforin::
SendInput for(var prop in obj) {{}`n
SendInput `n
SendInput {}}`n
Send {Up 2}{Tab 2}
return

:*:jjswitch::
SendInput switch(varName) {{}`n
SendInput {space 2}case "case1":`n
SendInput {space 2}`n
SendInput {space 4}break;`n
SendInput {space 2}case "case2":`n
SendInput {space 2}`n
SendInput {space 4}break;`n
SendInput {space 2}case "case3":`n
SendInput {space 2}`n
SendInput {space 4}break;`n
SendInput {space 2}default:`n
SendInput {space 4}`n
SendInput {}}`n
return



/*

Ebot

*/
:*:jjnotify::
SendInput ebot.notify("")
Send {Left 2}
return

:*:jjmakeelement::
SendInput htmlString {+}= ebot.makeElement({{}`n
SendInput {space 2}tag: "button",`n
SendInput {space 2}content: "ButtonName",`n
SendInput {space 2}_class: "btn btn-sm",`n
SendInput {space 2}title: "click me!",`n
SendInput {space 2}"custom-attr": customAttrValue`n
SendInput {}});`n
return



/*

JQuery

*/
:*:jqclick::
SendInput $("").click(function() {{}{}});
Send {Left 3}
return

:*:jqready::
SendInput $(function() {{}{}});
Send {Left 3}
return

:*:jqattr::
SendInput $("").attr("");
Send {Left 12}
return

:*:jqhtml::
SendInput $("").html();
Send {Left 10}
return

:*:jqappend::
SendInput $("").append();
Send {Left 12}
return

:*:jqval::
SendInput $("").val();
Send {Left 9}
return

:*:jqhide::
SendInput $("").hide();
Send {Left 10}
return

:*:jqshow::
SendInput $("").show();
Send {Left 10}
return

:*:jqtrigger::
SendInput $("").trigger();
Send {Left 13}
return

:*:jqwhen::
SendInput $.when(deferred).then(function(data, status, jqXHR) {{}`n
SendInput {space 2}//stuff to do`n
SendInput {}});`n
return

:*:jqapply::
SendInput $.when.apply($, deferreds).done(function() {{}`n
SendInput {space 2}//do stuff after deferred is finished`n
SendInput {}});`n
return

:*:jqon::
SendInput $(".selector").on("click.namespace", function);`n
return

:*:jqoff::
SendInput $(".selector").off("click.namespace");`n
return

:*:jqchange::
SendInput $("selector").change(function() {{}{}});`n
Send {Left 3}
return

:*:jqajaxpost::
SendInput $.ajax({{}`n
SendInput   type: "POST",`n
SendInput   url: env.getApiUri() {+} "/MODEL_NAME",`n
SendInput   data: jsonDataForAjax,`n
SendInput   contentType: "application/json; charset=utf-8",`n
SendInput   success: function(data, status, jqXHR) {{}`n
SendInput     `n
SendInput   {}},`n
SendInput   error: function(jqXHR, status) {{}`n
SendInput     console.log("Error");`n
SendInput   {}}`n
SendInput {}});`n
return

:*:jqajaxget::
SendInput $.ajax({{}`n
SendInput   type: "GET",`n
SendInput   url: env.getApiUri() {+} "/MODEL_NAME",`n
SendInput   success: function(data, status, jqXHR) {{}`n
SendInput     `n
SendInput   {}},`n
SendInput   error: function(jqXHR, status) {{}`n
SendInput     console.log("Error");`n
SendInput   {}}`n
SendInput {}});`n
return



/*

ES6

*/
:*:esfun::
SendInput temp: () => {{}{}},
Send {Left 2}
Send {Enter}
Send {Up}
Send {Home}
Send {Shift Down}
Send {Right 4}
Send {Shift Up}
return

:*:esforeach::
SendInput array.forEach(element => {{}{}})
Send {Left 2}
Send {Enter}
Send {Up}
Send {Home}
Send {Shift Down}
Send {Right 5}
Send {Shift Up}
return

:*:esmap::
SendInput let temp = array.map(element => {{}`n
SendInput return temp`n
SendInput {}})`n
return

:*:esfilter::
SendInput let temp = array.filter(element => {{}`n
SendInput return temp === temp`n
SendInput {}})`n
return

:*:esclick::
SendInput $("").click(e => {{}{}})
Send {Left 2}
Send {Enter}
SendInput let element = $(e.currentTarget)
Send {Enter}
Send {Up 2}
Send {Home}
Send {Right 3}
return

:*:eschange::
SendInput $("selector").change(() => {{}{}})
Send {Left 2}
return

:*:esapply::
SendInput $.when.apply($, deferreds).done(() => {{}{}})
Send {Left 2}
return

:*:estoggleflag::
SendInput let flag = true`n
SendInput `n
SendInput if(flag) {{}`n
SendInput `n
SendInput {}} else {{}`n
SendInput `n
SendInput {}}`n
SendInput `n
SendInput flag = {!}flag`n
return

:*:esconvar::
SendInput console.log(``temp: ${{}temp{}}``)
Send {Left 11}
Send {Shift Down}
Send {Left 4}
Send {Shift Up}
Send {Ctrl Down}
Send {Shift Down}
Send {d}
Send {Ctrl Up}
Send {Shift Up}
Send {Ctrl Down}
Send {v}
Send {Ctrl Up}
return

:*:eshtmlfun::
SendInput let htmlString = `````n`n`n`n
SendInput return htmlString
Send {Up 2}
Send {Tab}
return

::esforin::
SendInput for(let prop in obj) {{}`n
SendInput `n
SendInput {}}`n
Send {Up 2}{Tab 2}
return



/*

CLI/Shell/Bash

*/
:*:jjcommit::
SendInput git commit -a -m "" 
Send {Left 1}
return

:*:jjcfirst::
SendInput ssh bilbo@192.241.203.33
return

::shawork::
SendInput alias ls="ls -al"`n
SendInput alias ..="cd .."`n
SendInput alias www="cd /c/wamp/www"`n
SendInput alias new="cd /c/wamp/www/New"`n
SendInput alias workspace="cd ~/workspace"`n
SendInput alias labcloud="cd ~/workspace/labcloud"`n
SendInput alias ws="cd ~/workspace"`n
SendInput alias berrystack="cd ~/workspace/app-berrystack"`n
SendInput alias bs="cd ~/workspace/app-berrystack"`n
SendInput alias sublimeopen="'C:\Program Files\Sublime Text 2\sublime_text.exe'"`n
SendInput alias notepadopen="'C:\Program Files (x86)\Notepad{+}{+}\notepad{+}{+}.exe'"`n
SendInput alias nano="'C:\Users\Bliss\Desktop\nano\nano.exe'"`n
SendInput clear`n
SendInput alias ..="cd .."`n
return

::gogo::
; SendInput alias ls="ls -al"`n
SendInput alias ..="cd .."`n
SendInput alias www="cd /c/wamp/www"`n
SendInput alias new="cd /c/wamp/www/New"`n
SendInput alias workspace="cd ~/workspace"`n
SendInput alias ws="cd ~/workspace"`n
SendInput alias berrystack="cd ~/workspace/app-berrystack"`n
SendInput alias labcloud="cd ~/workspace/labcloud"`n
SendInput alias toolbox="cd ~/Desktop/Toolbox"`n
SendInput alias bs="cd ~/workspace/app-berrystack"`n
SendInput alias sublimeopen="'C:\Program Files\Sublime Text 2\sublime_text.exe'"`n
SendInput alias notepadopen="'C:\Program Files (x86)\Notepad{+}{+}\notepad{+}{+}.exe'"`n
SendInput alias nano="'C:\Users\Bliss\Desktop\nano\nano.exe'"`n
SendInput alias hostgator="ssh -p 2222 elias@198.57.247.143"`n
SendInput alias droplet1="ssh bilbo@192.241.203.33"`n
SendInput alias ..="cd .."`n
SendInput alias orange="ssh eliascol@gauntlet.asoshared.com"`n
return

:*:shadroplet1::
SendInput alias composer="php ~/composer.phar"`n
SendInput alias ..="cd .."`n
return

:*:jjpush::
SendInput git push origin master
return



/*

Chosen

*/
::chosenchangehandler::
SendInput assignHandlerTempSelect: function() {{}`n
SendInput {space 2}$("{#}temp-select").chosen().change(function() {{}`n
SendInput {space 4}var tempId = $("{#}temp-select option:selected").val();`n
SendInput {space 2}{}});`n
SendInput {}},`n
return

:*:chosenchange::
SendInput $("").chosen().change(function() {{}`n
SendInput {space 2}`n
SendInput {}});
Send {Up 4}
Send {Home}
Send {Right 3}
return

:*:chosenupdated::
SendInput $("").trigger("chosen:updated");
Send {Home}
Send {Right 3}
return



/*

Google-fu


*/
:*:-w3::
SendInput -site:w3schools.com
return

:*:jjsr::
SendInput site:reddit.com
return

:*:jjsso::
SendInput site:stackoverflow.com
return

:*:jjswp::
SendInput site:wikipedia.org
return



/*

Node

*/
:*:noderouter::
SendInput app.get('/URI', function(req, res) {{}`n
SendInput res.sendFile(__dirname {+} '/URI')`n
SendInput {}})`n
return



/*

Voice Attack

*/
::vaddd::
Send {End}
Send {Shift Down}
Send {Home}
Send {Shift Up}
Send {Delete}
return


/*

Miscellaneous

*/
:*:jjpassby::
SendInput var obj1 = {{}{}}; `n
SendInput obj1["testprop"] = "lalala"; `n
SendInput var obj2 = obj1; `n
SendInput  `n
SendInput console.log(obj1.testprop); `n
SendInput console.log(obj2.testprop); `n
SendInput  `n
SendInput obj1.testprop = "Objects are passed by reference"; `n
SendInput  `n
SendInput console.log(obj1.testprop); `n
SendInput console.log(obj2.testprop); `n
SendInput    `n
SendInput console.log("----------"); `n
SendInput    `n
SendInput var testval1 = "jajaja"; `n
SendInput var testval2 = testval1; `n
SendInput  `n
SendInput console.log(testval1); `n
SendInput console.log(testval2); `n
SendInput    `n
SendInput testval1 = "The value below is the same as before because non-objects are passed by value"; `n
SendInput  `n
SendInput console.log(testval1); `n
SendInput console.log(testval2); `n
return

/*
XButton1::
SendInput {MButton}{enter}

XButton2::
SendInput {click}{enter}
*/

:*:ddd::
FormatTime, CurrentDateTime,, MM.dd.yy
SendInput %CurrentDateTime%
return

:R*?:jjdate::
FormatTime, CurrentDateTime,, MM.dd.yy
SendInput %CurrentDateTime%
return

:*:dd-::
FormatTime, CurrentDateTime,, MM-dd-yy
SendInput %CurrentDateTime%
return

:*:jjsig::
SendInput All the best,`nElias
return

:*:jjmc::
SendInput `/`*`n`n`n`n`*`/
Send {Up 2}
return




/*

Templates

*/
:*:eswidgetstart::
SendInput $(() => {{}`n
SendInput {space 2}abc.initialize()`n
SendInput {space 2}// ebot.updateDocumentation(abc)`n
SendInput {}})`n
SendInput `n
SendInput `n
SendInput let abc = {{}`n
SendInput {space 2}`n
SendInput {space 2}initialize: () => {{}`n
SendInput {space 4}abc.assignInitialHandlers()`n
SendInput {space 4}abc.enableChosen()`n
SendInput {space 2}{}},`n
SendInput `n
SendInput {space 2}assignInitialHandlers: () => {{}`n
SendInput {space 4}`n
SendInput {space 2}{}},`n
SendInput `n
SendInput {space 2}enableChosen: () => {{}`n
SendInput {space 4}let chosenOptions = {{}`n
SendInput {space 6}search_contains: true`n
SendInput {space 4}{}}`n
SendInput {space 4}$("{#}order-type-select").chosen(chosenOptions)`n
SendInput {space 4}$("{#}order_type_select_chosen").css("width", "300px")`n
SendInput {space 2}{}},`n
SendInput `n
SendInput {space 2}array: [],`n
SendInput `n
SendInput {}}`n
return

::tpgruntfile::
SendInput module.exports = function(grunt) {{}`n
SendInput `n
SendInput {space 2}grunt.initConfig({{}`n
SendInput `n
SendInput {space 4}watch: {{}`n
SendInput {space 6}scss: {{}`n
SendInput {space 8}files: ['css/**/*.scss'],`n
SendInput {space 8}tasks: ['sass:build'],`n
SendInput {space 6}{}},`n
SendInput {space 6}babel: {{}`n
SendInput {space 8}files: [`n
SendInput {space 10}'module/FcfnWorkOrderPlanner/assets/work-order-planner/js/work-order-planner-es6.js',`n
SendInput {space 10}'module/Application/assets/core/js/AssignmentManagerEmbedded/assignment-manager-embedded-es6.js',`n
SendInput {space 10}'module/FcfnShipmentOrderManager/assets/shipment-order-manager/js/shipment-order-manager-es6.js'`n
SendInput {space 8}],`n
SendInput {space 8}tasks: ['babel'],`n
SendInput {space 6}{}},`n
SendInput {space 6}react: {{}`n
SendInput {space 8}files: ['js/test.jsx', 'js/js.jsx'],`n
SendInput {space 8}tasks: ['react'],`n
SendInput {space 6}{}},`n
SendInput {space 6}browserify: {{}`n
SendInput {space 8}files: ['js/js.js', 'js/yEd-builder.js'], `n
SendInput {space 8}tasks: ['browserify']`n
SendInput {space 6}{}}`n
SendInput {space 4}{}},`n
SendInput {space 4}`n
SendInput {space 4}sass: {{}{space 16}{space 16}{space 10} // Task`n
SendInput {space 6}build: {{}{space 16}{space 16}{space 8}// Target`n
SendInput {space 8}options: {{}{space 16}{space 16}{space 2} `n
SendInput {space 10}style: 'expanded'`n
SendInput {space 8}{}},`n
SendInput {space 8}files: {{}{space 16}{space 16}{space 4} `n
SendInput {space 10}'build/css/css.css': 'css/scss.scss',{space 6} // 'destination': 'source'`n
SendInput {space 8}{}}`n
SendInput {space 6}{}}`n
SendInput {space 4}{}},`n
SendInput {space 4}`n
SendInput {space 4}babel: {{}`n
SendInput {space 6}options: {{}`n
SendInput {space 8}sourceMap: true`n
SendInput {space 6}{}},`n
SendInput {space 6}build: {{}`n
SendInput {space 8}files: {{}`n
SendInput {space 10}'./module/FcfnWorkOrderPlanner/assets/work-order-planner/js/work-order-planner.js': './module/FcfnWorkOrderPlanner/assets/work-order-planner/js/work-order-planner-es6.js',`n
SendInput {space 10}'./module/Application/assets/core/js/AssignmentManagerEmbedded/assignment-manager-embedded.js': './module/Application/assets/core/js/AssignmentManagerEmbedded/assignment-manager-embedded-es6.js',`n
SendInput {space 10}'./module/FcfnShipmentOrderManager/assets/shipment-order-manager/js/shipment-order-manager.js': './module/FcfnShipmentOrderManager/assets/shipment-order-manager/js/shipment-order-manager-es6.js'`n
SendInput {space 8}{}}`n
SendInput {space 6}{}}`n
SendInput {space 4}{}},`n
SendInput `n
SendInput {space 4}react: {{}`n
SendInput {space 6}single_file_output: {{}`n
SendInput {space 8}files: {{}`n
SendInput {space 10}'js/test.js': 'js/test.jsx',`n
SendInput {space 10}'js/js.js': 'js/js.jsx'`n
SendInput {space 8}{}}`n
SendInput {space 6}{}}`n
SendInput {space 4}{}},`n
SendInput `n
SendInput {space 4}shell: {{}`n
SendInput {space 6}dirListing: {{}`n
SendInput {space 8}command: 'ls'`n
SendInput {space 6}{}}`n
SendInput {space 4}{}},`n
SendInput `n
SendInput {space 4}browserify: {{}`n
SendInput {space 6}dist: {{}`n
SendInput {space 8}files: {{}`n
SendInput {space 10}'js/bundle.js': ['js/js.js'],`n
SendInput {space 10}'js/yEd-builder-bundle.js': ['js/yEd-builder.js'],`n
SendInput {space 8}{}}`n
SendInput {space 6}{}}`n
SendInput {space 4}{}}`n
SendInput `n
SendInput {space 2}{}});`n
SendInput  `n
SendInput {space 2}grunt.registerTask("default", ["watch"]);`n
SendInput  `n
SendInput {space 2}grunt.loadNpmTasks('grunt-react');`n
SendInput {space 2}grunt.loadNpmTasks('grunt-contrib-concat');`n
SendInput {space 2}grunt.loadNpmTasks('grunt-contrib-watch');`n
SendInput {space 2}grunt.loadNpmTasks('grunt-contrib-sass');`n
SendInput {space 2}grunt.loadNpmTasks('grunt-babel');`n
SendInput {space 2}grunt.loadNpmTasks('grunt-shell');`n
SendInput {space 2}grunt.loadNpmTasks('grunt-browserify');`n
SendInput  `n
SendInput {}};`n
SendInput `n
return
































































