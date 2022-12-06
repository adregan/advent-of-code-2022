 solution←{
     (state procs)←((×≢¨)⊆⊢)⊃⎕NGET ⍵ 1
     state←⌽¨{(×≢¨⍵)/⍵}(∊⎕A∘(∊⍨⊆⊢))¨,⌿↑¯1↓state
     procs←(⍎¨⎕D∘(∊⍨⊆⊢))¨procs

     update←{
         s←⍺
         (move from to)←⍵
         (cargo stack)←(-move)∘(↑,⍥⊂↓)from⊃⊢s
         s[to]←⊂(to⊃s),(⍺⍺ cargo)
         s[from]←⊂stack
         s
     }

     crane←{
         0=≢⍵:⍺
         s←⍺ ⍺⍺ update⊃⍵
         s ∇ 1↓⍵
     }

     ⎕←'part one: ',⊢/¨state⌽crane procs
     ⎕←'part two: ',⊢/¨state⊢crane procs
 }
