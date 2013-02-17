MLPSpotlight
============
>Calling a user's attention to a certain point on a screen should be simple, so we've created this _MLPSpotlight_ class to make it quick and easy to insert and remove a spotlight within a view. 

![Screenshot](/spotlightDemo.png "Screenshot")

About
---------
_MLPSpotlight_ is a _UIView_ subclass created to display a spotlight effect over a specific point on the screen in a convenient manner.


Usage
---------

First, add the _MLPSpotlight_ header and implementation file to your project. (.h & .m)

The easiest way to add a spotlight to a view is with the class method:

`+ (id)addSpotlightInView:(UIView *)view atPoint:(CGPoint)centerPoint;`

You can remove the spotlight later by calling:

`+ (id)removeSpotlightsInView:(UIView *)view;`

For more advanced options, see the header file of _MLPSpotlight_.

If you want a custom gradient for the spotlight you can pass your own _CGGradientRef_ to the "spotlightGradientRef" property of a spotlight.

You can access a spotlight in a view through this method which returns an array with the existing spotlights in a view.

`+ (NSArray *)spotlightsInView:(UIView *)view;`


License
--------
_MLPSpotlight_ uses the MIT License:

>Copyright (c) 2013, Mainloop LLC

>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

>The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


Credits
---------

_MLPSpotlight_ was written by Eddy Borja, at Mainloop LLC.

Say hello at hello@mainloop.us
