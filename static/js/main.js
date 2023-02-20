

function manageModes()
{
    if(window.sessionStorage.isDark=="true")
    {
        swapCSS(true);
        window.sessionStorage.isDark="false";
    }
    else
    {
        swapCSS(false);
        window.sessionStorage.isDark="true";
    }

}


$(window).on('load',function() {

    
    if(window.sessionStorage.isDark=="true") 
    {
        if( !($( "#checkBox1" ).is(":checked")) || !($( "#checkBox2" ).is(":checked")))  
        {
            $("#checkBox1").prop('checked', 'checked');
            $("#checkBox2").prop('checked', 'checked');
            window.sessionStorage.isDark="true";
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
            window.sessionStorage.isDark="false";
            swapCSS(true);
        }
    }
});


function swapCSS(cond)
{
    var cssStyle = $("[id^=css]");
    if(cond==true) 
    {
        cssStyle.attr('href', "/static/css/style-light.css");
        cssStyle.attr('id', "cssDark");
        $('#modeImg1').attr('src', '/static/img/sun.png');
        $('#modeImg2').attr('src', '/static/img/sun.png');
        $("#checkBox1").removeAttr('checked');
        $("#checkBox2").removeAttr('checked');
    }
    else 
    {
        cssStyle.attr('href', "/static/css/style-dark.css");
        cssStyle.attr('id', "cssLight");
        $('#modeImg1').attr('src', '/static/img/moon.png');
        $('#modeImg2').attr('src', '/static/img/moon.png');
        $("#checkBox1").prop('checked', 'checked');
        $("#checkBox2").prop('checked', 'checked');
    }
}