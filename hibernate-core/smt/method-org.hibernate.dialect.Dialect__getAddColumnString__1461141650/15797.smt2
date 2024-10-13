(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3597 0)
(declare-sort var96 0)
(declare-sort var2207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var96-init () var96)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2207) ClassObject)
(declare-fun cast-from-var3597-to-var2207 (var3597) var2207)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var96 String) void)
(declare-const null-var3597 var3597)
(declare-const var1233 var3597) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1233 null-var3597)))
(define-const var3706 var96 var96-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var247 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var247)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var247!1 String)
(assert (= var247!1 ""))
(assert true)
(define-const var1839 String (append/672562846 var247!1 "No add column syntax supported by ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No add column syntax supported by ") 
(declare-const var247!2 String)
(assert (= var247!2 (str.++ var247!1 "No add column syntax supported by ")))
(assert true)
(define-const var715 ClassObject (getClass/1258963082 (cast-from-var3597-to-var2207 var1233))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3592 String (getName/-1958580599 var715)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2057 String (append/672562846 var1839 var3592)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1839!1 String)
(assert (= var1839!1 (str.++ var1839 var3592)))
(assert true)
(define-const var1406 String (toString/-2075883882 var2057)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var3706 var1406)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var3706!1 var96)
(declare-const var1406!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var96-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3597-to-var2207=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3597=org.hibernate.dialect.Dialect, var1233=r2, var96=java.lang.UnsupportedOperationException, var3706=$r0, var247=$r1, var1839=$r5, var2207=java.lang.Object, var715=$r3, var3592=$r4, var2057=$r6, var1406=$r7}
; {org.hibernate.dialect.Dialect=var3597, r2=var1233, java.lang.UnsupportedOperationException=var96, $r0=var3706, $r1=var247, $r5=var1839, java.lang.Object=var2207, $r3=var715, $r4=var3592, $r6=var2057, $r7=var1406}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No add column syntax supported by ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1