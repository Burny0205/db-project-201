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

function timeTimeCheck()
{
    var result = $('#GridViewEmpSchedule :checked').not(':disabled');
    if(result.length > 3)
    {
        alert('Cannot select more than three times');
    }
}


// validate the form before submission
function validateAppointment() {
    salon.log('in here');
	var valid = false, gvTime, errormg = "";


    var txtDate = $('#TextBoxSpaDate').val().length;
    var srvCount = $('#services input:checked').length;

    if(document.location.href.indexOf('Salon')) {
        gvTime = $('#GridViewSalonEmpSchedule :checked').not(':disabled').length;
    }
    else {
        gvTime = $('#GridViewEmpSchedule :checked').not(':disabled').length;
	}

    if(srvCount == 0) {
        errormsg = salon.errors.noservice;
        salon.alert(errormsg);
    }
    else if (txtDate == 0) {
        errormsg = salon.errors.nodate;
        salon.alert(errormsg);
    }
    else if (gvTime == 0) {
        errormsg = salon.errors.notime;
        salon.alert(errormsg);
    }
    else if (gvTime < 3) {
        errormsg = salon.errors.lowtime;
        errormsg = errormsg.format(3-gvTime);
        salon.alert(errormsg);
    }
    else {
        valid = true;
    }
	return valid;
}
