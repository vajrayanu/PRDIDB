function doCheckUncheckAll(tblID, isChecked) {
    var table = document.getElementById(tblID);
    var rows = table.getElementsByTagName('tr');
    for (i = 0; i < rows.length; i++) {
        var cols = rows[i].getElementsByTagName('td');
        for (j = 0; j < cols.length; j++) {
            var inputs = cols[j].getElementsByTagName('input');
            for (k = 0; k < inputs.length; k++) {
                switch (inputs[k].type) {
                    case 'checkbox':
                        inputs[k].checked = isChecked;
                        break;
                    case 'text':
                        //sumscore += parseInt(inputs[k].value == '' ? '0' : inputs[k].value);
                        break;
                }
            }
        }
    }
}


function doFindCheckAll(tblID, chkAllID) {
    var isCheckAll = true;
    var table = document.getElementById(tblID);
    var rows = table.getElementsByTagName('tr');
    for (i = 1; i < rows.length; i++) {
        var cols = rows[i].getElementsByTagName('td');
        for (j = 0; j < cols.length; j++) {
            var inputs = cols[j].getElementsByTagName('input');
            for (k = 0; k < inputs.length; k++) {
                switch (inputs[k].type) {
                    case 'checkbox':
                        if (!inputs[k].checked) { isCheckAll = false; break; }
                        break;
                    case 'text':
                        //sumscore += parseInt(inputs[k].value == '' ? '0' : inputs[k].value);
                        break;
                }
            }
        }
    }
    // check all
    document.getElementById(chkAllID).checked = isCheckAll;
}

