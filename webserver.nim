import asynchttpserver, asyncdispatch

proc cb(req: Request) {.async.} =
  await req.respond(Http200, "Goodbye, World!")

asyncCheck newAsyncHttpServer().serve(Port(8080), cb)
runForever()
