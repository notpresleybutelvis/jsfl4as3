package jsfl4as3{
	/**
	 * ...
	 * @author Elvis Fernandes
	 */
	import adobe.utils.*;
	/**
	 * Method; displays a string in a modal Alert dialog box, along with an OK button.
	 * @param	alertText
	 * @return	Nothing.
	 * @example	The following example displays the message “Process Complete” in an Alert dialog box:
		alert("Process Complete");
	 */
	public function alert(alertText:String):void
	{
		MMExecute("alert('"+alertText+"')");
	}
	
}