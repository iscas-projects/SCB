(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3707 0)
(declare-sort var635 0)
(declare-sort var2280 0)
(declare-sort var123 0)
(declare-sort var901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var3707) (Array Int var635))
(declare-fun positionalParameterValues/977861290 (var3707) (Array Int var2280))
(declare-fun getLength-Arr-var2280-1 ((Array Int var2280)) Int)
(declare-fun var123-init () var123)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var123 String) void)
(declare-fun cast-from-var123-to-var901 (var123) var901)
(declare-const null-var3707 var3707)
(declare-const null-__Array__Int__var635__ (Array Int var635))
(declare-const null-__Array__Int__var2280__ (Array Int var2280))
(declare-const var1469 var3707) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var1469 null-var3707)))
(define-const var2429 (Array Int var635) (positionalParameterTypes/977861290 var1469)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (not (= var2429 null-__Array__Int__var635__)))) ; Negate: Cond: $r1 != null  
(define-const var501 Int 0) ; Statement: $i1 = 0 
 ; Statement: goto [?= i0 = $i1] 
(assert true) ; Non Conditional
(define-const var3965 Int var501) ; Statement: i0 = $i1 
(define-const var455 (Array Int var2280) (positionalParameterValues/977861290 var1469)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (= var455 null-__Array__Int__var2280__))) ; Cond: $r3 != null 
(define-const var2323 (Array Int var2280) (positionalParameterValues/977861290 var1469)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(define-const var495 Int (getLength-Arr-var2280-1 var2323)) ; Statement: $i2 = lengthof $r4 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (not (= var3965 var495))) ; Negate: Cond: i0 == $i2  
(define-const var3572 var123 var123-init) ; Statement: $r13 = new org.hibernate.QueryException 
(define-const var428 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var428)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var428!1 String)
(assert (= var428!1 ""))
(assert true)
(define-const var2609 String (append/672562846 var428!1 "Number of positional parameter types:")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:") 
(declare-const var428!2 String)
(assert (= var428!2 (str.++ var428!1 "Number of positional parameter types:")))
(assert true)
(define-const var2370 String (append/-1001720160 var2609 var3965)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2609!1 String)
(assert (str.prefixof var2609 var2609!1))
(assert true)
(define-const var2093 String (append/672562846 var2370 " does not match number of positional parameters: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ") 
(declare-const var2370!1 String)
(assert (= var2370!1 (str.++ var2370 " does not match number of positional parameters: ")))
(assert true)
(define-const var2712 String (append/-1001720160 var2093 var495)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2093!1 String)
(assert (str.prefixof var2093 var2093!1))
(assert true)
(define-const var2508 String (toString/-2075883882 var2712)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3572 var2508)) ; Statement: specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var3572!1 var123)
(declare-const var2508!1 String)
(define-const var1933 var901 (cast-from-var123-to-var901 var3572!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[]), getLength-Arr-var2280-1=([java.lang.Object[]], int), var123-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var123-to-var901=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3707=org.hibernate.engine.spi.QueryParameters, var1469=r0, var635=org.hibernate.type.Type, var2429=$r1, var501=$i1, var3965=i0, var2280=java.lang.Object, var455=$r3, var2323=$r4, var495=$i2, var123=org.hibernate.QueryException, var3572=$r13, var428=$r12, var2609=$r7, var2370=$r8, var2093=$r9, var2712=$r10, var2508=$r11, var901=java.lang.Throwable, var1933=$r14}
; {org.hibernate.engine.spi.QueryParameters=var3707, r0=var1469, org.hibernate.type.Type=var635, $r1=var2429, $i1=var501, i0=var3965, java.lang.Object=var2280, $r3=var455, $r4=var2323, $i2=var495, org.hibernate.QueryException=var123, $r13=var3572, $r12=var428, $r7=var2609, $r8=var2370, $r9=var2093, $r10=var2712, $r11=var2508, java.lang.Throwable=var901, $r14=var1933}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = 0;	goto [?= i0 = $i1];	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = lengthof $r4;	if i0 == $i2 goto return;	$r13 = new org.hibernate.QueryException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 6