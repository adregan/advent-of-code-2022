 solution←{
     pstart←{⊃⍸((⍺=≢)∪⍤⊢)⌺⍺⊢((⍺÷2)/⊃⍵),⍵}
     ⎕←↑('part one:' 'part two:'),¨(⊃⍣2 ⎕NGET ⍵ 1)∘(⊣pstart⍨⊢)¨4 14
 }
