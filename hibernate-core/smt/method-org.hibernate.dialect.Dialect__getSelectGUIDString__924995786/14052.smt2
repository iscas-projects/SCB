(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2118 0)
(declare-sort var2149 0)
(declare-sort var35 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2149-init () var2149)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var35) ClassObject)
(declare-fun cast-from-var2118-to-var35 (var2118) var35)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2149 String) void)
(declare-const null-var2118 var2118)
(declare-const var728 var2118) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var728 null-var2118)))
(define-const var1713 var2149 var2149-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1376 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1376)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1376!1 String)
(assert (= var1376!1 ""))
(assert true)
(define-const var2790 ClassObject (getClass/1258963082 (cast-from-var2118-to-var35 var728))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var639 String (getName/-1958580599 var2790)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1063 String (append/672562846 var1376!1 var639)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1376!2 String)
(assert (= var1376!2 (str.++ var1376!1 var639)))
(assert true)
(define-const var91 String (append/672562846 var1063 " does not support GUIDs")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support GUIDs") 
(declare-const var1063!1 String)
(assert (= var1063!1 (str.++ var1063 " does not support GUIDs")))
(assert true)
(define-const var1387 String (toString/-2075883882 var91)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1713 var1387)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var1713!1 var2149)
(declare-const var1387!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2149-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2118-to-var35=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2118=org.hibernate.dialect.Dialect, var728=r2, var2149=java.lang.UnsupportedOperationException, var1713=$r0, var1376=$r1, var35=java.lang.Object, var2790=$r3, var639=$r4, var1063=$r5, var91=$r6, var1387=$r7}
; {org.hibernate.dialect.Dialect=var2118, r2=var728, java.lang.UnsupportedOperationException=var2149, $r0=var1713, $r1=var1376, java.lang.Object=var35, $r3=var2790, $r4=var639, $r5=var1063, $r6=var91, $r7=var1387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support GUIDs");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1