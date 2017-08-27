# Figuring out how a commerical Led signs work

#### Images
https://github.com/microcontrollersig/reverse-engineer-led-signs/blob/master/images/readme.md


#### LED matrix(5 columns, 7rows, 14-pins)
http://www.kingbrightusa.com/images/catalog/SPEC/TA20-11EWA.pdf

#### 74HC245
http://www.mouser.com/ds/2/149/MM74HC245A-71310.pdf
http://www.ti.com/lit/ds/symlink/sn74hc245.pdf

#### 74HC373
http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/96/71/e4/bd/17/76/4e/c7/CD00000305/files/CD00000305.pdf/jcr:content/translations/en.CD00000305.pdf
http://www.ti.com/lit/ds/symlink/cd74hc373.pdf

#### ULN2003A
https://www.onsemi.com/pub/Collateral/MC1413-D.PDF
http://www.tij.co.jp/jp/lit/ds/slrs027o/slrs027o.pdf

#### 74HC237B
http://www.ti.com/lit/ds/symlink/cd74hc237.pdf

# Files in Repository
Main one is **ledmatrixmodule.fzz** . You need to install **Fritzing** to view it (schematic view). If you can't be stuffed, open **ledmatrixmodule_schem.pdf**

# Things Learned
1. Rows in the first half of the board are connected, rows in the second half are connected,
   but rows in first half are not connected to the second.
2. Rows get their data from output of 3-8 demux (74HC237), the three inputs of demux are connected to input connector
3. Columns get their data from the latches (74HC373), inputs of which are connected to input connector.
4. Row scanning occurs, the darlington array (ULN2003) inverts its inputs, result being that one line will be LOW, the rest HIGH
   at any point.
5. There are 2 ULN2003A. Output of 1 ULN2003A connected to the rows in the first half,
   the other ULN2003A connected to rows in second half.
6. Corresponding inputs of both ULN2003A are connected.

# Interesting Pictures

![Ideal LED matrix design](https://github.com/microcontrollersig/reverse-engineer-led-signs/raw/master/idealledmatrix.png)


![Similar design](http://www.electro-tech-online.com/imgcache/4316-14_1194402379.gif)



![Nice one](http://www.crossroadsfencing.com/25x7_common_cathode_array.jpg)
