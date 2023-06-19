class MetaLabo {
final int  id;
   final String nom;
	 final String  nomBiologiste;
	 final String nomlabo;
	
	 final String adresse;
	
	 final String ville;
	
	 final String tel;
	
	 final String fax;
	
	 final String commentaire ;
	
	 final String matriculefiscale;
	
	 final String useradd;
	
	
	 final String enteteAfour;
	 final String piedAfour;
	
	 final String codebiologistecnam;
	
	 final String mail;
	
	 final String textmail;

    MetaLabo(  { required this.id,required this.nomBiologiste,required this.adresse,required this.nomlabo,required this.tel,required this.nom,required this.fax,required this.useradd,required this.mail,required this.ville,required this.codebiologistecnam,required this.commentaire,required this.enteteAfour, required this.matriculefiscale,required this.piedAfour,required this.textmail});


  factory MetaLabo.fromMap(Map dossierMap) {
    return MetaLabo(
       id : dossierMap['id'],
       nomBiologiste : dossierMap['nomBiologiste'],
        nomlabo : dossierMap['nomlabo'],
           nom:dossierMap['nom'],
	   	  adresse:dossierMap['adresse'],
	
	
	  ville:dossierMap['ville'],
	
	  tel:dossierMap['tel'],
	
	  fax:dossierMap['fax'],
	
	  commentaire :dossierMap['commentaire'],
	
	  matriculefiscale:dossierMap['matriculefiscale'],
	
	  useradd:dossierMap['useradd'],
	
	
	  enteteAfour:dossierMap['enteteAfour'],
	  piedAfour:dossierMap['piedAfour'],
	
	  codebiologistecnam:dossierMap['codebiologistecnam'],
	
	  mail:dossierMap['mail'],
	
	  textmail:dossierMap['textmail']
    );
  }
    
  }

/*

   MetaLabo. fromJson(Map<String, dynamic> json){
      id = json['id'];
       nomBiologiste = json['nomBiologiste'];
        nomlabo = json['nomlabo'];
           nom=json['nom'];
	   	  adresse=json['adresse'];
	
	  adresse=json['adresse'];
	
	  ville=json['ville'];
	
	  tel=json['tel'];
	
	  fax=json['fax'];
	
	  commentaire =json['commentaire'];
	
	  matriculefiscale=json['matriculefiscale'];
	
	  useradd=json['useradd'];
	
	
	  enteteAfour=json['enteteAfour'];
	  piedAfour=json['piedAfour'];
	
	  codebiologistecnam=json['codebiologistecnam'];
	
	  mail=json['mail'];
	
	  textmail=json['textmail'];
  }
 */
