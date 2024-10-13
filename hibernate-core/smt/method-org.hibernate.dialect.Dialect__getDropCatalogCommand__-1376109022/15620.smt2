(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort var965 0)
(declare-sort var2852 0)
(declare-sort var1607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2852-init () var2852)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1607) ClassObject)
(declare-fun cast-from-var3558-to-var1607 (var3558) var1607)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2852 String) void)
(declare-const null-var3558 var3558)
(declare-const null-String String)
(declare-const var1655 var3558) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1655 null-var3558)))
(declare-const var2228 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2228 null-String)))
(define-const var2033 var2852 var2852-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var3044 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3044)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3044!1 String)
(assert (= var3044!1 ""))
(assert true)
(define-const var1770 String (append/672562846 var3044!1 "No drop catalog syntax supported by ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No drop catalog syntax supported by ") 
(declare-const var3044!2 String)
(assert (= var3044!2 (str.++ var3044!1 "No drop catalog syntax supported by ")))
(assert true)
(define-const var1165 ClassObject (getClass/1258963082 (cast-from-var3558-to-var1607 var1655))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3313 String (getName/-1958580599 var1165)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var254 String (append/672562846 var1770 var3313)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1770!1 String)
(assert (= var1770!1 (str.++ var1770 var3313)))
(assert true)
(define-const var3053 String (toString/-2075883882 var254)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2033 var3053)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var2033!1 var2852)
(declare-const var3053!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2852-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3558-to-var1607=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3558=org.hibernate.dialect.Dialect, var1655=r2, var2228=r8, var965=null_type, var2852=java.lang.UnsupportedOperationException, var2033=$r0, var3044=$r1, var1770=$r5, var1607=java.lang.Object, var1165=$r3, var3313=$r4, var254=$r6, var3053=$r7}
; {org.hibernate.dialect.Dialect=var3558, r2=var1655, r8=var2228, null_type=var965, java.lang.UnsupportedOperationException=var2852, $r0=var2033, $r1=var3044, $r5=var1770, java.lang.Object=var1607, $r3=var1165, $r4=var3313, $r6=var254, $r7=var3053}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.lang.String;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No drop catalog syntax supported by ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1