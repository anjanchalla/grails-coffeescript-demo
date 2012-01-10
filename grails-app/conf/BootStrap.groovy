import org.example.demo.Book

class BootStrap {
    def init = { servletContext ->
    
        for (i in 1..100) {
            new Book(title: "Book $i", description: "Just another awesome book!").save()
        }
        
        assert Book.count() == 100
    }
    
    def destroy = {}
}