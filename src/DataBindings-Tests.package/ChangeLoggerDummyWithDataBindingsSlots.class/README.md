I am a dummy data binding owner for unit testing purposes. I override the #onChanges: method to log when is called, so you can access that log afterwards inside a test.

My important methods are:

- #changes Access the log of the #onChanges: calls.
- #popChanges Same as #changes, but empties the log of the instance.