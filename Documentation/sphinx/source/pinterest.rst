=========
Pinterest
=========

Installation
------------
To avoid duplication issues the Socialize SDK doesn't include Pinterest SDK by default. 
To use the Pinterest sharing feature make sure to add Pinterest.embeddedframework in your project and link to appropriate target.
The Pinterest.embeddedframework can be found in Socialize SDK distribution archive.

Let Socialize know your Pinterest app id.  You can register or find your
Pinterest app id here: http://developers.pinterest.com/manage/

Configuring Pinterest in Socialize (SDK)
----------------------------------------

Once you have a pinterest application, simply tell Socialize about your application id:

.. literalinclude:: snippets/pinterest-snippets.m
  :start-after: begin-configure-snippet
  :end-before: end-configure-snippet
  :emphasize-lines: 9

Note that the Pinterest app must be installed on a device for Pinterest sharing to display in the Share dialog. This functionality works on devices only, not in Simulator.

Posting to Pinterest on your own
---------------------------------

Should you need to post to Pinterest on your own, you can do so by using the
direct Pintrest access methods on the utils classes.

.. literalinclude:: snippets/pinterest-snippets.m
  :start-after: begin-share-snippet
  :end-before: end-share-snippet
