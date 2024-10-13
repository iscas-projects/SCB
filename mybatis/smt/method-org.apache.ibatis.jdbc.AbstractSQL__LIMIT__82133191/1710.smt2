(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1542 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun LIMIT/-1228002345 (var1542 String) var3654)
(declare-const null-var1542 var1542)
(declare-const null-Int Int)
(declare-const var3808 var1542) ; Statement: r0 := @this: org.apache.ibatis.jdbc.AbstractSQL 
(assert (not (= var3808 null-var1542)))
(declare-const var112 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var112 null-Int)))
(define-const var2253 String (String_valueOf/1240665136 var112)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
(define-const var1641 var3654 (LIMIT/-1228002345 var3808 var2253)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object LIMIT(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), LIMIT/-1228002345=([org.apache.ibatis.jdbc.AbstractSQL, java.lang.String], java.lang.Object)}
; {var1542=org.apache.ibatis.jdbc.AbstractSQL, var3808=r0, var112=i0, var2253=$r1, var3654=java.lang.Object, var1641=$r2}
; {org.apache.ibatis.jdbc.AbstractSQL=var1542, r0=var3808, i0=var112, $r1=var2253, java.lang.Object=var3654, $r2=var1641}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.AbstractSQL;	i0 := @parameter0: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object LIMIT(java.lang.String)>($r1);	return $r2
;block_num 1