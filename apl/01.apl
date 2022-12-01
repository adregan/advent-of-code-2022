 solution←{
     ⍝ Where ⍵ is the file path to the day's input.
     ⍝ Partition by lines of tally 0 as those are the empty lines between elves.
     data←↑(≢¨⊆⊢),⎕CSV ⍵ ⍬ 4

     ⎕←'part one:', ⌈/+/data
 }
