(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2143 0)
(declare-sort var1723 0)
(declare-sort var1342 0)
(declare-sort var115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/918716458 (var1723) String)
(declare-fun cast-from-var2143-to-var1723 (var2143) var1723)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/-1009729250 (var2143) String)
(declare-fun identifier/-1009729250 (var2143) var1342)
(declare-fun var115_infoString/1203698788 (String var1342) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2143 var2143)
(declare-const var3244 var2143) ; Statement: r1 := @this: org.hibernate.UnresolvableObjectException 
(assert (not (= var3244 null-var2143)))
(define-const var1158 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1158)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1158!1 String)
(assert (= var1158!1 ""))
(assert true)
(define-const var2790 String (getMessage/918716458 (cast-from-var2143-to-var1723 var3244))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>() 
(assert true)
(define-const var283 String (append/672562846 var1158!1 var2790)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1158!2 String)
(assert (= var1158!2 (str.++ var1158!1 var2790)))
(assert true)
(define-const var629 String (append/672562846 var283 ": ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var283!1 String)
(assert (= var283!1 (str.++ var283 ": ")))
(define-const var3937 String (entityName/-1009729250 var3244)) ; Statement: $r5 = r1.<org.hibernate.UnresolvableObjectException: java.lang.String entityName> 
(define-const var3649 var1342 (identifier/-1009729250 var3244)) ; Statement: $r4 = r1.<org.hibernate.UnresolvableObjectException: java.io.Serializable identifier> 
(define-const var2370 String (var115_infoString/1203698788 var3937 var3649)) ; Statement: $r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r5, $r4) 
(assert true)
(define-const var94 String (append/672562846 var629 var2370)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var629!1 String)
(assert (= var629!1 (str.++ var629 var2370)))
(assert true)
(define-const var2686 String (toString/-2075883882 var94)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/918716458=([javax.persistence.PersistenceException], java.lang.String), cast-from-var2143-to-var1723=([org.hibernate.UnresolvableObjectException], javax.persistence.PersistenceException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/-1009729250=([org.hibernate.UnresolvableObjectException], java.lang.String), identifier/-1009729250=([org.hibernate.UnresolvableObjectException], java.io.Serializable), var115_infoString/1203698788=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2143=org.hibernate.UnresolvableObjectException, var3244=r1, var1158=$r0, var1723=javax.persistence.PersistenceException, var2790=$r2, var283=$r3, var629=$r7, var3937=$r5, var1342=java.io.Serializable, var3649=$r4, var115=org.hibernate.pretty.MessageHelper, var2370=$r6, var94=$r8, var2686=$r9}
; {org.hibernate.UnresolvableObjectException=var2143, r1=var3244, $r0=var1158, javax.persistence.PersistenceException=var1723, $r2=var2790, $r3=var283, $r7=var629, $r5=var3937, java.io.Serializable=var1342, $r4=var3649, org.hibernate.pretty.MessageHelper=var115, $r6=var2370, $r8=var94, $r9=var2686}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.UnresolvableObjectException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.HibernateException: java.lang.String getMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r5 = r1.<org.hibernate.UnresolvableObjectException: java.lang.String entityName>;	$r4 = r1.<org.hibernate.UnresolvableObjectException: java.io.Serializable identifier>;	$r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.io.Serializable)>($r5, $r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1