let count_words lines=
   let split_words lines=
    Str.split (Str.regexp "[ \t\n]+") line in 
   List.flatten(List.map split_words lines)
   |> List.length
    
   
