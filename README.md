# OPEN RP Animation Engine

This project is a fork of the [RPEmotes](https://github.com/TayMcKenzieNZ/rpemotes) animation menu project. It is here not as a replacement for RPEmotes, but as an extention for those wishing to build their own Animation Interfaces without having to write animation code.  If you are not planning on building your own interface, or you are not planning on using an interface that requires `open-rp-animation-engine` then please support the hard work of the RPEmotes team, and use their project.

We have changed the repository and project name simply to differenciate this code base from RPEmote.  This way when another piece of code leverages our modifications, users won't get confused, and try to install the wrong "RPEmotes".

We will regularly pull updates from RPEmotes.  If you have bug fixes please clone the RPEmotes repo from  [RPEmotes](https://github.com/TayMcKenzieNZ/rpemotes) and submit them there.  When accepted we will pull from the upstream.  If you have functinoality that would not be suitable for RPEmote project, we may entertain adding it here.  Please try submitting your code there first.

In the spirit of the GPL3 we have kept a local copy of their [README](https://github.com/TayMcKenzieNZ/rpemotes/blob/master/README.md) file as RP-EMOTE-README.md, we have also removed the duplicate lowercase `license` file which causes issues when cloning the repository on files systems that are case insensitive.


## Exports
RPEmotes does not support exporting lists of Animation names and triggers.  That is where Open RP Animation Engine comes into play.  To provide functionality on top of RPEmote that the RPEmote project does not want to have directly in their code base. 

In addition to the [list of exports](https://github.com/open-rp/open-rp-animation-engine/blob/master/RP-EMOTE-README.md#exports) that are includes by RPEmotes, we have added the 8 following exports that allow you to request an array table that contain the label and trigger string for each of the different animation types.

```
exports["open-rp-animation-engine"]:getListOfAnimalEmotes()
exports["open-rp-animation-engine"]:getListOfDances()
exports["open-rp-animation-engine"]:getListOfEmotes()
exports["open-rp-animation-engine"]:getListOfExits()
exports["open-rp-animation-engine"]:getListOfExpressions()
exports["open-rp-animation-engine"]:getListOfPropEmotes()
exports["open-rp-animation-engine"]:getListOfShared()
exports["open-rp-animation-engine"]:getListOfWalks()
```

**Note:** If using the one of the exports [listed here](https://github.com/open-rp/open-rp-animation-engine/blob/master/RP-EMOTE-README.md#exports), please remember to use `open-rp-animation-engine` instead of `rpemote` when calling it.

