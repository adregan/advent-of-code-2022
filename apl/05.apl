 solution←{
     (stateIn movesIn)←((×≢¨)⊆⊢)⊃⎕NGET ⍵ 1
     state←⌽¨{(×≢¨⍵)/⍵}(∊⎕A∘(∊⍨⊆⊢))¨,⌿↑¯1↓stateIn
     moves←(⍎¨⎕D∘(∊⍨⊆⊢))¨movesIn

     crane←{
         s←⍺
         (amt from to)←⊃(m ms)←1(↑,⊂⍤↓)⍵
         (cargo rest)←amt∘(↑,⍥⊂↓)⌽(from∘⊃)s
         updateTo←(to⊃s),cargo

         s[to]←⊂updateTo
         s[from]←⊂⌽rest

         0=≢ms:s
         s ∇ ms
     }

     state crane moves
 }
