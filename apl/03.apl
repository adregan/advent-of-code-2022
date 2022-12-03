 solution←{
     in←,⎕CSV ⍵ ⍬ 1
     alphs←(819⌶⎕A),⎕A
     same←{⍺=⍵:⍺ ⋄ ''}

     ⎕←'part one:',+/alphs⍳∊{(∘.same)⌿↓∪⍤1(⊢⍴⍨2,2÷⍨≢)⍵}¨in
     ⎕←'part two:',+/alphs⍳∊∘.same/¨∊∘,¨¨2(∘.same)/¨(,⊂⍨(1 0 0⍴⍨≢))∪¨in
 }
