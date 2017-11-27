$(function(){
	var dateBefore=null;
	$("input[id*=DatePicker]").datepicker({
		dateFormat: 'dd/mm/yy',
		showOn: 'button',
		buttonImage: '../images/icon/calendar.gif',
		buttonImageOnly: true,
		dayNamesMin: ['อา', 'จ', 'อ', 'พ', 'พฤ', 'ศ', 'ส'], 
		monthNamesShort: ['มกราคม','กุมภาพันธ์','มีนาคม','เมษายน','พฤษภาคม','มิถุนายน','กรกฎาคม','สิงหาคม','กันยายน','ตุลาคม','พฤศจิกายน','ธันวาคม'],
		changeMonth: true,
		changeYear: true ,
		buttonText: 'ระบุวันที่',
		beforeShow:function(){
			if($(this).val()!=""){
				var arrayDate=$(this).val().split("/");		
				arrayDate[2]=parseInt(arrayDate[2]);
				$(this).val(arrayDate[0]+"/"+arrayDate[1]+"/"+arrayDate[2]);
			}
			setTimeout(function(){
				$.each($(".ui-datepicker-year option"),function(j,k){
					var textYear=parseInt($(".ui-datepicker-year option").eq(j).val());
					$(".ui-datepicker-year option").eq(j).text(textYear);
				});				
			},50);

		},
		onChangeMonthYear: function(){
			setTimeout(function(){
				$.each($(".ui-datepicker-year option"),function(j,k){
					var textYear=parseInt($(".ui-datepicker-year option").eq(j).val());
					$(".ui-datepicker-year option").eq(j).text(textYear);
				});				
			},50);		
		},
		onClose:function(){
			if($(this).val()!="" && $(this).val()==dateBefore){			
				var arrayDate=dateBefore.split("/");
				arrayDate[2]=parseInt(arrayDate[2]);
				$(this).val(arrayDate[0]+"/"+arrayDate[1]+"/"+arrayDate[2]);	
			}		
		},
		onSelect: function(dateText, inst){ 
			dateBefore=$(this).val();
			var arrayDate=dateText.split("/");
			arrayDate[2]=parseInt(arrayDate[2]);
			$(this).val(arrayDate[0]+"/"+arrayDate[1]+"/"+arrayDate[2]);
		}

	});
	
});