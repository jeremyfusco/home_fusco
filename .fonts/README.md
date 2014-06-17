# Installation for FixedSC font ( fixed misc medium 6x13 )
1. ~/.fonts$ tar zxvf fixedsc.tgz 
1. $ mv $HOME/.fontconfig $HOME/deleteme
1. # fc-cache
1. $ fc-cache

## Verify installation of FixedSC font.

1. $ fc-list |grep FixedSC

<pre><code>
FixedSC:style=Bold
FixedSC:style=Regula 
</code></pre>
