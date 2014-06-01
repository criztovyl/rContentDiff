#rContentDiff

rContentDiff is a ruby script to compare two files line per line and tells you the lines which are different.

#Usage
On \*nixCommandline:
    ./rContentDiff.rb FILE1 FILE2

#Technical background

I wanted to compare if two file index programs print out the same paths.  
Unfortunatly the sort the paths different, so diff prints out much diffrences.  
This program compares the lines the file contains, not the position.  
As first the first file is read line per line and each stored to an array. After this the second file is read line per line and each is stored to another array. Then it sorts the arrays and checks if they are equal with Array.hash().  
If there are differences they are printed out as "Lines only in file 1" and "Lines only in file 2".

#LICENSE

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#AUTHOR

Written by Christoph "criztovyl" Schulz, <ch.schulz@joinout.de>

[Homepage] (http://criztovyl.joinout.de)  
[GitHub] (http://github.com/criztovyl)
