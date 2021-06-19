# flutter_scratch_area
A scratch area project to play with Flutter code snippets.


## Dev Tools

```bash
pub global activate devtools
pub global run devtools
open http://127.0.0.1:9103
```

- Run pub global activate devtools then pub global run devtools in a terminal
- In the DevTools window that opens, enter http://localhost:8123/ as the VM Service address (where 8123 matches the port added in the settings)
- [in DevTools] click the Performance tab (note: from the next DevTools release this may be named "CPU Profiler", and "Performance" will be what is today called "Timeline"). You should end up on a page that says "CPU Profiling is disabled".
- [in DevTools] click the button to enable profiling
- [in DevTools] click the Record button at the top of the page
- [in VS Code] trigger the action that is very slow (for example saving a file was mentioned above)
- Wait until the operation completes (or if it does not, wait at least 30 seconds)
- [in DevTools] click the Stop button at the top of the page
- [in DevTools] click the Export button (top-right) to download the profile data
- Remove the VS Code settings set at the top - you should not run the VM service enabled while not debugging (VS Code should show you a warning at startup if you leave this enabled)


~/.dartServer/.analysis-driver/
