 solution←{
     in←,⎕CSV ⍵ ⍬ 1
     a←(819⌶⎕A),⎕A

     ⎕←'part one:',+/(a∘⍳⍤⊃∘∪⍤∩/(↓(⊢⍴⍨2,2÷⍨≢)))¨in
     ⎕←'part two:',+/a⍳∊(∪⍤∩/⊢⍴⍨3,⍨3÷⍨≢)in
 }
