let () =
  let filename = Sys.argv.(1) in
  let lines = FileReader.read_file filename in
  let words = WordCounter.count_words lines in
  let frequencies = FrequencyCounter.count_frequencies words in

  (* Print word frequencies *)
  StringMap.iter (fun word count -> 
    Printf.printf "%s: %d\n" word count) frequencies
    
