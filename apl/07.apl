 solution←{
     ⎕IO←0
     _←'tfmt' 'tnest'⎕CY'dfns'
     in←(⊢(/⍨)'$ ls'∘≢¨)⊃⎕NGET x 1

     grow←{
         ∨/'/'=⊃⌽⍵:(1((⊂0)(⊂'/ (dir)')))
         (depth(tv items))←⍺
         ∨/'$'=⊃⍵:(depth+(1 ¯1)⌷⍨'..'≡⊃∘⌽⊢⍵)(tv items)
         'dir'≡⊃⍵:(depth((tv,depth)(items,⊂((⊃⌽⍵),' (dir)'))))
         ⊃⊃⎕VFI⊃⍵:(depth((tv,depth)(items,⊂((⊃⌽⍵),' (file, size=',(⊃⍵),')'))))
         ⍺
     }

     tree←{
         ⍺←⍬
         0=≢⍵:⍺
         (⍺ grow' '(≠⊆⍥⊃⊢)⍵)∇ 1↓⍵
     }

     tfmt tnest(1⊃tree in)
 }
