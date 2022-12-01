 solution←{
     ⍝ Where ⍵ is the file path to the day's input.
     ⍝ Partition by lines of tally 0 as those are the empty lines between elves.
     ⍝ Sum each of the elves to get the carrying totals
     totals←+/↑(≢¨⊆⊢),⎕CSV ⍵ ⍬ 4

     ⎕←'part one:', ⌈/totals
     ⎕←'part two:', +/3↑(⊂∘⍒⌷⊢)totals
 }
