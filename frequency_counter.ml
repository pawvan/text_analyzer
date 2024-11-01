module StringMap = Map.Make(String)

let count_frequencies words =
  let add_word map word =
    let count = try StringMap.find word map with Not_found -> 0 in
    StringMap.add word (count + 1) map
  in
  List.fold_left add_word StringMap.empty words
  
