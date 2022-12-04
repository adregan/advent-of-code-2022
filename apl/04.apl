 solution←{
     in←⍎⍤(','@('-'=⊢))¨⎕CSV ⍵

     incl←≥⍥⊃∧≤⍥(2⊃⊢)
     ⎕←'part one:',+/∨/2 incl/⍤1⊢(⊢,(1⌷⍉))in
 }
