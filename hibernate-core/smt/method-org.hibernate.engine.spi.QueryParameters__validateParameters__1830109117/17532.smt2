(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3750 0)
(declare-sort var2383 0)
(declare-sort var31 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var3750) (Array Int var2383))
(declare-fun positionalParameterValues/977861290 (var3750) (Array Int var31))
(declare-fun getLength-Arr-var31-1 ((Array Int var31)) Int)
(declare-const null-var3750 var3750)
(declare-const null-__Array__Int__var2383__ (Array Int var2383))
(declare-const null-__Array__Int__var31__ (Array Int var31))
(declare-const var2961 var3750) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var2961 null-var3750)))
(define-const var1799 (Array Int var2383) (positionalParameterTypes/977861290 var2961)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (not (= var1799 null-__Array__Int__var2383__)))) ; Negate: Cond: $r1 != null  
(define-const var2862 Int 0) ; Statement: $i1 = 0 
 ; Statement: goto [?= i0 = $i1] 
(assert true) ; Non Conditional
(define-const var3540 Int var2862) ; Statement: i0 = $i1 
(define-const var2592 (Array Int var31) (positionalParameterValues/977861290 var2961)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (= var2592 null-__Array__Int__var31__))) ; Cond: $r3 != null 
(define-const var956 (Array Int var31) (positionalParameterValues/977861290 var2961)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(define-const var2249 Int (getLength-Arr-var31-1 var956)) ; Statement: $i2 = lengthof $r4 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (= var3540 var2249)) ; Cond: i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[]), getLength-Arr-var31-1=([java.lang.Object[]], int)}
; {var3750=org.hibernate.engine.spi.QueryParameters, var2961=r0, var2383=org.hibernate.type.Type, var1799=$r1, var2862=$i1, var3540=i0, var31=java.lang.Object, var2592=$r3, var956=$r4, var2249=$i2}
; {org.hibernate.engine.spi.QueryParameters=var3750, r0=var2961, org.hibernate.type.Type=var2383, $r1=var1799, $i1=var2862, i0=var3540, java.lang.Object=var31, $r3=var2592, $r4=var956, $i2=var2249}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = 0;	goto [?= i0 = $i1];	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = lengthof $r4;	if i0 == $i2 goto return;	return
;block_num 6