document.addEventListener("DOMContentLoaded", function() {
    fetch('/data')
        .then(response => response.text())
        .then(data => {
            const parser = new DOMParser();
            const xmlDoc = parser.parseFromString(data, "text/xml");
            const books = xmlDoc.getElementsByTagName("book");

            let tableBody = document.querySelector("#booksTable tbody");
            tableBody.innerHTML = "";

            for (let book of books) {
                let row = tableBody.insertRow();
                row.insertCell(0).textContent = book.getElementsByTagName("title")[0].textContent;
                row.insertCell(1).textContent = book.getElementsByTagName("author")[0].textContent;
                row.insertCell(2).textContent = book.getElementsByTagName("year")[0].textContent;
            }
        })
        .catch(error => console.error('Error fetching data:', error));
});
