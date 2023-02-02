# EVE-MCU-BRT_AN_025-Example-Pico
Example code for Application Note BRT_AN_025 for the Raspberry Pi Pico Board

Refer to the Bridgetek Application Note document BRT_AN_025 for details on the example code.

##Subtree Use
Please note that the following directories are git subtrees:
<table>
  <tr><td>lib/eve</td><td>eve_library</td><td>ftdigdm/EVE-MCU-BRT_AN_025</td></tr>
  <tr><td>example</td><td>eve_example</td><td>ftdigdm/EVE-MCU-BRT_AN_025-Example-common</td></tr>
</table>
These were added to the repository using:
<pre>
git remote add -f eve_example https://github.com/ftdigdm/EVE-MCU-BRT_AN_025-Example-common.git
git subtree add --prefix example eve_example main --squash
git remote add -f eve_library https://github.com/ftdigdm/EVE-MCU-BRT_AN_025.git
git subtree add --prefix lib/eve eve_library main --squash
</pre>
To push the subtree back to the original repo main branch use:
<pre>
git subtree push --prefix=lib/eve eve_library main
git subtree push --prefix=example eve_example main
</pre>
