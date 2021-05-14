
 function creatediv(row,i) {
     

    var div = document.createElement('div');
    div.id = i;
        div.innerHTML='<h>COMMANDE'+(i+5)+'</h>'          
    div.innerHTML += '<label for="id_commande"> id_commande: <input type="text" style="width:100px" name="id_commande" id="a'+i+'" readOnly="readOnly">'
    div.innerHTML += ' <label for="id_utilisateur">id_utilisateur: <input type="text" style="width:100px" name="id_utilisateur" "placeholder="id_utilisateur" id="b'+i+'" readOnly="readOnly" >'
    div.innerHTML +='<label for="id_livreur">id_livreur: <input type="text" name="id_livreur" style="width:100px" placeholder="id_livreur" id="c'+i+'" readOnly="readOnly" >'
    div.innerHTML +='<label for="quantite">quantite: <input type="text" name="quantite" style="width:100px"  placeholder="quantite" min="0" max="20" id="d'+i+'" readOnly="readOnly">'
    div.innerHTML +='<label for="id_produit">id_produit: <input type="text" name="id_produit" style="width:100px"  placeholder="id_produit" id="e'+i+'" readOnly="readOnly">'
    div.innerHTML +='<label for="prix"> prix: <input type="text" name="prix"  placeholder="prix" style="width:100px" step="0.01" min="0" max="50" id="f'+i+'" readOnly="readOnly">'            
    
    document.getElementById('AFFICHER').appendChild(div);
    document.getElementById("a"+i).value = row["id_commande"];
         document.getElementById('b'+i).value = row["id_utilisateur"];
             document.getElementById('c'+i).value = row["id_livreur"];
    
         document.getElementById('d'+i).value = row["quantite"];
    
         document.getElementById('e'+i).value = row["id_produit"];
         document.getElementById('f'+i).value = row["prix"];
   

}

