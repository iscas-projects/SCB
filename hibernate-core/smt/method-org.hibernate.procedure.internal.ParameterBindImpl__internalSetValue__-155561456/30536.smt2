(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var728 0)
(declare-sort var3448 0)
(declare-sort var1704 0)
(declare-sort var3983 0)
(declare-sort var3005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun procedureParameter/1747700246 (var728) var1704)
(declare-fun var3005_getMode/726865546 (var3005) var3983)
(declare-fun cast-from-var1704-to-var3005 (var1704) var3005)
(declare-fun var3005_getParameterType/-1649566967 (var3005) ClassObject)
(declare-fun value/1747700246 (var728) var3448)
(declare-fun isBound/1747700246 (var728) Bool)
(declare-const null-var728 var728)
(declare-const null-var3448 var3448)
(declare-const var3983-IN var3983)
(declare-const null-ClassObject ClassObject)
(declare-const var3892 var728) ; Statement: r0 := @this: org.hibernate.procedure.internal.ParameterBindImpl 
(assert (not (= var3892 null-var728)))
(declare-const var706 var3448) ; Statement: r6 := @parameter0: java.lang.Object 
(assert (not (= var706 null-var3448)))
(define-const var385 var1704 (procedureParameter/1747700246 var3892)) ; Statement: $r1 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(define-const var268 var3983 (var3005_getMode/726865546 (cast-from-var1704-to-var3005 var385))) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: javax.persistence.ParameterMode getMode()>() 
(define-const var2184 var3983 var3983-IN) ; Statement: $r2 = <javax.persistence.ParameterMode: javax.persistence.ParameterMode IN> 
 ; Statement: if $r3 == $r2 goto $r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(assert (= var268 var2184)) ; Cond: $r3 == $r2 
(define-const var1369 var1704 (procedureParameter/1747700246 var3892)) ; Statement: $r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter> 
(define-const var2600 ClassObject (var3005_getParameterType/-1649566967 (cast-from-var1704-to-var3005 var1369))) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.Class getParameterType()>() 
 ; Statement: if $r5 == null goto r0.<org.hibernate.procedure.internal.ParameterBindImpl: java.lang.Object value> = r6 
(assert (= var2600 null-ClassObject)) ; Cond: $r5 == null 
(declare-const var3892!1 var728)
(assert (not (= var3892!1 null-var728)))
(assert (= (value/1747700246 var3892!1) var706)) ; Statement: r0.<org.hibernate.procedure.internal.ParameterBindImpl: java.lang.Object value> = r6 
(declare-const var3892!2 var728)
(assert (not (= var3892!2 null-var728)))
(assert (= (isBound/1747700246 var3892!2) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.procedure.internal.ParameterBindImpl: boolean isBound> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {procedureParameter/1747700246=([org.hibernate.procedure.internal.ParameterBindImpl], org.hibernate.query.procedure.spi.ProcedureParameterImplementor), var3005_getMode/726865546=([org.hibernate.procedure.ParameterRegistration], javax.persistence.ParameterMode), cast-from-var1704-to-var3005=([org.hibernate.query.procedure.spi.ProcedureParameterImplementor], org.hibernate.procedure.ParameterRegistration), var3005_getParameterType/-1649566967=([org.hibernate.procedure.ParameterRegistration], java.lang.Class), value/1747700246=([org.hibernate.procedure.internal.ParameterBindImpl], java.lang.Object), isBound/1747700246=([org.hibernate.procedure.internal.ParameterBindImpl], boolean)}
; {var728=org.hibernate.procedure.internal.ParameterBindImpl, var3892=r0, var3448=java.lang.Object, var706=r6, var1704=org.hibernate.query.procedure.spi.ProcedureParameterImplementor, var385=$r1, var3983=javax.persistence.ParameterMode, var3005=org.hibernate.procedure.ParameterRegistration, var268=$r3, var2184=$r2, var1369=$r4, var2600=$r5}
; {org.hibernate.procedure.internal.ParameterBindImpl=var728, r0=var3892, java.lang.Object=var3448, r6=var706, org.hibernate.query.procedure.spi.ProcedureParameterImplementor=var1704, $r1=var385, javax.persistence.ParameterMode=var3983, org.hibernate.procedure.ParameterRegistration=var3005, $r3=var268, $r2=var2184, $r4=var1369, $r5=var2600}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.procedure.internal.ParameterBindImpl;	r6 := @parameter0: java.lang.Object;	$r1 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r3 = interfaceinvoke $r1.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: javax.persistence.ParameterMode getMode()>();	$r2 = <javax.persistence.ParameterMode: javax.persistence.ParameterMode IN>;	if $r3 == $r2 goto $r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r4 = r0.<org.hibernate.procedure.internal.ParameterBindImpl: org.hibernate.query.procedure.spi.ProcedureParameterImplementor procedureParameter>;	$r5 = interfaceinvoke $r4.<org.hibernate.query.procedure.spi.ProcedureParameterImplementor: java.lang.Class getParameterType()>();	if $r5 == null goto r0.<org.hibernate.procedure.internal.ParameterBindImpl: java.lang.Object value> = r6;	r0.<org.hibernate.procedure.internal.ParameterBindImpl: java.lang.Object value> = r6;	r0.<org.hibernate.procedure.internal.ParameterBindImpl: boolean isBound> = 1;	return
;block_num 3