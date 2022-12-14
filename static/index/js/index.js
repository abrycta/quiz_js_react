document.addEventListener("DOMContentLoaded", () => {
    document.querySelector("#create-blank-form").addEventListener("click", () => {
        const csrf = Cookies.get('csrftoken');
        fetch('/exam/create', {
            method: "POST",
            headers: {'X-CSRFToken': csrf},
            body: JSON.stringify({
                title: "New Exam"
            })
        })
        .then(attempt => attempt.json())
        .then(result => {
            window.location = `/exam/${result.code}/edit`
        })
    })
})