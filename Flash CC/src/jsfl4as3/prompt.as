package jsfl4as3
{
	/**
	 * ...
	 * @author Elvis Fernandes
	 */
	import adobe.utils.*;
	/**
	 * Method; displays a prompt and optional text in a modal Alert dialog box, along with OK and Cancel buttons.
	 * @param	promptMsg	A string to display in the Prompt dialog box (limited to 256 characters in Mac OS X).
	 * @param	text	An optional string to display as a default value for the text field.
	 * @return	The string the user typed if the user clicks OK; null if the user clicks Cancel.
	 * @example The following example prompts the user to enter a user name. If the user types a name and clicks OK, the name appears an alert box.
		var userName = JSFL.prompt("Enter user name", "Type user name here");
		JSFL.alert(userName);
	 */
	public function prompt(promptMsg:String, text:String=""):String
	{
		var str:String = MMExecute("prompt('" + promptMsg + "','" + text + "');");
		return  str==main.NULL?null:str;
	}

}