 solution←{
     in←,⎕CSV ⍵ ⍬ 1
     a←((819⌶⎕A),⎕A)
     ⎕←'part one:',+/{a⍳⍵⌷⍨⊃⊃⍸⊃∘.=⌿↓(⊢⍴⍨2,2÷⍨≢)⍵}¨in
 }
