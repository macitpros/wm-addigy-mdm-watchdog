# wm-Addigy MDM Watchdog Results

Custom plugin for [Watchman Monitoring](https://www.watchmanmonitoring.com) to provide results of [Addigy MDM Watchdog](https://addigy.com/mdm-watchdog/).

No alerting, this plugin provides reporting only.

The .plugin and .plist file need to be installed in `/Library/MonitoringClient/Plugins` or use the [installer package](https://github.com/macitpros/wm-addigy-mdm-watchdog/blob/master/wm-addigy-mdm-watchdog/build/wm-addigy-mdm-watchdog.pkg).

## Requires
[Addigy MDM Watchdog](https://addigy.com/mdm-watchdog/) by [Addigy](https://addigy.com/) to be installed.

## As of version 1.0.0.1:
Provides results of `/Library/Application\ Support/mdm-watchdog/state.json` on the local computer, which reports `last_mdm_kickstart` and `last_software_update_kickstart` date and time.

Provides the results of `log show --style syslog --predicate 'process == "mdm-watchdog"' -last 2h` which is the last 2 hours of logs from Apple's unified log that included the `mdm-watchdog` process.
Which includes:
```
MDMEnrolled
MDMIdentityError
MDMClientStuck
MDMSoftwareUpdatesStuck
MDMClientRestarted
SoftwareUpdateDaemonRestarted
LastMDMKickstart
LastSoftwareUpdateDaemonKickstart
```

Output is not pretty, but usable.
![Capture_2023-06-17_06-06-52_AM](https://github.com/macitpros/wm-addigy-mdm-watchdog/assets/17754199/a72606f6-c063-4059-82c3-a1e1e451bd58)

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
