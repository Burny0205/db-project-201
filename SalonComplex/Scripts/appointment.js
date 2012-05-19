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
	alert('yay!');
	console.log($('#TextBoxSpaDate').val().length);
	if ($('#TextBoxSpaDate').val().length > 0)
		return true;
	else {
		return false;
	}
}
