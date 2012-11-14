jQuery(function(){


   jQuery('#contactsubmit').click(function() {
    var name = jQuery('#contact_name').val();
 	var subject = jQuery('#subject').val();
	 var email = jQuery('#contact_email').val();
	 var contactmsg = jQuery('#contactmsg').val();
		 if(name =='')
		 {
		 jQuery('#contact_name').addClass('error');
		 }else{ 
		 jQuery('#contact_name').removeClass('error'); 
		 }
		if(subject =='')
		 {
		 jQuery('#subject').addClass('error');
		 }else{ 
		 jQuery('#subject').removeClass('error'); 
		 }
		if(contactmsg =='')
		 {
		 jQuery('#contactmsg').addClass('error');
		 }else{ 
		 jQuery('#contactmsg').removeClass('error'); 
		 }
		 var filter = /^((\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*?)\s*;?\s*)+/;
			if(filter.test(email)){
			   jQuery('#contact_email').removeClass('error'); 
			}
			else{
			  jQuery('#contact_email').addClass('error');

			}
	   jQuery.ajax({
            type: 'post',
            url: 'submitform.php',
            data: 'contact_name=' + name + '&contact_email=' + email + '&contactmsg=' + contactmsg + '&subject=' + subject,
            success: function(results) {
				jQuery('#response').html(results);
			}
        }); // end ajax
	});
});
		