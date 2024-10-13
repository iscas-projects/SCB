(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1009 0)
(declare-sort var26 0)
(declare-sort var2377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/944490799 (var1009) var26)
(declare-fun append/-1031950772 (String var2377) String)
(declare-fun cast-from-var26-to-var2377 (var26) var2377)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1009 var1009)
(declare-const var1092 var1009) ; Statement: r1 := @this: org.hibernate.boot.model.relational.Namespace 
(assert (not (= var1092 null-var1009)))
(define-const var1814 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1814)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1814!1 String)
(assert (= var1814!1 ""))
(assert true)
(define-const var2530 String (append/672562846 var1814!1 "Schema{name=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Schema{name=") 
(declare-const var1814!2 String)
(assert (= var1814!2 (str.++ var1814!1 "Schema{name=")))
(define-const var493 var26 (name/944490799 var1092)) ; Statement: $r2 = r1.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.relational.Namespace$Name name> 
(assert true)
(define-const var1510 String (append/-1031950772 var2530 (cast-from-var26-to-var2377 var493))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2530!1 String)
(assert (str.prefixof var2530 var2530!1))
(assert true)
(define-const var997 String (append/-1166366385 var1510 125)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1510!1 String)
(assert (str.prefixof var1510 var1510!1))
(assert true)
(define-const var1160 String (toString/-2075883882 var997)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/944490799=([org.hibernate.boot.model.relational.Namespace], org.hibernate.boot.model.relational.Namespace$Name), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var26-to-var2377=([org.hibernate.boot.model.relational.Namespace$Name], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1009=org.hibernate.boot.model.relational.Namespace, var1092=r1, var1814=$r0, var2530=$r3, var26=org.hibernate.boot.model.relational.Namespace$Name, var493=$r2, var2377=java.lang.Object, var1510=$r4, var997=$r5, var1160=$r6}
; {org.hibernate.boot.model.relational.Namespace=var1009, r1=var1092, $r0=var1814, $r3=var2530, org.hibernate.boot.model.relational.Namespace$Name=var26, $r2=var493, java.lang.Object=var2377, $r4=var1510, $r5=var997, $r6=var1160}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.boot.model.relational.Namespace;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Schema{name=");	$r2 = r1.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.relational.Namespace$Name name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1