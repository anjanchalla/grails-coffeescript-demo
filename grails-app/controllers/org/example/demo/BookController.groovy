package org.example.demo

class BookController {

    def list(Integer max) {
        sleep(1000)
        params.max = Math.min(max ?: 10, 100)
        [books: Book.list(params), bookTotal: Book.count()]
    }
}
