 solution←{
     gms←,/⎕CSV⍠'Separator' ' '⊢⍵ ⍬ 4
     perms←('A' 'B' 'C',⍤(∘.,)'X' 'Y' 'Z')

     ⎕←'part one:',+/(perms,⌸4 8 3 1 5 9 7 2 6)∘{⍺⌷⍨0 1+∊⍸(⊂⍵)⍷⍺}¨gms
 }
