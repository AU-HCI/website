---
title: Type Based Verification using Liquid Haskell
---
<div class="hidden">

<pre><span class=hs-linenum> 6: </span>
<span class=hs-linenum> 7: </span><span class='hs-keyword'>module</span> <span class='hs-conid'>LectLiquid</span> <span class='hs-keyword'>where</span>    
<span class=hs-linenum> 8: </span>
<span class=hs-linenum> 9: </span><span class='hs-keyword'>import</span> <span class='hs-keyword'>qualified</span> <span class='hs-conid'>Data</span><span class='hs-varop'>.</span><span class='hs-conid'>Text</span> <span class='hs-keyword'>as</span> <span class='hs-conid'>T</span>
<span class=hs-linenum>10: </span><span class='hs-keyword'>import</span> <span class='hs-keyword'>qualified</span> <span class='hs-conid'>Data</span><span class='hs-varop'>.</span><span class='hs-conid'>Text</span><span class='hs-varop'>.</span><span class='hs-conid'>Unsafe</span> <span class='hs-keyword'>as</span> <span class='hs-conid'>UT</span>    
<span class=hs-linenum>11: </span>    
<span class=hs-linenum>12: </span><span class='hs-keyword'>{-@</span> <span class='hs-keyword'>type</span> <span class='hs-conid'>Nat</span> <span class='hs-keyglyph'>=</span> <span class='hs-layout'>{</span><span class='hs-varid'>n</span><span class='hs-conop'>:</span><span class='hs-conid'>Int</span> <span class='hs-keyglyph'>|</span> <span class='hs-varid'>n</span> <span class='hs-varop'>&gt;</span> <span class='hs-num'>0</span><span class='hs-layout'>}</span> <span class='hs-keyword'>@-}</span>    
<span class=hs-linenum>13: </span>
<span class=hs-linenum>14: </span><span class='hs-definition'>notEmpty</span> <span class='hs-keyglyph'>::</span> <span class='hs-keyglyph'>[</span><span class='hs-varid'>a</span><span class='hs-keyglyph'>]</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-conid'>Bool</span>
<span class=hs-linenum>15: </span><a class=annot href="#"><span class=annottext>x1:[a] -&gt; {VV : GHC.Types.Bool | Prop VV &lt;=&gt; notEmpty x1}</span><span class='hs-definition'>notEmpty</span></a> <span class='hs-conid'>[]</span> <span class='hs-keyglyph'>=</span> <a class=annot href="#"><span class=annottext>{v : GHC.Types.Bool | v == GHC.Types.False}</span><span class='hs-conid'>False</span></a>
<span class=hs-linenum>16: </span><span class='hs-definition'>notEmpty</span> <span class='hs-layout'>(</span><span class='hs-keyword'>_</span><span class='hs-conop'>:</span><span class='hs-keyword'>_</span><span class='hs-layout'>)</span> <span class='hs-keyglyph'>=</span> <a class=annot href="#"><span class=annottext>{v : GHC.Types.Bool | v == GHC.Types.True}</span><span class='hs-conid'>True</span></a>
<span class=hs-linenum>17: </span>                 
<span class=hs-linenum>18: </span><span class='hs-keyword'>{-@</span> <span class='hs-varid'>measure</span> <span class='hs-varid'>notEmpty</span> <span class='hs-keyword'>@-}</span>
<span class=hs-linenum>19: </span>
<span class=hs-linenum>20: </span><span class='hs-keyword'>{-@</span> <span class='hs-keyword'>type</span> <span class='hs-conid'>NEList</span> <span class='hs-varid'>a</span> <span class='hs-keyglyph'>=</span> <span class='hs-layout'>{</span><span class='hs-varid'>l</span><span class='hs-conop'>:</span><span class='hs-keyglyph'>[</span><span class='hs-varid'>a</span><span class='hs-keyglyph'>]</span> <span class='hs-keyglyph'>|</span> <span class='hs-varid'>notEmpty</span> <span class='hs-varid'>l</span><span class='hs-layout'>}</span> <span class='hs-keyword'>@-}</span>
<span class=hs-linenum>21: </span>
<span class=hs-linenum>22: </span><span class='hs-keyword'>{-@</span> <span class='hs-varid'>hd</span> <span class='hs-keyglyph'>::</span> <span class='hs-varid'>l</span><span class='hs-conop'>:</span><span class='hs-conid'>NEList</span> <span class='hs-varid'>a</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-varid'>a</span>  <span class='hs-keyword'>@-}</span>
<span class=hs-linenum>23: </span><span class='hs-definition'>hd</span> <span class='hs-keyglyph'>::</span> <span class='hs-keyglyph'>[</span><span class='hs-varid'>a</span><span class='hs-keyglyph'>]</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-varid'>a</span>
<span class=hs-linenum>24: </span><a class=annot href="#"><span class=annottext>{l : [a] | notEmpty l} -&gt; a</span><span class='hs-definition'>hd</span></a> <span class='hs-layout'>(</span><span class='hs-varid'>x</span><span class='hs-conop'>:</span><span class='hs-varid'>xs</span><span class='hs-layout'>)</span> <span class='hs-keyglyph'>=</span> <a class=annot href="#"><span class=annottext>{VV : a | VV == x}</span><span class='hs-varid'>x</span></a>            
<span class=hs-linenum>25: </span>
<span class=hs-linenum>26: </span><span class='hs-keyword'>{-@</span> <span class='hs-varid'>ex1</span> <span class='hs-keyglyph'>::</span> <span class='hs-varid'>l</span><span class='hs-conop'>:</span><span class='hs-keyglyph'>[</span><span class='hs-conid'>NEList</span> <span class='hs-conid'>Char</span><span class='hs-keyglyph'>]</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-conid'>String</span> <span class='hs-keyword'>@-}</span>
<span class=hs-linenum>27: </span><span class='hs-definition'>ex1</span> <span class='hs-keyglyph'>::</span> <span class='hs-keyglyph'>[</span><span class='hs-conid'>String</span><span class='hs-keyglyph'>]</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-conid'>String</span>
<span class=hs-linenum>28: </span><a class=annot href="#"><span class=annottext>[{l : [GHC.Types.Char] | notEmpty l}] -&gt; [GHC.Types.Char]</span><span class='hs-definition'>ex1</span></a> <a class=annot href="#"><span class=annottext>[{l : [GHC.Types.Char] | notEmpty l}]</span><span class='hs-varid'>l</span></a> <span class='hs-keyglyph'>=</span> <a class=annot href="#"><span class=annottext>x1:[{v : [GHC.Types.Char] | notEmpty v &amp;&amp; notEmpty v &amp;&amp; len v &gt;= 0}] -&gt; {v : [GHC.Types.Char] | len v == len x1}</span><span class='hs-varid'>map</span></a> <a class=annot href="#"><span class=annottext>{v : [a] | notEmpty v} -&gt; a</span><span class='hs-varid'>hd</span></a> <a class=annot href="#"><span class=annottext>{v : [{v : [GHC.Types.Char] | notEmpty v}] | v == l}</span><span class='hs-varid'>l</span></a>
<span class=hs-linenum>29: </span>
</pre>
</div>

These lectures are based on this
[book](http://ucsd-progsys.github.io/liquidhaskell-tutorial/book.pdf)
by the Liquid Haskell founders.

Haskell can be Unsafe
=====================

Throughout this semester I have made the argument that Haskell's type
system make programming more correct, and more safe, by eliminating
bugs at compiletime as opposed to runtime.

Haskell is indeed a step in the right direction, but it is still
possible to do very unsafe things.  First, one might think that it is
not possible to obtain a segfault in Haskell, because of the type
system, but this is just not true.  Consider the following basic use
of a function called `unsafeIndex :: Vector a -> Int -> a`:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.{haskell}
ghci> :m +Data.Vector
ghci> let v = fromList ["haskell", "C#"]
gchi> unsafeIndex v 0
"haskell"
ghci> unsafeIndex v 1
"C#"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now consider what happens when we ask for an index out of bounds:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.{haskell}
ghci> unsafeIndex v 10
'ghci' terminated by signal SIGSEGV ...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now this function `unsafeIndex` has *unsafe* in the name, but this
shows that it possible to define a Haskell function that could cause a
segfault.

What about reading past the edge of a memory buffer and returning
bytes stored in memory unintentionally. This is excatly the main poin
behind the heart-bleed exploit. Consider the following:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.{haskell}
ghci> :m + Data.Text Data.Text.Unsafe
ghci> let t = pack "Theory"
ghci> takeWord16 5 t
"Theor"
ghci> takeWord16 100 t
"Theory\NUL\NUL\9880\588\SOH\NUL\25392\2537\SOH\NUL\429108\SOH\NUL\NUL\NUL\NUL\NUL\ENQ\NUL\NUL\NUL\46792[\SOH\NUL\31515\835\SOH\NUL\53497\2100\SOH\NUL\741428\SOH\NUL\11868\24832\NUL\NUL\46792[\SOH\NUL\31515\835\SOH\NUL\53497\2100\SOH\NUL\757812\SOH\NUL\13156\24832\NUL\NUL\50168\637\SOH\NUL\774196\SOH\NUL\790580\SOH\NUL\33979\854\SOH\NUL\830516\SOH\NUL\17409\1652\SOH\NUL\17409\1652\SOH\NUL\41801\1552\SOH\NUL"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Notice that the final command above actually returns bytes stored in
memory that are adjacent to `"Theory"`.  These extra bytes could be
junk, but they could also be passwords to bank accounts or other
sensitive information.

These examples show that while Haskell is a step in the right
direction, there is still more work that needs to be done.

Liquid Haskell: Our First Example
==================================

A real world example might be to use Liquid Haskell to prevent any
misuse of the function `takeWord16` by refining its type.  Now one
might wonder why anyone would want to use this function knowing that
is unsafe.  Haskell allows one to drop down to the C level and
provides many unsafe functions to allow the programmer to control
efficiency.

We are going to define a safe version of `takeWord16` called
`safeTakeWord16 :: Int -> String -> String`.  To use Liquid Haskell to
prevent any misuse of this we will refine its type so that the length
of the input list must be at least the the first input of the
function.  That is, if we apply it like `safeTakeWord16 2 "Liquid"`
then the program should type check using Liquid Haskell, but if we
apply it like `safeTakeWord16 3 "LH"`, then we should expect a type
error from Liquid Haskell.

The first thing we will do is define a new type called `SizedListLB a
N` where `a` is the type of the elements of our new list, and `N` is
the lower bound on the size each list is a allowed to have.  Thus,
`SizedListLB Char 5` is the type of all lists whose size is at least
`5`.  Thus, the list `['a','b','c','d','e']` has type `SizedListLB
Char 5` while `[1,2]` does not have type `SizedListLB Int 4`.

We define our new type as follows:


<pre><span class=hs-linenum>120: </span><span class='hs-keyword'>{-@</span> <span class='hs-keyword'>type</span> <span class='hs-conid'>SizedListLB</span> <span class='hs-varid'>a</span> <span class='hs-conid'>N</span> <span class='hs-keyglyph'>=</span> <span class='hs-layout'>{</span><span class='hs-varid'>s</span><span class='hs-conop'>:</span><span class='hs-keyglyph'>[</span><span class='hs-varid'>a</span><span class='hs-keyglyph'>]</span> <span class='hs-keyglyph'>|</span> <span class='hs-varid'>len</span> <span class='hs-varid'>s</span> <span class='hs-varop'>&gt;=</span> <span class='hs-conid'>N</span><span class='hs-layout'>}</span> <span class='hs-keyword'>@-}</span> 
</pre>

Think of `len s` as the one true length of the list s, and it is built
into Liquid Haskell.

Finally, using this new type we can refine `safeTakeWord16` as
follows:


<pre><span class=hs-linenum>130: </span><span class='hs-keyword'>{-@</span> <span class='hs-varid'>safeTakeWord16</span> <span class='hs-keyglyph'>::</span> <span class='hs-varid'>n</span><span class='hs-conop'>:</span><span class='hs-conid'>Int</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-conid'>SizedListLB</span> <span class='hs-conid'>Char</span> <span class='hs-varid'>n</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-conid'>String</span> <span class='hs-keyword'>@-}</span>
<span class=hs-linenum>131: </span><span class='hs-definition'>safeTakeWord16</span> <span class='hs-keyglyph'>::</span> <span class='hs-conid'>Int</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-conid'>String</span> <span class='hs-keyglyph'>-&gt;</span> <span class='hs-conid'>String</span>
<span class=hs-linenum>132: </span><a class=annot href="#"><span class=annottext>x1:GHC.Types.Int -&gt; {s : [GHC.Types.Char] | len s &gt;= x1} -&gt; [GHC.Types.Char]</span><span class='hs-definition'>safeTakeWord16</span></a> <a class=annot href="#"><span class=annottext>GHC.Types.Int</span><span class='hs-varid'>n</span></a> <a class=annot href="#"><span class=annottext>{s : [GHC.Types.Char] | len s &gt;= n}</span><span class='hs-varid'>s</span></a> <span class='hs-keyglyph'>=</span> <span class='hs-keyword'>let</span> <a class=annot href="#"><span class=annottext>Data.Text.Internal.Text</span><span class='hs-varid'>t</span></a> <span class='hs-keyglyph'>=</span> <a class=annot href="#"><span class=annottext>[GHC.Types.Char] -&gt; Data.Text.Internal.Text</span><span class='hs-conid'>T</span></a><span class='hs-varop'>.</span><span class='hs-varid'>pack</span> <a class=annot href="#"><span class=annottext>{v : [GHC.Types.Char] | v == s}</span><span class='hs-varid'>s</span></a>
<span class=hs-linenum>133: </span>                      <span class='hs-keyword'>in</span> <a class=annot href="#"><span class=annottext>Data.Text.Internal.Text -&gt; [GHC.Types.Char]</span><span class='hs-varid'>show</span></a> <span class='hs-varop'>$</span> <a class=annot href="#"><span class=annottext>GHC.Types.Int -&gt; Data.Text.Internal.Text -&gt; Data.Text.Internal.Text</span><span class='hs-conid'>UT</span></a><span class='hs-varop'>.</span><span class='hs-varid'>takeWord16</span> <a class=annot href="#"><span class=annottext>{v : GHC.Types.Int | v == n}</span><span class='hs-varid'>n</span></a> <a class=annot href="#"><span class=annottext>{v : Data.Text.Internal.Text | v == t}</span><span class='hs-varid'>t</span></a>
</pre>

The benefit of all of this is that when we use `safeTakeWord` Liquid
Haskell enforces that the input meets the refinement type.  Thus, the
following type checks:

<pre><span class=hs-linenum>140: </span><span class='hs-definition'>ex2</span> <span class='hs-keyglyph'>::</span> <span class='hs-conid'>String</span>
<span class=hs-linenum>141: </span><a class=annot href="#"><span class=annottext>[GHC.Types.Char]</span><span class='hs-definition'>ex2</span></a> <span class='hs-keyglyph'>=</span> <a class=annot href="#"><span class=annottext>x1:GHC.Types.Int -&gt; {v : [GHC.Types.Char] | len v &gt;= x1} -&gt; [GHC.Types.Char]</span><span class='hs-varid'>safeTakeWord16</span></a> <a class=annot href="#"><span class=annottext>GHC.Types.Int</span><span class='hs-num'>2</span></a> <a class=annot href="#"><span class=annottext>[GHC.Types.Char]</span><span class='hs-str'>"Liquid"</span></a>
</pre>

However, the following does not type check:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~.{haskell}
ex3 :: String
ex3 = safeTakeWord16  100 "Liquid"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~