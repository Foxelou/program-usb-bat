<!-- :: Batch section
@echo off
setlocal

echo Select an option:
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
echo End of HTA window, reply: "%HTAreply%"
goto :EOF
-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>HTA Radio Buttons</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(440,170);

var reply = "No button selected";
function closeHTA(){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
</HEAD>
<BODY>
<p>Which prize do you prefer?</p>
<label><input type="radio" name="prize" onclick="reply=this.value" value="House">House</label>
<label><input type="radio" name="prize" onclick="reply=this.value" value="Money">$1 million</label>
<label><input type="radio" name="prize" onclick="reply=this.value" value="None">No prize thanks, I'm already happy <b>:)</b></label>
<br><br>
<button onclick="closeHTA();">Submit</button>
</BODY>
</HTML>
