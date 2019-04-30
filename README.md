# OpenCL_sample
Adapted from the OpenCL documentation, a makefile and simple demo of an OpenCL app.  Uses dispatch_sync.

Steps (pasted from an email:

Well, since I was on a Mac, I most recently arrived at this:

https://developer.apple.com/library/content/documentation/Performance/Conceptual/OpenCL_MacProgGuide/XCodeHelloWorld/XCodeHelloWorld.html#//apple_ref/doc/uid/TP40008312-CH10-SW2

But it is poisoned by the Xcode IDE.  I eschew IDE’s because they make you fat dumb and happy and then when you have to actually figure out what aberration occurs behind the curtain, you are incompetent.  So, here is the Makefile:

http://cjlarose.com/2015/02/05/makefile-for-opencl-development.html

Note the ultimate command: `clang -framework OpenCL …`.  I’m not sure if that is cross-platform or Mac OS X specific.

To compile (or precompile?) the gpu kernels (eg. generate .cl.o) , you need openclc, the OpenCL compiler for your platform.  Mac OSX comes with it, (or with Xcode commandline tools).  It is located in:

```
/System/Library/Frameworks/OpenCL.framework/Versions/A/Libraries/openclc
```

You don't need full Xcode, only the command-line developer tools. So: 

```
xcode-select --install 
```

should work on a fresh Mac.

If you don’t want to get your hands messy, you can stay at the pontificating-architectural-philisophical level where lofty idealistic ambitions need not be deposed by the real world of making sh*t work. Such a strategy is beneficial in the interviewing context, in which case, you can just memorize some common API’s and bedazzle them with your brilliance.  Skip Jail, proceed directly to Go and get your $200 by studying here:

https://www.khronos.org/opencl/resources

Or if you want to go for the kill-shot, just memorize a bunch of names from below, and start wailing them about with frenetic abandon upon the malleable minds of the Great Unwashed.  If there are no authorities in the room, you are sure to prevail as ’THE Right Fit'.  (Just be sure to stipulate you 'don’t do code’ because it is beneath you, and rather your true value lies in attending meetings.  That way there is always a reason why your desk is empty) :

https://www.khronos.org/registry/OpenCL/sdk/2.1/docs/OpenCL-2.1-refcard.pdf

The YouTube videos by David Black-Schaffer I found were good too.  Here is one of them, the others are linked:

https://www.youtube.com/watch?v=dsZv82qfWRs

Here I look back and the references are probably inverted to where a normal person would probably want to start.

Oh, and profiling/monitoring (otherwise how do you know your sh*t is working?).  On the Mac OS X, you’ll need 'Graphics Tools for Xcode’ from here:

https://developer.apple.com/download/more/

You’ll have to login.  Well I hope that gets you off to the right direction!
