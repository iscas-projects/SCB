(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2357 0)
(declare-sort var30 0)
(declare-sort var1556 0)
(declare-sort var1070 0)
(declare-sort var2129 0)
(declare-sort var3568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3568_filterFragment/1785996213 (var3568 String var1070) String)
(declare-fun cast-from-var1556-to-var3568 (var1556) var3568)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2357 var2357)
(declare-const null-var30 var30)
(declare-const null-var1556 var1556)
(declare-const null-var1070 var1070)
(declare-const null-String String)
(declare-const var3781 var2357) ; Statement: r9 := @this: org.hibernate.hql.internal.ast.util.SyntheticAndFactory 
(assert (not (= var3781 null-var2357)))
(declare-const var2375 var30) ; Statement: r12 := @parameter0: org.hibernate.hql.internal.ast.tree.RestrictableStatement 
(assert (not (= var2375 null-var30)))
(declare-const var1243 var1556) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.Queryable 
(assert (not (= var1243 null-var1556)))
(declare-const var1453 var1070) ; Statement: r2 := @parameter2: java.util.Map 
(assert (not (= var1453 null-var1070)))
(declare-const var3848 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3848 null-String)))
(define-const var2759 String (var3568_filterFragment/1785996213 (cast-from-var1556-to-var3568 var1243) var3848 var1453)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.persister.entity.Queryable: java.lang.String filterFragment(java.lang.String,java.util.Map)>(r1, r2) 
(assert true)
(define-const var3968 String (trim/-847153721 var2759)) ; Statement: r21 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
 ; Statement: if r21 == null goto $z0 = virtualinvoke r21.<java.lang.String: boolean startsWith(java.lang.String)>("and") 
(assert (not (= var3968 null-String))) ; Negate: Cond: r21 == null  
(assert true)
(define-const var344 Bool (isEmpty/-1285796103 var3968)) ; Statement: $z1 = virtualinvoke r21.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $z0 = virtualinvoke r21.<java.lang.String: boolean startsWith(java.lang.String)>("and") 
(assert (not (= (ite var344 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3568_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), cast-from-var1556-to-var3568=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.Joinable), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2357=org.hibernate.hql.internal.ast.util.SyntheticAndFactory, var3781=r9, var30=org.hibernate.hql.internal.ast.tree.RestrictableStatement, var2375=r12, var1556=org.hibernate.persister.entity.Queryable, var1243=r0, var1070=java.util.Map, var1453=r2, var3848=r1, var2129=null_type, var3568=org.hibernate.persister.entity.Joinable, var2759=$r3, var3968=r21, var344=$z1}
; {org.hibernate.hql.internal.ast.util.SyntheticAndFactory=var2357, r9=var3781, org.hibernate.hql.internal.ast.tree.RestrictableStatement=var30, r12=var2375, org.hibernate.persister.entity.Queryable=var1556, r0=var1243, java.util.Map=var1070, r2=var1453, r1=var3848, null_type=var2129, org.hibernate.persister.entity.Joinable=var3568, $r3=var2759, r21=var3968, $z1=var344}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r9 := @this: org.hibernate.hql.internal.ast.util.SyntheticAndFactory;	r12 := @parameter0: org.hibernate.hql.internal.ast.tree.RestrictableStatement;	r0 := @parameter1: org.hibernate.persister.entity.Queryable;	r2 := @parameter2: java.util.Map;	r1 := @parameter3: java.lang.String;	$r3 = interfaceinvoke r0.<org.hibernate.persister.entity.Queryable: java.lang.String filterFragment(java.lang.String,java.util.Map)>(r1, r2);	r21 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	if r21 == null goto $z0 = virtualinvoke r21.<java.lang.String: boolean startsWith(java.lang.String)>("and");	$z1 = virtualinvoke r21.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $z0 = virtualinvoke r21.<java.lang.String: boolean startsWith(java.lang.String)>("and");	return
;block_num 3