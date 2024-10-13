(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var888 0)
(declare-sort var2415 0)
(declare-sort var2601 0)
(declare-sort var1753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun persister/-1764368390 (var888) var2601)
(declare-fun var1753_getTableName/48490405 (var1753) String)
(declare-fun cast-from-var2601-to-var1753 (var2601) var1753)
(declare-const null-var888 var888)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2451 var888) ; Statement: r0 := @this: org.hibernate.loader.AbstractEntityJoinWalker 
(assert (not (= var2451 null-var888)))
(declare-const var2463 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2463 null-String)))
(declare-const var2310 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var2310 null-__Array__Int__String__)))
(define-const var372 var2601 (persister/-1764368390 var2451)) ; Statement: $r1 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister> 
(define-const var3684 String (var1753_getTableName/48490405 (cast-from-var2601-to-var1753 var372))) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String getTableName()>() 
(assert true)
(define-const var3992 Bool (= var3684 var2463)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $z3 = 0 
(assert (= (ite var3992 1 0) 0)) ; Cond: $z0 == 0 
(define-const var388 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z3 != 0 goto $z4 = 1 
(assert (not (= (ite var388 1 0) 0))) ; Cond: $z3 != 0 
(define-const var678 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {persister/-1764368390=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.persister.entity.OuterJoinLoadable), var1753_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), cast-from-var2601-to-var1753=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable)}
; {var888=org.hibernate.loader.AbstractEntityJoinWalker, var2451=r0, var2463=r2, var2415=null_type, var2310=r4, var2601=org.hibernate.persister.entity.OuterJoinLoadable, var372=$r1, var1753=org.hibernate.persister.entity.Joinable, var3684=$r3, var3992=$z0, var388=$z3, var678=$z4}
; {org.hibernate.loader.AbstractEntityJoinWalker=var888, r0=var2451, r2=var2463, null_type=var2415, r4=var2310, org.hibernate.persister.entity.OuterJoinLoadable=var2601, $r1=var372, org.hibernate.persister.entity.Joinable=var1753, $r3=var3684, $z0=var3992, $z3=var388, $z4=var678}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.AbstractEntityJoinWalker;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	$r1 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister>;	$r3 = interfaceinvoke $r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String getTableName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $z3 = 0;	$z3 = 0;	if $z3 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 5