(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var3766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun identifierSelectFragment/-864639389 (var1368 String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertySelectFragment/-1831923893 (var1368 String String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1368 var1368)
(declare-const null-String String)
(declare-const var1613 var1368) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var1613 null-var1368)))
(declare-const var1175 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1175 null-String)))
(declare-const var120 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var120 null-String)))
(define-const var2520 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2520)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2520!1 String)
(assert (= var2520!1 ""))
(assert true)
(define-const var2610 String (identifierSelectFragment/-864639389 var1613 var1175 var120)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String identifierSelectFragment(java.lang.String,java.lang.String)>(r2, r3) 
(assert true)
(define-const var1126 String (append/672562846 var2520!1 var2610)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2520!2 String)
(assert (= var2520!2 (str.++ var2520!1 var2610)))
(assert true)
(define-const var973 String (propertySelectFragment/-1831923893 var1613 var1175 var120 (ite (= 1 0) true false))) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String propertySelectFragment(java.lang.String,java.lang.String,boolean)>(r2, r3, 0) 
(assert true)
(define-const var1519 String (append/672562846 var1126 var973)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1126!1 String)
(assert (= var1126!1 (str.++ var1126 var973)))
(assert true)
(define-const var3962 String (toString/-2075883882 var1519)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), identifierSelectFragment/-864639389=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertySelectFragment/-1831923893=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, java.lang.String, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1368=org.hibernate.persister.entity.AbstractEntityPersister, var1613=r1, var1175=r2, var3766=null_type, var120=r3, var2520=$r0, var2610=$r4, var1126=$r6, var973=$r5, var1519=$r7, var3962=$r8}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1368, r1=var1613, r2=var1175, null_type=var3766, r3=var120, $r0=var2520, $r4=var2610, $r6=var1126, $r5=var973, $r7=var1519, $r8=var3962}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String identifierSelectFragment(java.lang.String,java.lang.String)>(r2, r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String propertySelectFragment(java.lang.String,java.lang.String,boolean)>(r2, r3, 0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1