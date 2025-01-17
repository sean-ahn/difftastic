pub fn replace(
  // <- keyword
  // <- keyword
  //   ^ function
  //          ^ punctuation.bracket
  in original: String,
  // <- property
  // ^ variable.parameter
  //            ^ type
  //                 ^ punctuation.delimiter
  each pattern: String,
  // <- property
  //   ^ variable.parameter
  //             ^ type
  //                  ^ punctuation.delimiter
  with replacement: String,
  // <- property
  //   ^ variable.parameter
  //                ^ type
  //                      ^ punctuation.delimiter
) -> String {
  // <- punctuation.delimiter
  // ^ type
  //        ^ punctuation.bracket
  string.replace(in: original, each: pattern, with: replacement)
  // <- module
  //        ^ function
  //              ^ property
  //                  ^ variable.parameter
  //                            ^ property
  //                                  ^ variable.parameter
  //                                           ^ property
  //                                                 ^ variable.parameter
  original
  // ^ variable.parameter
  |> string.replace(pattern, replacement)
  // <- operator
  // ^ module
  //        ^ function
  //                ^ variable.parameter
  //                         ^ variable.parameter
}

fn record_with_fun_field(record) {
  let foo = Bar(baz: fn(x) { x + 1 })
  foo.baz(41)
  // <- variable
  //  ^ property
  record.foobar("hello")
  // ^ variable.parameter
  //     ^ property
  string.replace("hello", "l", "o")
  // ^ module
  //     ^ function
}

fn trial(uri) {
  //      ^ variable.parameter
  case uri {
    //  ^ variable.parameter
    Uri(scheme: None) -> True
    // <- type
    //  ^ property
    //          ^ type
    //                   ^ type
    _ -> False
    // <- comment.unused
  }
}

fn myfun(argument) {
  let local_fun = fn(x) { x + 1 }
  //   ^ variable
  //                 ^ variable.parameter
  //                      ^ variable.parameter

  argument
  // ^ variable.parameter
  |> local_fun
  // <- operator
  // ^ variable
  |> module_fun
  // ^ function

  module_fun(local_fun(argument))
  // ^ function
  //         ^ variable
  //                   ^ variable.parameter
}
