(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1313 0)
(declare-sort var2518 0)
(declare-sort var1025 0)
(declare-sort var42 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1025-init () (Array Int var1025))
(declare-fun determineJoinType/1833922727 (var1313 var2518) String)
(declare-fun cast-from-String-to-var1025 (String) var1025)
(declare-fun var2518_getLeftHandSide/-345884020 (var2518) var42)
(declare-fun var42_getUid/-1971155046 (var42) String)
(declare-fun var2518_getRightHandSide/1935456543 (var2518) var42)
(declare-fun String_format/1339386452 (String (Array Int var1025)) String)
(declare-const null-var1313 var1313)
(declare-const null-var2518 var2518)
(declare-const null-__Array__Int__var1025__ (Array Int var1025))
(declare-const var1191 var1313) ; Statement: r1 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter 
(assert (not (= var1191 null-var1313)))
(declare-const var2659 var2518) ; Statement: r2 := @parameter0: org.hibernate.loader.plan.spi.Join 
(assert (not (= var2659 null-var2518)))
(define-const var2104 (Array Int var1025) arr-var1025-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1034 String (determineJoinType/1833922727 var1191 var2659)) ; Statement: $r3 = specialinvoke r1.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: java.lang.String determineJoinType(org.hibernate.loader.plan.spi.Join)>(r2) 
(declare-const var2104!1 (Array Int var1025))
(assert (not (= var2104!1 null-__Array__Int__var1025__)))
(assert (= (select var2104!1 0) (cast-from-String-to-var1025 var1034))) ; Statement: $r0[0] = $r3 
(define-const var2601 var42 (var2518_getLeftHandSide/-345884020 var2659)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.Join: org.hibernate.loader.plan.spi.QuerySpace getLeftHandSide()>() 
(define-const var2731 String (var42_getUid/-1971155046 var2601)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(declare-const var2104!2 (Array Int var1025))
(assert (not (= var2104!2 null-__Array__Int__var1025__)))
(assert (= (select var2104!2 1) (cast-from-String-to-var1025 var2731))) ; Statement: $r0[1] = $r5 
(define-const var3678 var42 (var2518_getRightHandSide/1935456543 var2659)) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.Join: org.hibernate.loader.plan.spi.QuerySpace getRightHandSide()>() 
(define-const var2202 String (var42_getUid/-1971155046 var3678)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(declare-const var2104!3 (Array Int var1025))
(assert (not (= var2104!3 null-__Array__Int__var1025__)))
(assert (= (select var2104!3 2) (cast-from-String-to-var1025 var2202))) ; Statement: $r0[2] = $r7 
(define-const var339 String (String_format/1339386452 "JOIN (%s) : %s -> %s" var2104!3)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("JOIN (%s) : %s -> %s", $r0) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1025-init=([], java.lang.Object[]), determineJoinType/1833922727=([org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, org.hibernate.loader.plan.spi.Join], java.lang.String), cast-from-String-to-var1025=([java.lang.String], java.lang.Object), var2518_getLeftHandSide/-345884020=([org.hibernate.loader.plan.spi.Join], org.hibernate.loader.plan.spi.QuerySpace), var42_getUid/-1971155046=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), var2518_getRightHandSide/1935456543=([org.hibernate.loader.plan.spi.Join], org.hibernate.loader.plan.spi.QuerySpace), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1313=org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, var1191=r1, var2518=org.hibernate.loader.plan.spi.Join, var2659=r2, var1025=java.lang.Object, var2104=$r0, var1034=$r3, var42=org.hibernate.loader.plan.spi.QuerySpace, var2601=$r4, var2731=$r5, var3678=$r6, var2202=$r7, var339=$r8}
; {org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter=var1313, r1=var1191, org.hibernate.loader.plan.spi.Join=var2518, r2=var2659, java.lang.Object=var1025, $r0=var2104, $r3=var1034, org.hibernate.loader.plan.spi.QuerySpace=var42, $r4=var2601, $r5=var2731, $r6=var3678, $r7=var2202, $r8=var339}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter;	r2 := @parameter0: org.hibernate.loader.plan.spi.Join;	$r0 = newarray (java.lang.Object)[3];	$r3 = specialinvoke r1.<org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter: java.lang.String determineJoinType(org.hibernate.loader.plan.spi.Join)>(r2);	$r0[0] = $r3;	$r4 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.Join: org.hibernate.loader.plan.spi.QuerySpace getLeftHandSide()>();	$r5 = interfaceinvoke $r4.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r0[1] = $r5;	$r6 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.Join: org.hibernate.loader.plan.spi.QuerySpace getRightHandSide()>();	$r7 = interfaceinvoke $r6.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r0[2] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("JOIN (%s) : %s -> %s", $r0);	return $r8
;block_num 1