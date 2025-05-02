(function($){
    "use strict";
    $(".inputtags").tagsinput('items');
    $(document).ready(function() {
        $('#example1').DataTable();
    });
    $('.icp_demo').iconpicker();

    $('#datepicker1').datepicker({
        dateFormat: 'yyyy-mm-dd',
        language: {
            today: 'Today',
            days: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
            daysShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
            daysMin: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
            months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            monthsShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        }
    });

    $('#datepicker2').datepicker({
        dateFormat: 'yyyy-mm-dd',
        language: {
            today: 'Today',
            days: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
            daysShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
            daysMin: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
            months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            monthsShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        }
    });

    $('#datepicker3').datepicker({
        dateFormat: 'yyyy-mm-dd',
        language: {
            today: 'Today',
            days: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
            daysShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
            daysMin: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
            months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            monthsShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        }
    });


    $('#timepicker').datepicker({
        language: 'en',
        timepicker: true,
        onlyTimepicker: true,
        timeFormat: 'hh:ii',
        dateFormat: null
    });

    tinymce.init({
        selector: '.editor',
        height : '300'
    });

    // Pilih semua input file dan container preview
    const fileInputs = document.querySelectorAll('.file-input');
    const previewContainers = document.querySelectorAll('.preview-container');

    // Tambahkan event listener ke semua input
    fileInputs.forEach((input, index) => {
        input.addEventListener('change', (e) => {
            const file = e.target.files[0];
            if (file) handleFile(file, previewContainers[index]);
        });
    });

    function handleFile(file, container) {
        if (!file.type.startsWith('image/')) {
            alert('Hanya file gambar yang diizinkan');
            return;
        }

        const reader = new FileReader();
        reader.onload = (e) => {
            container.innerHTML = `
                <img class="preview-image" src="${e.target.result}" alt="${file.name}">
                <div class="file-name">${file.name}</div>
                <button class="remove-btn">&times;</button>
            `;

            // Tambahkan event listener untuk tombol hapus
            container.querySelector('.remove-btn').addEventListener('click', () => {
                container.classList.remove('active');
                container.innerHTML = '';
                input.value = ''; // Reset input yang sesuai
            });

            container.classList.add('active');
        };
        reader.readAsDataURL(file);
    }

    document.addEventListener('click', (e) => {
        previewContainers.forEach(container => {
            if (!e.target.closest('.upload-wrapper') && container.classList.contains('active')) {
                container.classList.remove('active');
            }
        });
    });

        document.querySelectorAll(".toggle-password").forEach(button => {
            button.addEventListener("click", function () {
                let passwordField = this.previousElementSibling;
                let icon = this.querySelector("i");

                if (passwordField.type === "password") {
                    passwordField.type = "text";
                    icon.classList.replace("fa-eye", "fa-eye-slash");
                } else {
                    passwordField.type = "password";
                    icon.classList.replace("fa-eye-slash", "fa-eye");
                }
            });
        });

})(jQuery);
