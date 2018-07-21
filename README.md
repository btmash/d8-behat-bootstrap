This is a somewhat standalone entrypoint
you could use to start testing your website.

You could also take the contents of the composer.json file
and add them to your devDependencies in your own
composer.json file (and move the behat.yml and its files
appropriately).

Be careful - this would end up running against
a 'live' site so do not use it on production!

This is set up to work with headless chrome.
To do so, you need to know the path to chrome:

```/path/to/chrome --disable-gpu --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222```

So on OSX, it will likely be:

```/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-gpu --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222```
