(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2176 0)
(declare-sort var3071 0)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var2176) (Array Int var3071))
(declare-fun getLength-Arr-var3071-1 ((Array Int var3071)) Int)
(declare-fun positionalParameterValues/977861290 (var2176) (Array Int var1545))
(declare-fun getLength-Arr-var1545-1 ((Array Int var1545)) Int)
(declare-const null-var2176 var2176)
(declare-const null-__Array__Int__var3071__ (Array Int var3071))
(declare-const null-__Array__Int__var1545__ (Array Int var1545))
(declare-const var3745 var2176) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var3745 null-var2176)))
(define-const var3545 (Array Int var3071) (positionalParameterTypes/977861290 var3745)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (= var3545 null-__Array__Int__var3071__))) ; Cond: $r1 != null 
(define-const var3674 (Array Int var3071) (positionalParameterTypes/977861290 var3745)) ; Statement: $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(define-const var3139 Int (getLength-Arr-var3071-1 var3674)) ; Statement: $i1 = lengthof $r2 
(assert true) ; Non Conditional
(define-const var1732 Int var3139) ; Statement: i0 = $i1 
(define-const var7 (Array Int var1545) (positionalParameterValues/977861290 var3745)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (= var7 null-__Array__Int__var1545__))) ; Cond: $r3 != null 
(define-const var1313 (Array Int var1545) (positionalParameterValues/977861290 var3745)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(define-const var3636 Int (getLength-Arr-var1545-1 var1313)) ; Statement: $i2 = lengthof $r4 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (= var1732 var3636)) ; Cond: i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), getLength-Arr-var3071-1=([org.hibernate.type.Type[]], int), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[]), getLength-Arr-var1545-1=([java.lang.Object[]], int)}
; {var2176=org.hibernate.engine.spi.QueryParameters, var3745=r0, var3071=org.hibernate.type.Type, var3545=$r1, var3674=$r2, var3139=$i1, var1732=i0, var1545=java.lang.Object, var7=$r3, var1313=$r4, var3636=$i2}
; {org.hibernate.engine.spi.QueryParameters=var2176, r0=var3745, org.hibernate.type.Type=var3071, $r1=var3545, $r2=var3674, $i1=var3139, i0=var1732, java.lang.Object=var1545, $r3=var7, $r4=var1313, $i2=var3636}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = lengthof $r2;	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = lengthof $r4;	if i0 == $i2 goto return;	return
;block_num 6