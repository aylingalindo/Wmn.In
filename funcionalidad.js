const openSignUpBtn = document.querySelectorAll('[data-modal-target]')
const closeSignUpBtn = document.querySelectorAll('[data-close-button]')
const overlay = document.getElementById('overlay')

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