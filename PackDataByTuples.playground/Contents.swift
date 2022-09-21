import UIKit

let success = (200, "HTTP OK")
let fileNotFound = (404, "file not found")
let redirect: (Int, String) = (302, "Temporary redirect")

success.0
success.1

let me = (name: "Mars", no: 11, email: "11@boxue.io")
me.name
me.no
me.email

var (successCode, successMessage) = success
successCode = 201
successMessage

success

let (_, errorMessage) = fileNotFound
errorMessage

let tuple11 = (1, 1)
let tuple12 = (1, 2)
tuple11 < tuple12

let tuple123 = (1, 2, 3)

//tuple12 == tuple123

let largeTuple1 = (1, 2, 3, 4, 5, 6, 7)
let largeTuple2 = (1, 2, 3, 4, 5, 6, 7)

//largeTuple1 == largeTuple2


