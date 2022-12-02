 solution←{
     gms←,/⎕CSV⍠'Separator' ' '⊢⍵ ⍬ 4
     perms←('A' 'B' 'C',⍤(∘.,)'X' 'Y' 'Z')
     get←{⍺⌷⍨0 1+∊⍸(⊂⍵)⍷⍺}

     ⎕←'part one:',+/(perms,⌸4 8 3 1 5 9 7 2 6)∘get¨gms
     ⎕←'part two:',+/(perms,⌸3 4 8 1 5 9 2 6 7)∘get¨gms
 }
