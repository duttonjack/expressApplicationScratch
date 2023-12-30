const $bookList = $('#bookList');

fetch("/api/books")
    .then (response => {
    if (!response.ok){
        throw new Error(`HTTP Error - ${response.status}`)
    }
    console.log("response", response);
    return response.json();
    })
    .then(data => {
        console.log(data[0])
        const $ul = $("<ul></ul>").appendTo($bookList);
        data.forEach(book => {
            $("<li>").text(`${book.title} by ${book.author}`).appendTo($ul);
        });
        
    })
    .catch(error => {
        console.error('Error', error);
    })
