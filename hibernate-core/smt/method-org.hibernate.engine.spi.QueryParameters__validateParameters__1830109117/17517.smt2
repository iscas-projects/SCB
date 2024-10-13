(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var200 0)
(declare-sort var144 0)
(declare-sort var2706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positionalParameterTypes/977861290 (var200) (Array Int var144))
(declare-fun positionalParameterValues/977861290 (var200) (Array Int var2706))
(declare-const null-var200 var200)
(declare-const null-__Array__Int__var144__ (Array Int var144))
(declare-const null-__Array__Int__var2706__ (Array Int var2706))
(declare-const var983 var200) ; Statement: r0 := @this: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var983 null-var200)))
(define-const var2163 (Array Int var144) (positionalParameterTypes/977861290 var983)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes> 
(assert (not (not (= var2163 null-__Array__Int__var144__)))) ; Negate: Cond: $r1 != null  
(define-const var2638 Int 0) ; Statement: $i1 = 0 
 ; Statement: goto [?= i0 = $i1] 
(assert true) ; Non Conditional
(define-const var3199 Int var2638) ; Statement: i0 = $i1 
(define-const var1031 (Array Int var2706) (positionalParameterValues/977861290 var983)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues> 
(assert (not (not (= var1031 null-__Array__Int__var2706__)))) ; Negate: Cond: $r3 != null  
(define-const var1261 Int 0) ; Statement: $i2 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 == $i2 goto return 
(assert (= var3199 var1261)) ; Cond: i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positionalParameterTypes/977861290=([org.hibernate.engine.spi.QueryParameters], org.hibernate.type.Type[]), positionalParameterValues/977861290=([org.hibernate.engine.spi.QueryParameters], java.lang.Object[])}
; {var200=org.hibernate.engine.spi.QueryParameters, var983=r0, var144=org.hibernate.type.Type, var2163=$r1, var2638=$i1, var3199=i0, var2706=java.lang.Object, var1031=$r3, var1261=$i2}
; {org.hibernate.engine.spi.QueryParameters=var200, r0=var983, org.hibernate.type.Type=var144, $r1=var2163, $i1=var2638, i0=var3199, java.lang.Object=var2706, $r3=var1031, $i2=var1261}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.spi.QueryParameters;	$r1 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.spi.QueryParameters: org.hibernate.type.Type[] positionalParameterTypes>;	$i1 = 0;	goto [?= i0 = $i1];	i0 = $i1;	$r3 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	if $r3 != null goto $r4 = r0.<org.hibernate.engine.spi.QueryParameters: java.lang.Object[] positionalParameterValues>;	$i2 = 0;	goto [?= (branch)];	if i0 == $i2 goto return;	return
;block_num 6