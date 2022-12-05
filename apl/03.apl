 solution←{
     in←⎕CSV ⍵ ⍬ 1
     a←(⎕C,⊢)⎕A

     ⎕←'part one:',+/a⍳,(⊃⍤∩/(↓(2,2÷⍨≢)⍴⊢))¨in
     ⎕←'part two:',+/a⍳∊(∪⍤∩)/((3,⍨3÷⍨≢)⍴⊢)in
 }
