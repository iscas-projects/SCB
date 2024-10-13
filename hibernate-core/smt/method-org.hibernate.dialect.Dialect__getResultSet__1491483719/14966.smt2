(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1877 0)
(declare-sort var3402 0)
(declare-sort var369 0)
(declare-sort var2439 0)
(declare-sort var2815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2439-init () var2439)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2815) ClassObject)
(declare-fun cast-from-var1877-to-var2815 (var1877) var2815)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2439 String) void)
(declare-const null-var1877 var1877)
(declare-const null-var3402 var3402)
(declare-const null-String String)
(declare-const var911 var1877) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var911 null-var1877)))
(declare-const var3520 var3402) ; Statement: r8 := @parameter0: java.sql.CallableStatement 
(assert (not (= var3520 null-var3402)))
(declare-const var3467 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3467 null-String)))
(define-const var1186 var2439 var2439-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1869 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1869)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1869!1 String)
(assert (= var1869!1 ""))
(assert true)
(define-const var40 ClassObject (getClass/1258963082 (cast-from-var1877-to-var2815 var911))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3355 String (getName/-1958580599 var40)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var306 String (append/672562846 var1869!1 var3355)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1869!2 String)
(assert (= var1869!2 (str.++ var1869!1 var3355)))
(assert true)
(define-const var1988 String (append/672562846 var306 " does not support resultsets via stored procedures")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures") 
(declare-const var306!1 String)
(assert (= var306!1 (str.++ var306 " does not support resultsets via stored procedures")))
(assert true)
(define-const var2476 String (toString/-2075883882 var1988)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1186 var2476)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var1186!1 var2439)
(declare-const var2476!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2439-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1877-to-var2815=([org.hibernate.dialect.Dialect], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1877=org.hibernate.dialect.Dialect, var911=r2, var3402=java.sql.CallableStatement, var3520=r8, var3467=r9, var369=null_type, var2439=java.lang.UnsupportedOperationException, var1186=$r0, var1869=$r1, var2815=java.lang.Object, var40=$r3, var3355=$r4, var306=$r5, var1988=$r6, var2476=$r7}
; {org.hibernate.dialect.Dialect=var1877, r2=var911, java.sql.CallableStatement=var3402, r8=var3520, r9=var3467, null_type=var369, java.lang.UnsupportedOperationException=var2439, $r0=var1186, $r1=var1869, java.lang.Object=var2815, $r3=var40, $r4=var3355, $r5=var306, $r6=var1988, $r7=var2476}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r8 := @parameter0: java.sql.CallableStatement;	r9 := @parameter1: java.lang.String;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support resultsets via stored procedures");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1