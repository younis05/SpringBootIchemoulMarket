   	function fileValidation() { 
            var fileInput =  
                document.getElementById('image'); 
              
            var filePath = fileInput.value; 
          
            // Allowing file type 
            var allowedExtensions =  
                    /(\.jpg|\.jpeg|\.png|\.gif)$/i; 
              
            if (!allowedExtensions.exec(filePath)) { 
                alert('Invalid file type'); 
                fileInput.value = ''; 
                return false; 
            }  
            else  
            { 
              
                // Image preview 
                if (fileInput.files && fileInput.files[0]) { 
                    var reader = new FileReader(); 
                    reader.onload = function(e) { 
                        document.getElementById( 
                            'imagePreview').innerHTML =  
                            '<img src="' + e.target.result 
                            + '" style="width:60px;height:50px" />'; 
                    }; 
                      
                    reader.readAsDataURL(fileInput.files[0]); 
                } 
            } 
        }





