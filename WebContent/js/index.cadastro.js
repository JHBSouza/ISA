    function HabiDsabi(){
    if(document.getElementById('habi').checked == true){
        document.getElementById('envia').disabled = ""
    }
    if(document.getElementById('habi').checked == false){
        document.getElementById('envia').disabled = "disabled"

    }
    }

    function validEmail(){
        if (document.getElementById('email').checked == 0) {
            alert('email em branco');
        } else {
            alert('email certo');
        }
    }
