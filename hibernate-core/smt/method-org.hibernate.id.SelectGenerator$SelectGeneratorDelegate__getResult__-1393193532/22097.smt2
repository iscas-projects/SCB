(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var671 0)
(declare-sort var2569 0)
(declare-sort var1249 0)
(declare-sort var1957 0)
(declare-sort var2593 0)
(declare-sort var2165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2569_next/1352680215 (var2569) Bool)
(declare-fun idType/-844621502 (var898) var1957)
(declare-fun persister/-844621502 (var898) var2593)
(declare-fun var2593_getRootTableKeyColumnNames/1267937210 (var2593) (Array Int String))
(declare-fun var1957_nullSafeGet/1991669340 (var1957 var2569 (Array Int String) var671 var1249) var1249)
(declare-fun cast-from-var1249-to-var2165 (var1249) var2165)
(declare-const null-var898 var898)
(declare-const null-var671 var671)
(declare-const null-var2569 var2569)
(declare-const null-var1249 var1249)
(declare-const var199 var898) ; Statement: r1 := @this: org.hibernate.id.SelectGenerator$SelectGeneratorDelegate 
(assert (not (= var199 null-var898)))
(declare-const var1995 var671) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1995 null-var671)))
(declare-const var3464 var2569) ; Statement: r0 := @parameter1: java.sql.ResultSet 
(assert (not (= var3464 null-var2569)))
(declare-const var356 var1249) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var356 null-var1249)))
(define-const var2207 Bool (var2569_next/1352680215 var3464)) ; Statement: $z0 = interfaceinvoke r0.<java.sql.ResultSet: boolean next()>() 
 ; Statement: if $z0 != 0 goto $r3 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.type.Type idType> 
(assert (not (= (ite var2207 1 0) 0))) ; Cond: $z0 != 0 
(define-const var797 var1957 (idType/-844621502 var199)) ; Statement: $r3 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.type.Type idType> 
(define-const var42 var2593 (persister/-844621502 var199)) ; Statement: $r2 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.id.PostInsertIdentityPersister persister> 
(define-const var1686 (Array Int String) (var2593_getRootTableKeyColumnNames/1267937210 var42)) ; Statement: $r6 = interfaceinvoke $r2.<org.hibernate.id.PostInsertIdentityPersister: java.lang.String[] getRootTableKeyColumnNames()>() 
(define-const var1945 var1249 (var1957_nullSafeGet/1991669340 var797 var3464 var1686 var1995 var356)) ; Statement: $r7 = interfaceinvoke $r3.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String[],org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r0, $r6, r4, r5) 
(define-const var242 var2165 (cast-from-var1249-to-var2165 var1945)) ; Statement: $r8 = (java.io.Serializable) $r7 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2569_next/1352680215=([java.sql.ResultSet], boolean), idType/-844621502=([org.hibernate.id.SelectGenerator$SelectGeneratorDelegate], org.hibernate.type.Type), persister/-844621502=([org.hibernate.id.SelectGenerator$SelectGeneratorDelegate], org.hibernate.id.PostInsertIdentityPersister), var2593_getRootTableKeyColumnNames/1267937210=([org.hibernate.id.PostInsertIdentityPersister], java.lang.String[]), var1957_nullSafeGet/1991669340=([org.hibernate.type.Type, java.sql.ResultSet, java.lang.String[], org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.lang.Object), cast-from-var1249-to-var2165=([java.lang.Object], java.io.Serializable)}
; {var898=org.hibernate.id.SelectGenerator$SelectGeneratorDelegate, var199=r1, var671=org.hibernate.engine.spi.SharedSessionContractImplementor, var1995=r4, var2569=java.sql.ResultSet, var3464=r0, var1249=java.lang.Object, var356=r5, var2207=$z0, var1957=org.hibernate.type.Type, var797=$r3, var2593=org.hibernate.id.PostInsertIdentityPersister, var42=$r2, var1686=$r6, var1945=$r7, var2165=java.io.Serializable, var242=$r8}
; {org.hibernate.id.SelectGenerator$SelectGeneratorDelegate=var898, r1=var199, org.hibernate.engine.spi.SharedSessionContractImplementor=var671, r4=var1995, java.sql.ResultSet=var2569, r0=var3464, java.lang.Object=var1249, r5=var356, $z0=var2207, org.hibernate.type.Type=var1957, $r3=var797, org.hibernate.id.PostInsertIdentityPersister=var2593, $r2=var42, $r6=var1686, $r7=var1945, java.io.Serializable=var2165, $r8=var242}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.id.SelectGenerator$SelectGeneratorDelegate;	r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r0 := @parameter1: java.sql.ResultSet;	r5 := @parameter2: java.lang.Object;	$z0 = interfaceinvoke r0.<java.sql.ResultSet: boolean next()>();	if $z0 != 0 goto $r3 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.type.Type idType>;	$r3 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.type.Type idType>;	$r2 = r1.<org.hibernate.id.SelectGenerator$SelectGeneratorDelegate: org.hibernate.id.PostInsertIdentityPersister persister>;	$r6 = interfaceinvoke $r2.<org.hibernate.id.PostInsertIdentityPersister: java.lang.String[] getRootTableKeyColumnNames()>();	$r7 = interfaceinvoke $r3.<org.hibernate.type.Type: java.lang.Object nullSafeGet(java.sql.ResultSet,java.lang.String[],org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r0, $r6, r4, r5);	$r8 = (java.io.Serializable) $r7;	return $r8
;block_num 2