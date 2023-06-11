

function manageModes()
{
    if(window.localStorage.isDark=="true")
    {
        swapCSS(true);
        window.localStorage.isDark="false";
    }
    else
    {
        swapCSS(false);
        window.localStorage.isDark="true";
    }

}


$(window).on('load',function() {

    if (window.localStorage.getItem("isDark") === null)
    {
        window.localStorage.isDark=="true"
    }
    
    if(window.localStorage.isDark=="true") 
    {
        if( !($( "#checkBox1" ).is(":checked")) || !($( "#checkBox2" ).is(":checked")))  
        {
            $("#checkBox1").prop('checked', 'checked');
            $("#checkBox2").prop('checked', 'checked');
            window.localStorage.isDark="true";
            swapCSS(false);

        }
        else
        {
            swapCSS(false);
        }
    }
    else
    {
        if( ($( "#checkBox1" ).is(":checked")) || ($( "#checkBox2" ).is(":checked"))) 
        {
            $("#checkBox1").removeAttr('checked');
            $("#checkBox2").removeAttr('checked');
            window.localStorage.isDark="false";
            swapCSS(true);
        }
    }
});


function swapCSS(cond)
{
    var cssLight = $("[id^=cssLight]");
    var cssDark = $("[id^=cssDark]");
    if(cond==true) 
    {
        cssLight.attr('rel', "stylesheet");
        cssDark.attr('rel', "stylesheet alternate");
        $('#modeImg1').attr('src', '/static/img/sun.png');
        $('#modeImg2').attr('src', '/static/img/sun.png');
        $("#checkBox1").removeAttr('checked');
        $("#checkBox2").removeAttr('checked');
    }
    else 
    {
        cssLight.attr('rel', "stylesheet alternate");
        cssDark.attr('rel', "stylesheet");
        $('#modeImg1').attr('src', '/static/img/moon.png');
        $('#modeImg2').attr('src', '/static/img/moon.png');
        $("#checkBox1").prop('checked', 'checked');
        $("#checkBox2").prop('checked', 'checked');
    }
}