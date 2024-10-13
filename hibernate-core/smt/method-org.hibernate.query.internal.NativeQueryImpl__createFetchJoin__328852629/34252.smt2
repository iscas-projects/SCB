(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var2341 0)
(declare-sort var3330 0)
(declare-sort var2166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var3330-init () var3330)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3330 String) void)
(declare-fun cast-from-var3330-to-var2166 (var3330) var2166)
(declare-const null-var742 var742)
(declare-const null-String String)
(declare-const var2373 var742) ; Statement: r3 := @this: org.hibernate.query.internal.NativeQueryImpl 
(assert (not (= var2373 null-var742)))
(declare-const var2849 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2849 null-String)))
(declare-const var2510 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2510 null-String)))
(assert true)
(define-const var111 Int (indexOf/-1037706067 var2510 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var111 0))) ; Negate: Cond: i0 >= 0  
(define-const var1054 var3330 var3330-init) ; Statement: $r12 = new org.hibernate.QueryException 
(define-const var1256 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1256)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1256!1 String)
(assert (= var1256!1 ""))
(assert true)
(define-const var1906 String (append/672562846 var1256!1 "not a property path: ")) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not a property path: ") 
(declare-const var1256!2 String)
(assert (= var1256!2 (str.++ var1256!1 "not a property path: ")))
(assert true)
(define-const var1071 String (append/672562846 var1906 var2510)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1906!1 String)
(assert (= var1906!1 (str.++ var1906 var2510)))
(assert true)
(define-const var1521 String (toString/-2075883882 var1071)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var1054 var1521)) ; Statement: specialinvoke $r12.<org.hibernate.QueryException: void <init>(java.lang.String)>($r10) 

(declare-const var1054!1 var3330)
(declare-const var1521!1 String)
(define-const var1354 var2166 (cast-from-var3330-to-var2166 var1054!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), var3330-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3330-to-var2166=([org.hibernate.QueryException], java.lang.Throwable)}
; {var742=org.hibernate.query.internal.NativeQueryImpl, var2373=r3, var2849=r4, var2341=null_type, var2510=r0, var111=i0, var3330=org.hibernate.QueryException, var1054=$r12, var1256=$r11, var1906=$r8, var1071=$r9, var1521=$r10, var2166=java.lang.Throwable, var1354=$r13}
; {org.hibernate.query.internal.NativeQueryImpl=var742, r3=var2373, r4=var2849, null_type=var2341, r0=var2510, i0=var111, org.hibernate.QueryException=var3330, $r12=var1054, $r11=var1256, $r8=var1906, $r9=var1071, $r10=var1521, java.lang.Throwable=var2166, $r13=var1354}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.query.internal.NativeQueryImpl;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 >= 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r12 = new org.hibernate.QueryException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not a property path: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.QueryException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2