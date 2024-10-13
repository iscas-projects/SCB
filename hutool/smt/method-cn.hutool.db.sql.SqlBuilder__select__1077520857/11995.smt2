(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var517 0)
(declare-sort var2555 0)
(declare-sort var1110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sql/-1710938057 (var517) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1110_isEmpty/-2091408825 (var2555) Bool)
(declare-const null-var517 var517)
(declare-const null-Bool Bool)
(declare-const null-var2555 var2555)
(declare-const var1031 var517) ; Statement: r0 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var1031 null-var517)))
(declare-const var650 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var650 null-Bool)))
(declare-const var3273 var2555) ; Statement: r8 := @parameter1: java.util.Collection 
(assert (not (= var3273 null-var2555)))
(define-const var2600 String (sql/-1710938057 var1031)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
;(assert (append/672562846 var2600 "SELECT ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SELECT ") 
(declare-const var2600!1 String)
(assert (= var2600!1 (str.++ var2600 "SELECT ")))
 ; Statement: if z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.collection.CollectionUtil: boolean isEmpty(java.util.Collection)>(r8) 
(assert (= (ite var650 1 0) 0)) ; Cond: z0 == 0 
(define-const var2894 Bool (var1110_isEmpty/-2091408825 var3273)) ; Statement: $z1 = staticinvoke <cn.hutool.core.collection.CollectionUtil: boolean isEmpty(java.util.Collection)>(r8) 
 ; Statement: if $z1 == 0 goto $r2 = r0.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper> 
(assert (not (= (ite var2894 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3280 String (sql/-1710938057 var1031)) ; Statement: $r6 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
;(assert (append/672562846 var3280 "*")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*") 
(declare-const var3280!1 String)
(assert (= var3280!1 (str.++ var3280 "*")))
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1110_isEmpty/-2091408825=([java.util.Collection], boolean)}
; {var517=cn.hutool.db.sql.SqlBuilder, var1031=r0, var650=z0, var2555=java.util.Collection, var3273=r8, var2600=$r1, var1110=cn.hutool.core.collection.CollUtil, var2894=$z1, var3280=$r6}
; {cn.hutool.db.sql.SqlBuilder=var517, r0=var1031, z0=var650, java.util.Collection=var2555, r8=var3273, $r1=var2600, cn.hutool.core.collection.CollUtil=var1110, $z1=var2894, $r6=var3280}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: cn.hutool.db.sql.SqlBuilder;	z0 := @parameter0: boolean;	r8 := @parameter1: java.util.Collection;	$r1 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SELECT ");	if z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.collection.CollectionUtil: boolean isEmpty(java.util.Collection)>(r8);	$z1 = staticinvoke <cn.hutool.core.collection.CollectionUtil: boolean isEmpty(java.util.Collection)>(r8);	if $z1 == 0 goto $r2 = r0.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper>;	$r6 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*");	goto [?= return r0];	return r0
;block_num 4