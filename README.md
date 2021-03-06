# hello-web

## Building

Use the `build` script:

```sh-session
$ ./build
```

## Benchmarking

First, install `hey` (a reasonable alternative to Apache Bench):

```sh-session
$ go get -u github.com/rakyll/hey
```

```sh-session
$ hey -cpus 2 -c 10 -n 100000 -H 'Accept-Encoding: gzip, deflate' http://localhost:4567/ # Ruby/Sinatra
$ hey -cpus 2 -c 10 -n 100000 -H 'Accept-Encoding: gzip, deflate' http://localhost:8000/ # Go
$ hey -cpus 2 -c 10 -n 100000 -H 'Accept-Encoding: gzip, deflate' http://127.0.0.1:3000/ # Haskell/Scotty
$ hey -cpus 2 -c 10 -n 100000 -H 'Accept-Encoding: gzip, deflate' http://127.0.0.1:8080/ # Haskell/Servant
```

### Ruby

```
Summary:
  Total:	60.3439 secs
  Slowest:	0.1115 secs
  Fastest:	0.0010 secs
  Average:	0.0060 secs
  Requests/sec:	1657.1670

  Total data:	1200000 bytes
  Size/request:	12 bytes
```

### Go

```
Summary:
  Total:	5.2868 secs
  Slowest:	0.0103 secs
  Fastest:	0.0001 secs
  Average:	0.0005 secs
  Requests/sec:	18914.9752

  Total data:	1300000 bytes
  Size/request:	13 bytes
```

### Haskell/Scotty

```
Summary:
  Total:	4.4114 secs
  Slowest:	0.0055 secs
  Fastest:	0.0001 secs
  Average:	0.0004 secs
  Requests/sec:	22668.7974
```

### Haskell/Servant

```
Summary:
  Total:	5.9051 secs
  Slowest:	0.0052 secs
  Fastest:	0.0001 secs
  Average:	0.0006 secs
  Requests/sec:	16934.5494
```
