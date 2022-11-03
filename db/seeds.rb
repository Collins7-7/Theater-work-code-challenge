
 aud6 = Audition.create(actor: "Grace", location: "Juja", phone: 745, hired: false)
 aud7= Audition.create(actor: "Ndanu", location: "Gash", phone: 746, hired: false)
 aud8= Audition.create(actor: "Tesh", location: "Ukambani", phone: 747, hired: true)
 aud9= Audition.create(actor: "Job", location: "Galatia", phone: 748, hired: true)

 role_yetu = Role.create(character_name: "Batman")

 role_yetu.auditions << aud6
 role_yetu.auditions << aud7
 role_yetu.auditions << aud8
 role_yetu.auditions << aud9