simple example for representing how to split and abstract responsibilities between the rack-apps.
=================================================================================================

By default there is no real convention in how to use the framework it self,
but if you want to split/abstract responsibility from one application into multiple, you can easily do so.

There is some useful thumb of rule that we follow:
* no monkey patch / overload
* try stick with Screaming Architecture if possible
    * Name your Application based on what it's purpose
* don't mutate application on runtime, prepend as much as possible
* Try stick with the "single responsibility" ideology
    * each of your application should achieve one goal

These are not iron rules, only rules that we like, and follow, but if you have different style,
that is awesome too and when you got some time share with us! :)
