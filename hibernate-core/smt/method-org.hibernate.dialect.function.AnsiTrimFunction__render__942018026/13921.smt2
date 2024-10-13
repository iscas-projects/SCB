(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1179 0)
(declare-sort var2325 0)
(declare-sort var3027 0)
(declare-sort var2319 0)
(declare-sort var3456 0)
(declare-sort var1974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3456-init () (Array Int var3456))
(declare-fun getTrimSpecification/1103294605 (var2325) var1974)
(declare-fun getName/1442240914 (var1974) String)
(declare-fun cast-from-String-to-var3456 (String) var3456)
(declare-fun getTrimCharacter/1526434449 (var2325) String)
(declare-fun String_format/1339386452 (String (Array Int var3456)) String)
(declare-const null-var1179 var1179)
(declare-const null-var2325 var2325)
(declare-const null-String String)
(declare-const null-var2319 var2319)
(declare-const null-__Array__Int__var3456__ (Array Int var3456))
(declare-const var1784 var1179) ; Statement: r7 := @this: org.hibernate.dialect.function.AnsiTrimFunction 
(assert (not (= var1784 null-var1179)))
(declare-const var2314 var2325) ; Statement: r1 := @parameter0: org.hibernate.dialect.function.TrimFunctionTemplate$Options 
(assert (not (= var2314 null-var2325)))
(declare-const var457 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var457 null-String)))
(declare-const var967 var2319) ; Statement: r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var967 null-var2319)))
(define-const var2376 (Array Int var3456) arr-var3456-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var2280 var1974 (getTrimSpecification/1103294605 var2314)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.dialect.function.TrimFunctionTemplate$Options: org.hibernate.dialect.function.TrimFunctionTemplate$Specification getTrimSpecification()>() 
(assert true)
(define-const var2735 String (getName/1442240914 var2280)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.dialect.function.TrimFunctionTemplate$Specification: java.lang.String getName()>() 
(declare-const var2376!1 (Array Int var3456))
(assert (not (= var2376!1 null-__Array__Int__var3456__)))
(assert (= (select var2376!1 0) (cast-from-String-to-var3456 var2735))) ; Statement: $r0[0] = $r3 
(assert true)
(define-const var785 String (getTrimCharacter/1526434449 var2314)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.dialect.function.TrimFunctionTemplate$Options: java.lang.String getTrimCharacter()>() 
(declare-const var2376!2 (Array Int var3456))
(assert (not (= var2376!2 null-__Array__Int__var3456__)))
(assert (= (select var2376!2 1) (cast-from-String-to-var3456 var785))) ; Statement: $r0[1] = $r4 
(declare-const var2376!3 (Array Int var3456))
(assert (not (= var2376!3 null-__Array__Int__var3456__)))
(assert (= (select var2376!3 2) (cast-from-String-to-var3456 var457))) ; Statement: $r0[2] = r5 
(define-const var841 String (String_format/1339386452 "trim(%s %s from %s)" var2376!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("trim(%s %s from %s)", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3456-init=([], java.lang.Object[]), getTrimSpecification/1103294605=([org.hibernate.dialect.function.TrimFunctionTemplate$Options], org.hibernate.dialect.function.TrimFunctionTemplate$Specification), getName/1442240914=([org.hibernate.dialect.function.TrimFunctionTemplate$Specification], java.lang.String), cast-from-String-to-var3456=([java.lang.String], java.lang.Object), getTrimCharacter/1526434449=([org.hibernate.dialect.function.TrimFunctionTemplate$Options], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1179=org.hibernate.dialect.function.AnsiTrimFunction, var1784=r7, var2325=org.hibernate.dialect.function.TrimFunctionTemplate$Options, var2314=r1, var457=r5, var3027=null_type, var2319=org.hibernate.engine.spi.SessionFactoryImplementor, var967=r8, var3456=java.lang.Object, var2376=$r0, var1974=org.hibernate.dialect.function.TrimFunctionTemplate$Specification, var2280=$r2, var2735=$r3, var785=$r4, var841=$r6}
; {org.hibernate.dialect.function.AnsiTrimFunction=var1179, r7=var1784, org.hibernate.dialect.function.TrimFunctionTemplate$Options=var2325, r1=var2314, r5=var457, null_type=var3027, org.hibernate.engine.spi.SessionFactoryImplementor=var2319, r8=var967, java.lang.Object=var3456, $r0=var2376, org.hibernate.dialect.function.TrimFunctionTemplate$Specification=var1974, $r2=var2280, $r3=var2735, $r4=var785, $r6=var841}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: org.hibernate.dialect.function.AnsiTrimFunction;	r1 := @parameter0: org.hibernate.dialect.function.TrimFunctionTemplate$Options;	r5 := @parameter1: java.lang.String;	r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = newarray (java.lang.Object)[3];	$r2 = virtualinvoke r1.<org.hibernate.dialect.function.TrimFunctionTemplate$Options: org.hibernate.dialect.function.TrimFunctionTemplate$Specification getTrimSpecification()>();	$r3 = virtualinvoke $r2.<org.hibernate.dialect.function.TrimFunctionTemplate$Specification: java.lang.String getName()>();	$r0[0] = $r3;	$r4 = virtualinvoke r1.<org.hibernate.dialect.function.TrimFunctionTemplate$Options: java.lang.String getTrimCharacter()>();	$r0[1] = $r4;	$r0[2] = r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("trim(%s %s from %s)", $r0);	return $r6
;block_num 1