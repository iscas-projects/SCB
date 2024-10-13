(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var899 0)
(declare-sort var2234 0)
(declare-sort var3412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var899) (Array Int var2234))
(declare-fun getLength-Arr-var2234-1 ((Array Int var2234)) Int)
(declare-fun positionalParameterValues/977861290 (var899) (Array Int var3412))
(declare-const null-var899 var899)
(declare-const null-__Array__Int__var2234__ (Array Int var2234))
(declare-const null-__Array__Int__var3412__ (Array Int var3412))
(declare-const var3668 var899) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var3668 null-var899)))
(define-const var764 (Array Int var2234) (positionalParameterTypes/977861290 var3668)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (= var764 null-__Array__Int__var2234__))) ; Cond: $r1 != null 
(define-const var3584 (Array Int var2234) (positionalParameterTypes/977861290 var3668)) ; Statement: $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(define-const var2449 Int (getLength-Arr-var2234-1 var3584)) ; Statement: $i1 = lengthof $r2 
(assert true) ; Non Conditional
(define-const var3009 Int var2449) ; Statement: i0 = $i1 
(define-const var1267 (Array Int var3412) (positionalParameterValues/977861290 var3668)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (not (= var1267 null-__Array__Int__var3412__)))) ; Negate: Cond: $r3 != null  
(define-const var1890 Int 0) ; Statement: $i2 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (= var3009 var1890)) ; Cond: i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), getLength-Arr-var2234-1=([org.hibernate.type.Type[]], int), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[])}
; {var899=org.hibernate.engine.spi.QueryParameters, var3668=r0, var2234=org.hibernate.type.Type, var764=$r1, var3584=$r2, var2449=$i1, var3009=i0, var3412=java.lang.Object, var1267=$r3, var1890=$i2}
; {org.hibernate.engine.spi.QueryParameters=var899, r0=var3668, org.hibernate.type.Type=var2234, $r1=var764, $r2=var3584, $i1=var2449, i0=var3009, java.lang.Object=var3412, $r3=var1267, $i2=var1890}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = lengthof $r2;	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = 0;	goto [?= (branch)];	if i0 == $i2 goto return;	return
;block_num 6