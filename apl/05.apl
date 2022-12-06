 solution←{
     (s m)←((×≢¨)⊆⊢)⊃⎕NGET ⍵ 1
     state←⌽¨{(×≢¨⍵)/⍵}(∊⎕A∘(∊⍨⊆⊢))¨,⌿↑¯1↓s
     moves←(⍎¨⎕D∘(∊⍨⊆⊢))¨m

     update←{
         ⍝ ⍺ is state ⍵ is a procedure
         s←⍺
         (move from to)←⍵
         (cargo stack)←(-move)∘(↑,⍥⊂↓)from⊃⊢s
         s[to]←⊂(to⊃s),(⍺⍺ cargo)
         s[from]←⊂stack
         s
     }

     crane←{
         ⍝ ⍺⍺ determines moving order
         (m ms)←1(↑,⊂⍤↓)⍵
         s←⍺ ⍺⍺ update m
         0=≢ms:s
         s ∇ ms
     }

     ⎕←'part one: ',⊢/¨state⌽crane moves
     ⎕←'part two: ',⊢/¨state⊢crane moves
 }
