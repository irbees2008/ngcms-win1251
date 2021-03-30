(function(jQuery) {	
	jQuery.fn.undo_redo = function(opt) {
	var areaid;
	var optbf = null;
	var store_data = new Array('');
	var undo_pos = 0;		
	var optbf = opt;
	if(optbf == null) return;		
	areaid = this;	
		if(!jQuery.browser.opera) areaid.keydown(key_handler);
		  else areaid.keypress(key_handler); // opera fix				
		optbf.undo_btn.click(go_back);
		enable_back(false);
		optbf.redo_btn.click(go_forward);
		enable_forward(false); 
		areaid.keyup(backup_handler);		
		areaid.focusin(backup);
						
	function enable_back(bool){
		if(!bool) optbf.undo_btn.removeClass(optbf.enable_btn_cls).addClass(optbf.disable_btn_cls);			
		  else optbf.undo_btn.removeClass(optbf.disable_btn_cls).addClass(optbf.enable_btn_cls);		
	}
	
	function enable_forward(bool) {
		if(!bool) optbf.redo_btn.removeClass(optbf.enable_btn_cls).addClass(optbf.disable_btn_cls);			
		  else optbf.redo_btn.removeClass(optbf.disable_btn_cls).addClass(optbf.enable_btn_cls);
	}
		
	function backup_handler(e) {		
		if(e.keyCode != 17 && !(e.ctrlKey && (e.keyCode == 89 || e.keyCode == 90))) {
			if(areaid.val().length != 0) enable_back(true);
			  else enable_back(false);			
			if(undo_pos != 0) {
				store_data.slice(0,store_data.length - undo_pos);
				enable_forward(false);
				undo_pos = 0;
			}
			if(e.keyCode == 8 || e.keyCode == 13 || e.keyCode == 32 || e.keyCode == 46 || (e.ctrlKey && (e.keyCode == 67 || e.keyCode == 86))) backup();
		}
	}

	function key_handler(e) {
		if(optbf.keyboard && e.ctrlKey) {
			if(e.keyCode == 89) { // y
				e.preventDefault();
				go_forward();
			} else if(e.keyCode == 90) { // z			
				e.preventDefault();
				go_back();
			}
		}		
		if(e.keyCode == 9) {	
			e.preventDefault();
			backup();				
		}
	}		
	
	function go_back() {		
		if(undo_pos == 0) {
			backup();
			undo_pos++;
		}		
		if(undo_pos != store_data.length) {
			undo_pos++;			
			areaid[0].value = store_data[store_data.length - undo_pos];			
			enable_forward(true);			
			if(undo_pos == store_data.length) enable_back(false);
		}
		areaid.focus();		
	};
	
	function go_forward() {
		if(undo_pos > 1) {
			areaid[0].value = store_data[store_data.length - --undo_pos];			
			enable_back(true);
			if(undo_pos == 1) enable_forward(false);
		}
		areaid.focus();
	};
	
	 function backup() {
	   if (areaid.val().length != 0) {	 
		undo_pos = 0;
		enable_forward(false);
		enable_back(true);
		if(store_data[store_data.length - 1] != areaid[0].value) store_data.push(areaid[0].value);
	   }	
	};
		
	return this;			
	};
			
})(jQuery);

function UndoRedoFunc(textarea) {
 jQuery(function(){
  jQuery('textarea[name='+textarea+']').undo_redo({
    undo_btn: jQuery('#'+textarea+'_undo'), redo_btn: jQuery('#'+textarea+'_redo'), disable_btn_cls: 'undo_redo_disable', enable_btn_cls: 'undo_redo_enable', keyboard: true
  });
 });
}