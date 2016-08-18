
window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);


  function addToDoItem() {
    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field
    newToDoItem = document.getElementById("todo-input").value;
    document.getElementById("todo-input").value = '';
    var newToDoListElement = document.createElement("LI");
    newToDoListElement.innerHTML = newToDoItem;
    document.getElementsByClassName("todo-list-items")[0].appendChild(newToDoListElement);
  }

  function markAsDone() {
    // doneButton.classList.add('liked');
    // doneButton.innerHTML = "Liked!";
    // document.querySelector('h1').style.color = "red";
    var listElement = document.getElementsByClassName("todo-list-items")[0];
    var doneListElement = document.getElementsByClassName("done-list-items")[0];
    var newDoneListItem = listElement.getElementsByTagName('li')[0];
    newDoneListItem.classList.add('done')
    doneListElement.insertBefore(newDoneListItem, doneListElement.firstElementChild);
    // listElement.removeChild(newDoneListItem);

  } 
  
}
