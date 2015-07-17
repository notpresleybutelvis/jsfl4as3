package jsfl4as3
{
	/**
	 * ...
	 * @author Elvis Fernandes
	 */
	import adobe.utils.*;
	public final class fl 
	{
		
		public function fl() 
		{
			
		}
		/**
		 * Method; sends a text string to the Output panel, terminated by a new line, and displays the Output panel if it is not already visible. This method is identical to outputPanel.trace() and works in the same way as the trace() statement in ActionScript.  To send a blank line, use fl.trace("") or fl.trace("\n"). You can use the latter command inline, making slash n a part of the message string.  While sending JSFL commands as a parameter to trace ensure to add the semi colon in the statement, check the example listed in the document
		 * @param	message	A string that appears in the Output panel.
		 * @return Nothing.
		 * <p>The following example shows how to use trace</p>
		 * <listing>
		 * fl.trace("hello world");//outputs hello world
		 * //while sending JSFL commands ensure to add the semi colon in the statement
		 * fl.trace(MMExecute("fl.getDocumentDOM().currentPublishProfile;"));
		 * //this will give an error while executing within Flash as a plugin
		 * fl.trace(MMExecute("fl.getDocumentDOM().currentPublishProfile"));
		 * </listing>
		 */
		public static function trace(message:String):void
		{
			MMExecute("fl.trace('"+message+"');");
		}
		/**
		 * Method; opens a File Open or File Save system dialog box and lets the user specify a file to be opened or saved.
		 * @param	browseType A string that specifies the type of file browse operation. Valid values are "open", "select" or "save". The values "open" and "select" open the system File Open dialog box. Each value is provided for compatibility with Dreamweaver. The value "save" opens a system File Save dialog box.
		 * @param	title An optional string that specifies the title for the File Open or File Save dialog box. If this parameter is omitted, a default value is used. This parameter is optional.
		 * @param	fileDescription An optional string that specifies a file description, for example: FLA Document (*.fla) or ActionScript File (*.as)
		 * @param	fileFilter An optional string that specifies a filter, such that only files that match the filters are displayed in the dialog, for example: "fla" or "fla;as" or "jsfl;fla;as"
		 * @return The URL of the file, expressed as a file:/// URI; returns null if the user cancels out of the dialog box.
		 * <p>The following example illustrate use of the fl.browseForFileURL() method:
		 * </p>
		 * <listing>
		 * //CC
		 * var uri = fl.browseForFileURL(BrowseOptions.BROWSE_TYPE_SELECT, "Select a FLA", "FLA Document (*.fla)", "fla");
		 * or
		 * var fileDescription = "FLA document (*.fla);Actionscript File (*.as)";
		 * var fileFilter = "fla;as";
		 * var uri = fl.browseForFileURL(BrowseOptions.BROWSE_TYPE_SELECT, "Select a FLA or AS file", fileDescription, fileFilter);
		 * </listing>
		 */
		 public static function browseForFileURL(browseType:String,title:String="",fileDescription:String="",fileFilter:String=""):String
		{
			var str:String = MMExecute("fl.browseForFileURL('" + browseType + "', '" + title + "', '" + fileDescription + "', '" + fileFilter + "');");
			return  str==main.NULL?null:str;
		}
		/**
		 * Method; displays a Browse for Folder dialog box and lets the user select a folder.
		 * @param	description An optional string that specifies the description of the Browse For Folder dialog box. If this parameter is omitted, the dialog box title is "Select Folder."
		 * @return The URL of the folder, expressed as a file:/// URI; returns null if the user cancels out of the dialog box.
		 * <p>The following example lets the user select a folder and then displays a list of files in that folder:</p>
		 * <listing>
		 *	var folderURI:String = browseForFolderURL("Select a folder.");
		 * </listing>
		 */
		public static function browseForFolderURL(description:String="Select Folder"):String
		{
			var str:String = MMExecute("fl.browseForFolderURL('" + description + "');");
			return  str==main.NULL?null:str;
		}
		/**
		 * Read-only property; a string that specifies the full path for the local user’s Configuration directory in a platform-specific format. To specify this path as a file:/// URI, which is not platform-specific, use fl.configURI.
		 * 
		 * <p>The following example displays the Configuration directory in the Output panel:</p>
		 * <listing>
		 * fl.trace(fl.configDirectory);
		 * </listing>
		 * @see fl#configURI
		 */
		public static function get configDirectory():String
		{
			return String(MMExecute("fl.configDirectory"));
		}
		/**
		 * Read-only property; a string that specifies the full path for the local user’s Configuration directory as a file:/// URI. See also fl.configDirectory.
		 * 
		 * <p>The following example displays the local user’s Configuration directory as a file in the Output panel:</p>
		 * <listing>
		 * fl.trace(fl.configURI);
		 * </listing>
		 * @see fl#configDirectory
		 */
		public static function get configURI():String
		{
			return String(MMExecute("fl.configURI"));
		}
		
		/**
		 * Method; checks whether a file already exists on disk.
		 * @param fileURI A string, expressed as a file:/// URI, that contains the path to the file.
		 * @return A Boolean value: true if the file exists on disk; false otherwise.
		 * <p>The following example displays true or false in the Output panel for each specified file, depending on whether the file exists.</p>
		 * <listing>
		 * alert(JSFL.fileExists("file:///C|/example.fla"));
		 * alert(JSFL.fileExists("file:///C|/example.jsfl"));
		 * alert(JSFL.fileExists(""));
		 * </listing>
		 */
		public static function fileExists(fileURI:String):Boolean
		{
			return MMExecute("fl.fileExists('" + fileURI + "');")=="true"?true:false;
		}
		/**
		 * Method; opens a Flash document (FLA file) for editing in a new Flash Document window and gives it focus. For a user, the effect is the same as selecting File> Open and then selecting a file. If the specified file is already open, the window that contains the document comes to the front. The window that contains the specified file becomes the currently selected document.
		 * @param	fileURI A string, expressed as a file:/// URI, that specifies the name of the file to be opened.
		 * @return The Document object for the newly opened document, if the method is successful. If the file is not found or is not a valid FLA file, an error is reported and the script is cancelled.
		 * <p>The following example opens a file named Document.fla that is stored in the root directory on the C drive. The code stores a Document object representing that document in the doc variable and sets the document to be the currently selected document. That is, until focus is changed, fl.getDocumentDOM() refers to this document.</p>
		 * <listing>
		 * var doc = fl.openDocument("file:///c|/Document.fla");
		 * </listing>
		 */
		public static function openDocument(fileURI:String):String
		{
			return MMExecute("fl.openDocument('" + fileURI + "');");
		}
		/**
		 * Method; empties the publish cache.
		 * @param none
		 * @return Nothing
		 * <p>The following code empties the publish cache:</p>
		 * <listing>
		 * fl.clearPublishCache();
		 * </listing>
		 */
		public static function clearPublishCache():void
		{
			MMExecute("fl.clearPublishCache()");
		}
		/**
		 * Method; copies the specified string to the Clipboard.  To copy the current selection to the Clipboard, use document.clipCopy).
		 * @param	string A string to be copied to teh Clipboard.
		 * @return Nothing
		 * <p>The followin example copies the path of the current document to the Clipboard:</p>
		 * <listing>
		 * var documentPath = fl.getDocumentDOM().path;
		 * fl.clipCopyString(documentPath);
		 * </listing>
		 */
		public static function clipCopyString(string:String):void
		{
			MMExecute("fl.clipCopyString('" + string + "');");
		}
		
		//fl.getDocumentDOM().name
		public static function getDocumentDOM():Document
		{
			var id:int = parseInt(MMExecute("fl.getDocumentDOM().id;") +" ");
			return new Document(id);
		}
	}

}