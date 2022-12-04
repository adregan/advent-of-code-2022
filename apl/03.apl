 solution←{
     in←,⎕CSV ⍵ ⍬ 1
     a←(819⌶⎕A),⎕A
     same←{⍺=⍵:⍺ ⋄ ''}

     ⎕←'part one:',+/(a∘⍳⍤⊃∘∪⍤∩/(↓(⊢⍴⍨2,2÷⍨≢)))¨in
     ⎕←'part two:',+/a⍳∊∘.same/¨∊∘,¨¨2(∘.same)/¨(,⊂⍨(1 0 0⍴⍨≢))∪¨in
 }
