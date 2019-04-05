# PostgreSQL

Asynchronous client in pure Swift with [cooperative multitasking](https://github.com/tris-code/fiber). **No callbacks.**

```swift
.package(url: "https://github.com/tris-code/postgresql.git", .branch("master"))
```

## Usage

```swift
import Fiber
import PostgreSQL

async.use(Fiber.self)

async.main {
    let client = PostgreSQL.Client(host: "127.0.0.1", port: 5432)
    try client.connect(user: "postgres")
    let result = try client.query("select * from rows;")
    print(result)
}

async.loop.run()
```

```bash
$ swift run
```
