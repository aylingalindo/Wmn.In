/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

(function () {
  'use strict'
  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')
  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
      checkPass()
    }, false)
  })
  
  ///const form = forms[0];
  //Array.from(form.elements).forEach((input) => {
  //  form.addEventListener('input', event => {
  //    event.classList.add('was-validated')
  //  }, false)
  //})
})()

const openSignUpBtn = document.querySelectorAll('[data-modal-target]')
const closeSignUpBtn = document.querySelectorAll('[data-close-button]')
const overlay = document.getElementById('overlay')


// date validation
function dateValidation() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!
    var yyyy = today.getFullYear();

    if (dd < 10) {
        dd = '0' + dd;
    }

    if (mm < 10) {
        mm = '0' + mm;
    } 
    
    today = yyyy + '-' + mm + '-' + dd;
    document.getElementById("fechaID").setAttribute("max", today);

}

// para que el boton de sign up abra la ventana pop up
openSignUpBtn.forEach(button => {  
    button.addEventListener('click', () => { // evento que va a correr cada que se seleccione un boton con data modal target
        const modal = document.querySelector(button.dataset.modalTarget)   // si se le hace un click se obtiene el elemento del que es target
        openModal(modal)
    })
})
function openModal(modal) { 
    if(modal==null) return
    modal.classList.add('active')
    overlay.classList.add('active')
}

// para que la tachita cierre la ventana pop up
closeSignUpBtn.forEach(button => {
    button.addEventListener('click', () => {
        const modal = button.closest('.card')
        closeModal(modal)
    })
})

function closeModal(modal) {
    if(modal==null) return
    modal.classList.remove('active')
    overlay.classList.remove('active')
}

//para que el confirmar contraseña coincida con contraseña 
function checkPass() {
    var pass = document.getElementById("pass")
    var confirmPass = document.getElementById("passConfirm")
    
    if (pass.value != confirmPass.value) {
        confirmPass.setCustomValidity("Invalid field.");
    }else {
        confirmPass.setCustomValidity("");
    }
}

