(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var772 0)
(declare-sort var686 0)
(declare-sort var752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun catalog/-1895966464 (var772) var686)
(declare-fun append/-1031950772 (String var752) String)
(declare-fun cast-from-var686-to-var752 (var686) var752)
(declare-fun schema/-1895966464 (var772) var686)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var772 var772)
(declare-const var447 var772) ; Statement: r1 := @this: org.hibernate.boot.model.relational.Namespace$Name 
(assert (not (= var447 null-var772)))
(define-const var275 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var275)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var275!1 String)
(assert (= var275!1 ""))
(assert true)
(define-const var3816 String (append/672562846 var275!1 "Name{catalog=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name{catalog=") 
(declare-const var275!2 String)
(assert (= var275!2 (str.++ var275!1 "Name{catalog=")))
(define-const var2958 var686 (catalog/-1895966464 var447)) ; Statement: $r2 = r1.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier catalog> 
(assert true)
(define-const var773 String (append/-1031950772 var3816 (cast-from-var686-to-var752 var2958))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3816!1 String)
(assert (str.prefixof var3816 var3816!1))
(assert true)
(define-const var511 String (append/672562846 var773 ", schema=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", schema=") 
(declare-const var773!1 String)
(assert (= var773!1 (str.++ var773 ", schema=")))
(define-const var1297 var686 (schema/-1895966464 var447)) ; Statement: $r5 = r1.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier schema> 
(assert true)
(define-const var3983 String (append/-1031950772 var511 (cast-from-var686-to-var752 var1297))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var511!1 String)
(assert (str.prefixof var511 var511!1))
(assert true)
(define-const var2530 String (append/-1166366385 var3983 125)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3983!1 String)
(assert (str.prefixof var3983 var3983!1))
(assert true)
(define-const var3731 String (toString/-2075883882 var2530)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), catalog/-1895966464=([org.hibernate.boot.model.relational.Namespace$Name], org.hibernate.boot.model.naming.Identifier), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var686-to-var752=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), schema/-1895966464=([org.hibernate.boot.model.relational.Namespace$Name], org.hibernate.boot.model.naming.Identifier), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var772=org.hibernate.boot.model.relational.Namespace$Name, var447=r1, var275=$r0, var3816=$r3, var686=org.hibernate.boot.model.naming.Identifier, var2958=$r2, var752=java.lang.Object, var773=$r4, var511=$r6, var1297=$r5, var3983=$r7, var2530=$r8, var3731=$r9}
; {org.hibernate.boot.model.relational.Namespace$Name=var772, r1=var447, $r0=var275, $r3=var3816, org.hibernate.boot.model.naming.Identifier=var686, $r2=var2958, java.lang.Object=var752, $r4=var773, $r6=var511, $r5=var1297, $r7=var3983, $r8=var2530, $r9=var3731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.model.relational.Namespace$Name;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Name{catalog=");	$r2 = r1.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier catalog>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", schema=");	$r5 = r1.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier schema>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1