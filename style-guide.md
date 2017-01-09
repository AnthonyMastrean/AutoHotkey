# AutoHotkey Style Guidelines

## Script Environment

There are an awful lot of commands that modify how the script is run, in what context, or how it interacts with the user environment. I've got a short list of must-haves...

```ahk
#NoEnv
#SingleInstance, Force
SendMode, Input
SetWorkingDir, %A_ScriptDir%
```

## Commas in Command Calls
_Always use a comma after a built-in command name._

The first comma, following the name, of some command calls is optional. Except when you want to skip that value and use a default. Some of the command documentation doesn't show a comma (often when there is only 1 parameter), but it can be used anyway.

**bad**

```ahk
SplashTextOn 200, 25, Style, I have it!
```

**good**

```ahk
SplashTextOn, 200, 25, Style, I have it!
SplashTextOn, , , Style, I have it!
```

## Brace Use & Style
_Always use [K&R style](http://en.wikipedia.org/wiki/Indent_style#K.26R_style) braces._

Braces are available only for some constructs and, even then, they're optional for one-liners. The [OTB style](http://en.wikipedia.org/wiki/Indent_style#Variant:_1TBS) is only valid for a subset of the allowed constructs and, for others, will result in a compile error.

**compile error**

```ahk
Loop, parse, InputVar, Delimiter {
}
```

**bad**

```ahk
Loop, 10 {
}
```

**good**

```ahk
Loop, parse, InputVar, Delimiter
{
  ...
}
```
