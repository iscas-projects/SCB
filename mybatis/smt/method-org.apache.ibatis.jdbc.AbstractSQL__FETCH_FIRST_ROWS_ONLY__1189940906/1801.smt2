(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var48 0)
(declare-sort var3758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun FETCH_FIRST_ROWS_ONLY/440747732 (var48 String) var3758)
(declare-const null-var48 var48)
(declare-const null-Int Int)
(declare-const var2659 var48) ; Statement: r0 := @this: org.apache.ibatis.jdbc.AbstractSQL 
(assert (not (= var2659 null-var48)))
(declare-const var2165 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2165 null-Int)))
(define-const var3046 String (String_valueOf/1240665136 var2165)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
(define-const var2778 var3758 (FETCH_FIRST_ROWS_ONLY/440747732 var2659 var3046)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object FETCH_FIRST_ROWS_ONLY(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), FETCH_FIRST_ROWS_ONLY/440747732=([org.apache.ibatis.jdbc.AbstractSQL, java.lang.String], java.lang.Object)}
; {var48=org.apache.ibatis.jdbc.AbstractSQL, var2659=r0, var2165=i0, var3046=$r1, var3758=java.lang.Object, var2778=$r2}
; {org.apache.ibatis.jdbc.AbstractSQL=var48, r0=var2659, i0=var2165, $r1=var3046, java.lang.Object=var3758, $r2=var2778}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.AbstractSQL;	i0 := @parameter0: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object FETCH_FIRST_ROWS_ONLY(java.lang.String)>($r1);	return $r2
;block_num 1