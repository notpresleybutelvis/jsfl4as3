package jsfl4as3 
{
	/**
	 * ...
	 * @author Elvis Fernandes
	 */
	import adobe.utils.*;
	/**
	 * The Document object represents the Stage.  That is, only FLA files are considered documents.  To return the Document object for the current document, use fl.getDocumentDOM()
	 * @see fl#getDocumentDOM
	 */
	public class Document 
	{
		private var _name:String = "";
		private var _id:int;
		private var _as3WarningsMode:Boolean = true;
		private var _as3StrictMode:Boolean = true;
		private var _currentPublishProfile:String = "";
		private var _height:int;
		private var _width:int;
		private var _path:String;
		private var _pathURI:String;
		
		public function Document(id:int) 
		{
			_id = id;
			_name = MMExecute("fl.findDocumentDOM(" + id.toString() + ").name;");
		}
		/**
		 * Read-only property; a string that represents the name of a document (FLA file).
		 * <p>The following example displays the name of the document in an alert box</p>
		 * <listing>
		 * alert(fl.getDocumentDOM().name);
		 * </listing>
		 */
		public function get name():String
		{
			return _name;
		}
		/**
		 * Property; an integer that specifies the height of the document (Stage) in pixels.
		 * <p>The following example sets the height of the Stage to 400 pixels:</p>
		 * <listing>
		 * fl.getDocumentDOM().height = 500;
		 * </listing>
		 */
		public function get height():int
		{
			_height = parseInt(MMExecute("fl.findDocumentDOM(" + _id.toString() + ").height;"));
			return _height;
		}
		/**
		 * Property; an integer that specifies the height of the document (Stage) in pixels.
		 * <p>The following example sets the height of the Stage to 400 pixels:</p>
		 * <listing>
		 * fl.getDocumentDOM().height = 500;
		 * </listing>
		 */
		public function set height(height:int):void
		{
			MMExecute("fl.findDocumentDOM(" + _id.toString() + ").height=" + height.toString() + ";");
			_height = parseInt(MMExecute("fl.findDocumentDOM(" + _id.toString() + ").height;"));			
		}
		/**
		 * Property; an integer that specifies the width of the document (Stage) in pixels.
		 * <p>The following example sets the width of the Stage to 400 pixels:</p>
		 * <listing>
		 * fl.getDocumentDOM().width = 500;
		 * </listing>
		 */
		public function get width():int
		{
			_width = parseInt(MMExecute("fl.findDocumentDOM(" + _id.toString() + ").width;"));
			return _width;
		}
		/**
		 * Property; an integer that specifies the width of the document (Stage) in pixels.
		 * <p>The following example sets the width of the Stage to 400 pixels:</p>
		 * <listing>
		 * fl.getDocumentDOM().width = 500;
		 * </listing>
		 */
		public function set width(width:int):void
		{
			MMExecute("fl.findDocumentDOM(" + _id.toString() + ").width=" + width.toString() + ";");
			_width = parseInt(MMExecute("fl.findDocumentDOM(" + _id.toString() + ").width;"));			
		}
		/**
		 * Property; a Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the Warnings Mode option turned on (true) or off (false). Warnings Mode causes extra warnings to be reported that are useful for discovering incompatibilities when updating ActionScript 2.0 code to ActionScript 3.0. The default value is true.
		 * <p>The following example turns off the Warnings Mode compiler option.</p>
		 * <listing>
		 * var myDocument = fl.getDocumentDOM();
		 * fl.trace("Warnings Mode value before modification is " + myDocument.as3WarningsMode);
		 * myDocument.as3WarningsMode = false;
		 * fl.trace("Warnings Mode value after modification is " + myDocument.as3WarningsMode);
		 * </listing>
		 */
		public function get as3WarningsMode():Boolean
		{
			_as3WarningsMode = MMExecute("fl.findDocumentDOM(" + _id.toString() + ").as3WarningsMode;") == "true"?true:false;
			return _as3WarningsMode;
		}
		/**
		 * Property; a Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the Warnings Mode option turned on (true) or off (false). Warnings Mode causes extra warnings to be reported that are useful for discovering incompatibilities when updating ActionScript 2.0 code to ActionScript 3.0. The default value is true.
		 * <p>The following example turns off the Warnings Mode compiler option.</p>
		 * <listing>
		 * var myDocument = fl.getDocumentDOM();
		 * fl.trace("Warnings Mode value before modification is " + myDocument.as3WarningsMode);
		 * myDocument.as3WarningsMode = false;
		 * fl.trace("Warnings Mode value after modification is " + myDocument.as3WarningsMode);
		 * </listing>
		 */
		public function set as3WarningsMode(isOn:Boolean):void
		{
			_as3WarningsMode = isOn;
			MMExecute("fl.findDocumentDOM(" + _id.toString() + ").as3WarningsMode="+isOn.toString()+";");
		}
		/**
		 * Property; a Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the Strict Mode option turned on (true) or off (false). Strict Mode causes warnings to be reported as errors, which means that compilation will not succeed if those errors exist. The default value is true.
		 * <p>The following example turns off the Strict Mode compiler option</p>
		 * <listing>
		 * var myDocument = fl.getDocumentDOM();
		 * fl.trace("Strict Mode value before modification is " + myDocument.as3StrictMode);
		 * myDocument.as3StrictMode = false;
		 * fl.trace("Strict Mode value after modification is " + myDocument.as3StrictMode);
		 * </listing>
		 */
		public function get as3StrictMode():Boolean
		{
			_as3StrictMode = MMExecute("fl.findDocumentDOM(" + _id.toString() + ").as3StrictMode;") == "true"?true:false;
			return _as3StrictMode;
		}
		/**
		 * Property; a Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the Strict Mode option turned on (true) or off (false). Strict Mode causes warnings to be reported as errors, which means that compilation will not succeed if those errors exist. The default value is true.
		 * <p>The following example turns off the Strict Mode compiler option</p>
		 * <listing>
		 * var myDocument = fl.getDocumentDOM();
		 * fl.trace("Strict Mode value before modification is " + myDocument.as3StrictMode);
		 * myDocument.as3StrictMode = false;
		 * fl.trace("Strict Mode value after modification is " + myDocument.as3StrictMode);
		 * </listing>
		 */
		public function set as3StrictMode(isOn:Boolean):void
		{
			_as3StrictMode = isOn;
			MMExecute("fl.findDocumentDOM(" + _id.toString() + ").as3StrictMode="+isOn.toString()+";");
		}
		/**
		 * Method; adds a new publish profile and makes it the current one.
		 * @param	profileName The unique name of the new profile. If you do not specify a name, a default name is provided. This parameter is optional.
		 * @return An integer that is the index of the new profile in the profiles list. Returns -1 if a new profile cannot be created.
		 * <p>The following example adds a new publish profile with a default name and then displays the name of the profile in the Output panel:</p>
		 * <listing>
		 * fl.getDocumentDOM().addNewPublishProfile();
fl.outputPanel.trace(fl.getDocumentDOM().currentPublishProfile);
		 * </listing>
		 * <p>The following example adds a new publish profile with the name "my profile":</p>
		 * <listing>
		 * fl.getDocumentDOM().addNewPublishProfile("my profile");
		 * </listing>
		 */
		public function addNewPublishProfile(profileName:String=""):int
		{
			if (profileName.length == 0)
			{
				return parseInt(MMExecute("fl.getDocumentDOM().addNewPublishProfile();"));
			}
			return parseInt(MMExecute("fl.getDocumentDOM().addNewPublishProfile('"+profileName+"');"));
		}
		/**
		 * Property; a string that specifies the name of the active publish profile for the specified document.
		 * <p>The following example adds a new publish profile with the default name and then displays the name of the profile in the Output panel:</p>
		 * <listing>
		 * fl.getDocumentDOM().addNewPublishProfile();
		 * fl.outputPanel.trace(fl.getDocumentDOM().currentPublishProfile);
		 * </listing>
		 * <p>The following example changes the selected publish profile to "Default":</p>
		 * <listing>
		 * fl.getDocumentDOM().currentPublishProfile = "Default";
		 * </listing>
		 */
		public function get currentPublishProfile():String
		{
			_currentPublishProfile = MMExecute("fl.findDocumentDOM(" + _id.toString() + ").currentPublishProfile;");
			return _currentPublishProfile;
		}
		/**
		 * Property; a string that specifies the name of the active publish profile for the specified document.
		 * <p>The following example adds a new publish profile with the default name and then displays the name of the profile in the Output panel:</p>
		 * <listing>
		 * fl.getDocumentDOM().addNewPublishProfile();
		 * fl.outputPanel.trace(fl.getDocumentDOM().currentPublishProfile);
		 * </listing>
		 * <p>The following example changes the selected publish profile to "Default":</p>
		 * <listing>
		 * fl.getDocumentDOM().currentPublishProfile = "Default";
		 * </listing>
		 */
		public function set currentPublishProfile(pString:String):void
		{
			MMExecute("fl.findDocumentDOM(" + _id.toString() + ").currentPublishProfile='" + pString + "';");
			_currentPublishProfile = MMExecute("fl.findDocumentDOM(" + _id.toString() + ").currentPublishProfile;");
		}
		/**
		 * Method; publishes the document according to the active publish settings (File > Publish Settings). This method is equivalent to selecting File > Publish.
		 * @return none
		 * <p>The following example publishes the current document</p>
		 * <listing>
		 * fl.getDocumentDOM().publish();
		 * </listing>
		 */
		public function publish():void
		{
			MMExecute("fl.findDocumentDOM(" + _id.toString() + ").publish();");
		}
		/**
		 * Method; switches the authoring tool into the editing mode specified by the parameter. If no parameter is specified, the method defaults to symbol-editing mode, which has the same result as right-clicking the symbol to invoke the context menu and selecting Edit.
		 * @param	editMode A string that specifies the editing mode. Acceptable values are "inPlace" or "newWindow". If no parameter is specified, the default is symbol-editing mode. This parameter is optional.  Use Editmode.EDIT_MODE_INPLACE or Editmode.EDIT_MODE_NEWWINDOW
		 * <p>The following example puts Flash in edit-in-place mode for the currently selected symbol:</p>
		 * <listing>
		 * fl.getDocumentDOM().enterEditMode(Editmode.EDIT_MODE_INPLACE);
		 * </listing>
		 * <p>The following example puts Flash in edit-in-new-window mode for the currently selected symbol:</p>
		 * <listing>
		 * fl.getDocumentDOM().enterEditMode(Editmode.EDIT_MODE_NEWWINDOW);
		 * </listing>
		 */
		public function enterEditMode(editMode:String):void
		{
			MMExecute("fl.findDocumentDOM("+_id.toString()+").enterEditMode('"+editMode+"');");
		}
		/**
		 * Method; exits from symbol-editing mode and returns focus to the next level up from the editing mode. For example, if you are editing a symbol inside another symbol, this method takes you up a level from the symbol you are editing, into the parent symbol.
		 * <p>The following example exits symbol-editing mode:</p>
		 * <listing>
		 * fl.getDocumentDOM().exitEditMode();
		 * </listing>
		 */
		public function exitEditMode():void
		{
			MMExecute("fl.findDocumentDOM("+_id.toString()+").exitEditMode();");
		}
		/**
		 * Method; deselects any selected items.
		 * <p>The following example deselects any items that are selected:</p>
		 * <listing>
		 * fl.getDocumentDOM().selectNone();
		 * </listing>
		 */
		public function selectNone():void
		{
			MMExecute("fl.findDocumentDOM("+_id.toString()+").selectNone();");
		}
		/**
		 * Read-only property; a string that represents the path of the document in a platform-specific format.  If the document has never been saved, this property is undefined.
		 * <p>The following example displays the path of the document in the Output panel.  You must save the document before running this script.  In the example, the file is named test.fla and is saved in the My Documents folder on a Windows computer.</p>
		 * <listing>
		 * var filePath:String=fl.getDocumentDOM().path;
		 * fl.trace(filePath)
		 * //displays C:\Documents and Settings\[user name]\My Documents\test.fla
		 * </listing>
		 */
		public function get path():String
		{
			_path = MMExecute("fl.findDocumentDOM(" + _id.toString() + ").path;");
			return _path;
		}
		/**
		 * Read-only property; a string that represents the path of the document, expressed as a file:///URI.  If the document has never been saved, this property is undefined.
		 * <p>The followin example displays the path of the document in the Output panel.  You must save the document before running this script.  In the example, the file is named test.fla and is saved in the My Documents folder on a Windows computer.</p>
		 * <listing>
		 * var filePathURI:String=fl.getDocumentDOM().pathURI;
		 * fl.trace(filePathURI);
		 * //displays file:///C|/Documents%20and%20Settings/[userName]/My%Documents/test.fla
		 * </listing>
		 */
		public function get pathURI():String
		{
			_pathURI = MMExecute("fl.findDocumentDOM(" + _id.toString() + ").pathURI;");
			return _pathURI;
		}
	}

}