(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1415 0)
(declare-sort var1690 0)
(declare-sort var3782 0)
(declare-sort var3444 0)
(declare-sort var1695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var1415) (Array Int var1690))
(declare-fun getLength-Arr-var1690-1 ((Array Int var1690)) Int)
(declare-fun positionalParameterValues/977861290 (var1415) (Array Int var3782))
(declare-fun var3444-init () var3444)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3444 String) void)
(declare-fun cast-from-var3444-to-var1695 (var3444) var1695)
(declare-const null-var1415 var1415)
(declare-const null-__Array__Int__var1690__ (Array Int var1690))
(declare-const null-__Array__Int__var3782__ (Array Int var3782))
(declare-const var2947 var1415) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var2947 null-var1415)))
(define-const var2106 (Array Int var1690) (positionalParameterTypes/977861290 var2947)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (= var2106 null-__Array__Int__var1690__))) ; Cond: $r1 != null 
(define-const var2039 (Array Int var1690) (positionalParameterTypes/977861290 var2947)) ; Statement: $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(define-const var3367 Int (getLength-Arr-var1690-1 var2039)) ; Statement: $i1 = lengthof $r2 
(assert true) ; Non Conditional
(define-const var1427 Int var3367) ; Statement: i0 = $i1 
(define-const var2900 (Array Int var3782) (positionalParameterValues/977861290 var2947)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (not (= var2900 null-__Array__Int__var3782__)))) ; Negate: Cond: $r3 != null  
(define-const var987 Int 0) ; Statement: $i2 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (not (= var1427 var987))) ; Negate: Cond: i0 == $i2  
(define-const var2091 var3444 var3444-init) ; Statement: $r13 = new org.hibernate.QueryException 
(define-const var834 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var834)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var834!1 String)
(assert (= var834!1 ""))
(assert true)
(define-const var3803 String (append/672562846 var834!1 "Number of positional parameter types:")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:") 
(declare-const var834!2 String)
(assert (= var834!2 (str.++ var834!1 "Number of positional parameter types:")))
(assert true)
(define-const var3073 String (append/-1001720160 var3803 var1427)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3803!1 String)
(assert (str.prefixof var3803 var3803!1))
(assert true)
(define-const var1962 String (append/672562846 var3073 " does not match number of positional parameters: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ") 
(declare-const var3073!1 String)
(assert (= var3073!1 (str.++ var3073 " does not match number of positional parameters: ")))
(assert true)
(define-const var1178 String (append/-1001720160 var1962 var987)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1962!1 String)
(assert (str.prefixof var1962 var1962!1))
(assert true)
(define-const var3063 String (toString/-2075883882 var1178)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2091 var3063)) ; Statement: specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var2091!1 var3444)
(declare-const var3063!1 String)
(define-const var430 var1695 (cast-from-var3444-to-var1695 var2091!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), getLength-Arr-var1690-1=([org.hibernate.type.Type[]], int), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[]), var3444-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3444-to-var1695=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1415=org.hibernate.engine.spi.QueryParameters, var2947=r0, var1690=org.hibernate.type.Type, var2106=$r1, var2039=$r2, var3367=$i1, var1427=i0, var3782=java.lang.Object, var2900=$r3, var987=$i2, var3444=org.hibernate.QueryException, var2091=$r13, var834=$r12, var3803=$r7, var3073=$r8, var1962=$r9, var1178=$r10, var3063=$r11, var1695=java.lang.Throwable, var430=$r14}
; {org.hibernate.engine.spi.QueryParameters=var1415, r0=var2947, org.hibernate.type.Type=var1690, $r1=var2106, $r2=var2039, $i1=var3367, i0=var1427, java.lang.Object=var3782, $r3=var2900, $i2=var987, org.hibernate.QueryException=var3444, $r13=var2091, $r12=var834, $r7=var3803, $r8=var3073, $r9=var1962, $r10=var1178, $r11=var3063, java.lang.Throwable=var1695, $r14=var430}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = lengthof $r2;	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = 0;	goto [?= (branch)];	if i0 == $i2 goto return;	$r13 = new org.hibernate.QueryException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 6