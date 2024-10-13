(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3228 0)
(declare-sort var1085 0)
(declare-sort var844 0)
(declare-sort var727 0)
(declare-sort var2807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var3228) (Array Int var1085))
(declare-fun getLength-Arr-var1085-1 ((Array Int var1085)) Int)
(declare-fun positionalParameterValues/977861290 (var3228) (Array Int var844))
(declare-fun getLength-Arr-var844-1 ((Array Int var844)) Int)
(declare-fun var727-init () var727)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var727 String) void)
(declare-fun cast-from-var727-to-var2807 (var727) var2807)
(declare-const null-var3228 var3228)
(declare-const null-__Array__Int__var1085__ (Array Int var1085))
(declare-const null-__Array__Int__var844__ (Array Int var844))
(declare-const var1113 var3228) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var1113 null-var3228)))
(define-const var133 (Array Int var1085) (positionalParameterTypes/977861290 var1113)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (= var133 null-__Array__Int__var1085__))) ; Cond: $r1 != null 
(define-const var2105 (Array Int var1085) (positionalParameterTypes/977861290 var1113)) ; Statement: $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(define-const var636 Int (getLength-Arr-var1085-1 var2105)) ; Statement: $i1 = lengthof $r2 
(assert true) ; Non Conditional
(define-const var1968 Int var636) ; Statement: i0 = $i1 
(define-const var1614 (Array Int var844) (positionalParameterValues/977861290 var1113)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (= var1614 null-__Array__Int__var844__))) ; Cond: $r3 != null 
(define-const var2048 (Array Int var844) (positionalParameterValues/977861290 var1113)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(define-const var3281 Int (getLength-Arr-var844-1 var2048)) ; Statement: $i2 = lengthof $r4 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (not (= var1968 var3281))) ; Negate: Cond: i0 == $i2  
(define-const var51 var727 var727-init) ; Statement: $r13 = new org.hibernate.QueryException 
(define-const var2830 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2830)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2830!1 String)
(assert (= var2830!1 ""))
(assert true)
(define-const var3286 String (append/672562846 var2830!1 "Number of positional parameter types:")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:") 
(declare-const var2830!2 String)
(assert (= var2830!2 (str.++ var2830!1 "Number of positional parameter types:")))
(assert true)
(define-const var677 String (append/-1001720160 var3286 var1968)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3286!1 String)
(assert (str.prefixof var3286 var3286!1))
(assert true)
(define-const var3894 String (append/672562846 var677 " does not match number of positional parameters: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ") 
(declare-const var677!1 String)
(assert (= var677!1 (str.++ var677 " does not match number of positional parameters: ")))
(assert true)
(define-const var3475 String (append/-1001720160 var3894 var3281)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3894!1 String)
(assert (str.prefixof var3894 var3894!1))
(assert true)
(define-const var3126 String (toString/-2075883882 var3475)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var51 var3126)) ; Statement: specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11) 

(declare-const var51!1 var727)
(declare-const var3126!1 String)
(define-const var750 var2807 (cast-from-var727-to-var2807 var51!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), getLength-Arr-var1085-1=([org.hibernate.type.Type[]], int), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[]), getLength-Arr-var844-1=([java.lang.Object[]], int), var727-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var727-to-var2807=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3228=org.hibernate.engine.spi.QueryParameters, var1113=r0, var1085=org.hibernate.type.Type, var133=$r1, var2105=$r2, var636=$i1, var1968=i0, var844=java.lang.Object, var1614=$r3, var2048=$r4, var3281=$i2, var727=org.hibernate.QueryException, var51=$r13, var2830=$r12, var3286=$r7, var677=$r8, var3894=$r9, var3475=$r10, var3126=$r11, var2807=java.lang.Throwable, var750=$r14}
; {org.hibernate.engine.spi.QueryParameters=var3228, r0=var1113, org.hibernate.type.Type=var1085, $r1=var133, $r2=var2105, $i1=var636, i0=var1968, java.lang.Object=var844, $r3=var1614, $r4=var2048, $i2=var3281, org.hibernate.QueryException=var727, $r13=var51, $r12=var2830, $r7=var3286, $r8=var677, $r9=var3894, $r10=var3475, $r11=var3126, java.lang.Throwable=var2807, $r14=var750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = lengthof $r2;	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = lengthof $r4;	if i0 == $i2 goto return;	$r13 = new org.hibernate.QueryException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number of positional parameter types:");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not match number of positional parameters: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.QueryException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 6