 solution←{
     ⍝ Where ⍵ is the file path to the day's input.
     ⍝ Partition by sign, 0 are the empty lines between elves.
     ⍝ Sum each elf by row to get the carrying totals.
     totals←+/↑(×⊆⊢),⎕CSV ⍵ ⍬ 3

     ⎕←'part one:', ⌈/totals
     ⎕←'part two:', +/3↑(⊂∘⍒⌷⊢)totals
 }
