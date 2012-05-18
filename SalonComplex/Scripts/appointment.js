var hotspot = document.getElementsByName('hotspot');
var hotspot_content = document.getElementsByName('hotspot_content');



function hotspot_load() {
    for (var i = 0; i < hotspot.length; i++) {
        hotspot[i].someProperty = i;
        hotspot[i].onclick = function () { hotspot_toggle(this.someProperty) };
    }
    for (var i = 0; i < hotspot_content.length; i++) {
        hotspot_content[i].style.display = 'none';
    }
}

function hotspot_toggle(i) {
    if (typeof ClickTaleExec == 'function') ClickTaleExec('hotspot_toggle(' + i + ')');
    if (hotspot_content[i].style.display == 'none') {
        hotspot_content[i].style.display = ''
    }
    else
        hotspot_content[i].style.display = 'none'
}

function hotspot_show_all() {
    for (var i = 0; i < hotspot_content.length; i++) {
        hotspot_content[i].style.display = '';
    }
}

function hotspot_hide_all() {
    for (var i = 0; i < hotspot_content.length; i++) {
        hotspot_content[i].style.display = 'none';
    }
}

function show_service_cat(set) {
    // hide services <dd> to fix mozilla vertical space problem...
    document.getElementById('service').style.display = 'none';
    // hide all imagesets...
    document.getElementById('service_cat17157').style.display = 'none';
    document.getElementById('service_cat17158').style.display = 'none';
    // show the selected serviceset...
    document.getElementById('service_cat' + set).style.display = 'block';
    // show services <dd> again...
    document.getElementById('service').style.display = 'block';
}

var submitted = false;

function do_button_submit(btn, disable, other_btns) {
    if (submitted == true) { return; }
    if (document.form.button_submit) {
        submitted = disable;
        document.form.button_submit.value = btn.id;
        btn.disabled = disable;
        if (other_btns) {
            for (var i = 0; i < other_btns.length; i++) {
                if (document.form.elements[other_btns[i]]) {
                    document.form.elements[other_btns[i]].disabled = disable;
                }
            }
        }
        document.form.submit();
        document.form.button_submit.value = '';
    }
    return;
}

function to_fixed(total) {
    var stotal = '0.00';
    if (total.toFixed) {
        stotal = total.toFixed(2);
        if (stotal.substring(0, 1) == '.') stotal = '0' + stotal;
    }
    else {
        var num = total, sign, cents;
        sign = (num == (num = Math.abs(num)));
        num = Math.floor(num * 100 + 0.50000000001);
        cents = num % 100;
        num = Math.floor(num / 100).toString();
        if (cents < 10) cents = "0" + cents;
        for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
            num = num.substring(0, num.length - (4 * i + 3)) + ',' + num.substring(num.length - (4 * i + 3));
        stotal = (((sign) ? '' : '-') + num + '.' + cents);
    }
    return stotal;
}

function service_calc() {
    var total = 0;

    $('input:checked').each(function () {
        total += getPrice($(this).val());
    });

    $('#service_value').html(to_fixed(total));
}

function getPrice(val)
{
    var lowerb = 0.0;
    
    if(val.length > 0) {
        var lw = val.split("|");
        if(lw.length > 1) {
            return parseFloat(lw[1]);
        }
        else {
            return lowerb;
        }
    }
    else {
        return lowerb;
    }
}

function time_1_onlcik() {
}

function timeTimeCheck()
{
    var result = $('#GridViewEmpSchedule :checked').not(':disabled');
    if(result.length > 3)
    {
        alert('Cannot select more than three times');
    }
}
