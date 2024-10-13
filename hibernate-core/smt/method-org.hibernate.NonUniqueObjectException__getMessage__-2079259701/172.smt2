(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var714 0)
(declare-sort var1179 0)
(declare-sort var411 0)
(declare-sort var1547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/918716458 (var1179) String)
(declare-fun cast-from-var714-to-var1179 (var714) var1179)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/1323305080 (var714) String)
(declare-fun identifier/1323305080 (var714) var411)
(declare-fun var1547_infoString/1203698788 (String var411) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var714 var714)
(declare-const var3523 var714) ; Statement: r1 := @this: org.hibernate.NonUniqueObjectException 
(assert (not (= var3523 null-var714)))
(define-const var1162 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1162)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1162!1 String)
(assert (= var1162!1 ""))
(assert true)
(define-const var2552 String (getMessage/918716458 (cast-from-var714-to-var1179 var3523))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>() 
(assert true)
(define-const var1351 String (append/672562846 var1162!1 var2552)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1162!2 String)
(assert (= var1162!2 (str.++ var1162!1 var2552)))
(assert true)
(define-const var188 String (append/672562846 var1351 " : ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var1351!1 String)
(assert (= var1351!1 (str.++ var1351 " : ")))
(define-const var1038 String (entityName/1323305080 var3523)) ; Statement: $r5 = r1.<org.hibernate.NonUniqueObjectException: java.lang.String entityName> 
(define-const var2092 var411 (identifier/1323305080 var3523)) ; Statement: $r4 = r1.<org.hibernate.NonUniqueObjectException: java.io.Serializable identifier> 
(define-const var3187 String (var1547_infoString/1203698788 var1038 var2092)) ; Statement: $r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r5, $r4) 
(assert true)
(define-const var446 String (append/672562846 var188 var3187)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var188!1 String)
(assert (= var188!1 (str.++ var188 var3187)))
(assert true)
(define-const var774 String (toString/-2075883882 var446)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/918716458=([javax.persistence.PersistenceException], java.lang.String), cast-from-var714-to-var1179=([org.hibernate.NonUniqueObjectException], javax.persistence.PersistenceException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/1323305080=([org.hibernate.NonUniqueObjectException], java.lang.String), identifier/1323305080=([org.hibernate.NonUniqueObjectException], java.io.Serializable), var1547_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var714=org.hibernate.NonUniqueObjectException, var3523=r1, var1162=$r0, var1179=javax.persistence.PersistenceException, var2552=$r2, var1351=$r3, var188=$r7, var1038=$r5, var411=java.io.Serializable, var2092=$r4, var1547=org.hibernate.pretty.MessageHelper, var3187=$r6, var446=$r8, var774=$r9}
; {org.hibernate.NonUniqueObjectException=var714, r1=var3523, $r0=var1162, javax.persistence.PersistenceException=var1179, $r2=var2552, $r3=var1351, $r7=var188, $r5=var1038, java.io.Serializable=var411, $r4=var2092, org.hibernate.pretty.MessageHelper=var1547, $r6=var3187, $r8=var446, $r9=var774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.NonUniqueObjectException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r5 = r1.<org.hibernate.NonUniqueObjectException: java.lang.String entityName>;	$r4 = r1.<org.hibernate.NonUniqueObjectException: java.io.Serializable identifier>;	$r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r5, $r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1