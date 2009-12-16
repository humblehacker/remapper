#
#  MyDocument.rb
#  Keys
#
#  Created by David on 6/19/08.
#  Copyright (c) 2008 __MyCompanyName__. All rights reserved.
#


require 'osx/cocoa'
require 'model'

class MyDocument < OSX::NSDocument

  def windowNibName
    # Override returning the nib file name of the document If you need
    # to use a subclass of NSWindowController or if your document
    # supports multiple NSWindowControllers, you should remove this
    # method and override makeWindowControllers instead.
    return "MyDocument"
  end

  def windowControllerDidLoadNib(aController)
    super_windowControllerDidLoadNib(aController)
		
		Model.StaticInit()
    # Add any code here that need to be executed once the
    # windowController has loaded the document's window.
  end

  def dataRepresentationOfType(aType)
    # Insert code here to write your document from the given data.
    # You can also choose to override
    # fileWrapperRepresentationOfType or writeToFile_ofType
    # instead.
    return nil
  end

  def loadDataRepresentation_ofType(data, aType)
    # Insert code here to read your document from the given data.  You
    # can also choose to override
    # loadFileWrapperRepresentation_ofType or readFromFile_ofType
    # instead.
    return true
  end
end

if $0 == __FILE__
    Wx::App.run do
        Model.StaticInit()
        frame = MainFrame.new.show
    end
end
