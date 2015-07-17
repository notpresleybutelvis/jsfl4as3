package jsfl4as3
{
	/**
	 * ...
	 * @author Elvis Fernandes
	 */
	
	import adobe.utils.*;	
	/**
	 * Method; displays a string in a modal Alert dialog box, along with OK and Cancel buttons. Note: If there are no documents (FLA files) open, this method fails with an error condition.
	 * @param	strAlert	A string that specifies the message you want to display in the Alert dialog box.
	 * @return	A Boolean value: true if the user clicks OK; false if the user clicks Cancel.
	 */
	public function confirm(strAlert:String):Boolean 
	{
		return MMExecute("confirm('" + strAlert + "');")=="true"?true:false;
	}
		
	

}