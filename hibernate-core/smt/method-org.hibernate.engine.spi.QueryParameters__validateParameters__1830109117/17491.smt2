(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var492 0)
(declare-sort var3393 0)
(declare-sort var1095 0)
(declare-sort var1764 0)
(declare-sort var2951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var492) (Array Int var3393))
(declare-fun positionalParameterValues/977861290 (var492) (Array Int var1095))
(declare-fun var1764-init () var1764)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1764 String) void)
(declare-fun cast-from-var1764-to-var2951 (var1764) var2951)
(declare-const null-var492 var492)
(declare-const null-__Array__Int__var3393__ (Array Int var3393))
(declare-const null-__Array__Int__var1095__ (Array Int var1095))
(declare-const var121 var492) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var121 null-var492)))
(define-const var3581 (Array Int var3393) (positionalParameterTypes/977861290 var121)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (not (= var3581 null-__Array__Int__var3393__)))) ; Negate: Cond: $r1 != null  
(define-const var520 Int 0) ; Statement: $i1 = 0 
 ; Statement: goto [?= i0 = $i1] 
(assert true) ; Non Conditional
(define-const var2213 Int var520) ; Statement: i0 = $i1 
(define-const var669 (Array Int var1095) (positionalParameterValues/977861290 var121)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (not (= var669 null-__Array__Int__var1095__)))) ; Negate: Cond: $r3 != null  
(define-const var119 Int 0) ; Statement: $i2 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (not (= var2213 var119))) ; Negate: Cond: i0 == $i2  
(define-const var1756 var1764 var1764-init) ; Statement: $r13 = new org.hibernate.QueryException 
(define-const var1265 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1265)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1265!1 String)
(assert (= var1265!1 ""))
(assert true)
(define-const var1784 String (append/672562846 var1265!1 "Number of positional parameter types:")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:") 
(declare-const var1265!2 String)
(assert (= var1265!2 (str.++ var1265!1 "Number of positional parameter types:")))
(assert true)
(define-const var185 String (append/-1001720160 var1784 var2213)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1784!1 String)
(assert (str.prefixof var1784 var1784!1))
(assert true)
(define-const var3545 String (append/672562846 var185 " does not match number of positional parameters: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ") 
(declare-const var185!1 String)
(assert (= var185!1 (str.++ var185 " does not match number of positional parameters: ")))
(assert true)
(define-const var995 String (append/-1001720160 var3545 var119)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3545!1 String)
(assert (str.prefixof var3545 var3545!1))
(assert true)
(define-const var1616 String (toString/-2075883882 var995)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var1756 var1616)) ; Statement: specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var1756!1 var1764)
(declare-const var1616!1 String)
(define-const var443 var2951 (cast-from-var1764-to-var2951 var1756!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[]), var1764-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1764-to-var2951=([org.hibernate.QueryException], java.lang.Throwable)}
; {var492=org.hibernate.engine.spi.QueryParameters, var121=r0, var3393=org.hibernate.type.Type, var3581=$r1, var520=$i1, var2213=i0, var1095=java.lang.Object, var669=$r3, var119=$i2, var1764=org.hibernate.QueryException, var1756=$r13, var1265=$r12, var1784=$r7, var185=$r8, var3545=$r9, var995=$r10, var1616=$r11, var2951=java.lang.Throwable, var443=$r14}
; {org.hibernate.engine.spi.QueryParameters=var492, r0=var121, org.hibernate.type.Type=var3393, $r1=var3581, $i1=var520, i0=var2213, java.lang.Object=var1095, $r3=var669, $i2=var119, org.hibernate.QueryException=var1764, $r13=var1756, $r12=var1265, $r7=var1784, $r8=var185, $r9=var3545, $r10=var995, $r11=var1616, java.lang.Throwable=var2951, $r14=var443}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = 0;	goto [?= i0 = $i1];	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = 0;	goto [?= (branch)];	if i0 == $i2 goto return;	$r13 = new org.hibernate.QueryException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 6