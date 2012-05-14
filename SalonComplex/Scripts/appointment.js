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
function show_client_type() {
   /* set = document.forms.elements['client_type'];
    var client_type;
    for (var i = 0; i < set.length; i++) {
        if (set[i].checked) {
            client_type = set[i].value;
        }
    }
    if (client_type == 'first_time') {
        document.getElementById('client_email_password').style.display = 'none';
    }
    else if (client_type == 'existing') {
        document.getElementById('client_email_password').style.display = 'block';
    }
    else {
        document.getElementById('client_email_password').style.display = 'none';
    }
    */
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

function client_change(value) {
    document.getElementById('client_existing').checked = true;
}

var open_close = new Array();
open_close[20120411] = '0000000000000000000011111111111111111000000000000';
open_close[20120412] = '0000000000000000000011111111111111111000000000000';
open_close[20120413] = '0000000000000000000011111111111111111000000000000';
open_close[20120414] = '0000000000000000001111111111111110000000000000000';
open_close[20120417] = '0000000000000000000011111111111111111000000000000';
open_close[20120418] = '0000000000000000000011111111111111111000000000000';
open_close[20120419] = '0000000000000000000011111111111111111000000000000';
open_close[20120420] = '0000000000000000000011111111111111111000000000000';
open_close[20120421] = '0000000000000000001111111111111110000000000000000';
open_close[20120424] = '0000000000000000000011111111111111111000000000000';
open_close[20120425] = '0000000000000000000011111111111111111000000000000';
open_close[20120426] = '0000000000000000000011111111111111111000000000000';
open_close[20120427] = '0000000000000000000011111111111111111000000000000';
open_close[20120428] = '0000000000000000001111111111111110000000000000000';
open_close[20120501] = '0000000000000000000011111111111111111000000000000';
open_close[20120502] = '0000000000000000000011111111111111111000000000000';
open_close[20120503] = '0000000000000000000011111111111111111000000000000';
open_close[20120504] = '0000000000000000000011111111111111111000000000000';
open_close[20120505] = '0000000000000000001111111111111110000000000000000';
open_close[20120508] = '0000000000000000000011111111111111111000000000000';
open_close[20120509] = '0000000000000000000011111111111111111000000000000';
open_close[20120510] = '0000000000000000000011111111111111111000000000000';
var times = new Array();
times[0] = '12:00am';
times[1] = '12:30am';
times[2] = '1:00am';
times[3] = '1:30am';
times[4] = '2:00am';
times[5] = '2:30am';
times[6] = '3:00am';
times[7] = '3:30am';
times[8] = '4:00am';
times[9] = '4:30am';
times[10] = '5:00am';
times[11] = '5:30am';
times[12] = '6:00am';
times[13] = '6:30am';
times[14] = '7:00am';
times[15] = '7:30am';
times[16] = '8:00am';
times[17] = '8:30am';
times[18] = '9:00am';
times[19] = '9:30am';
times[20] = '10:00am';
times[21] = '10:30am';
times[22] = '11:00am';
times[23] = '11:30am';
times[24] = '12:00pm';
times[25] = '12:30pm';
times[26] = '1:00pm';
times[27] = '1:30pm';
times[28] = '2:00pm';
times[29] = '2:30pm';
times[30] = '3:00pm';
times[31] = '3:30pm';
times[32] = '4:00pm';
times[33] = '4:30pm';
times[34] = '5:00pm';
times[35] = '5:30pm';
times[36] = '6:00pm';
times[37] = '6:30pm';
times[38] = '7:00pm';
times[39] = '7:30pm';
times[40] = '8:00pm';
times[41] = '8:30pm';
times[42] = '9:00pm';
times[43] = '9:30pm';
times[44] = '10:00pm';
times[45] = '10:30pm';
times[46] = '11:00pm';
times[47] = '11:30pm';
times[48] = '12:00am';

function show_time(d, date, time) {
   /* if (!time)
        time = document.forms['form'].elements['time_' + d].value;
    document.forms['form'].elements['time_' + d].options.length = 0;
    if (date) {
        if (open_close[date] != 'Undefined') {
            myOption = -1;
            for (i = 0; i <= 48; i++) {
                if (open_close[date].charAt(i) == '1') {
                    timeOption = times[i];
                    myOption++;
                    document.forms['form'].elements['time_' + d].options[myOption] = new Option(timeOption, timeOption);
                    if (time == timeOption)
                        document.forms['form'].elements['time_' + d].options[myOption].selected = true;
                }
            }
        }
    }*/
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

var prices = [];
prices[110036] = 500.00;
prices[110037] = 600.00;
prices[110038] = 250.00;
prices[110051] = 1200.00;
prices[110052] = 1150.00;
prices[110053] = 950.00;
prices[195816] = 700.00;
prices[110039] = 980.00;
prices[110040] = 1350.00;
prices[110041] = 800.00;
prices[110042] = 625.00;
prices[200867] = 250.00;
prices[115962] = 15.00;
prices[115964] = 12.00;
prices[110060] = 300.00;

function service_calc() {
   /* if (typeof ClickTaleExec == 'function') ClickTaleExec('service_calc()');
    total = 0;
    for (var service_option in prices) {
        if (document.getElementById('service_option' + service_option).checked)
            total += prices[service_option];
    }
    stotal = to_fixed(total);
    var service_value = document.getElementById('service_value');
    if (service_value) service_value.innerHTML = stotal;
    */

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
