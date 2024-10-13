(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sql/-1710938057 (var671) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var671 var671)
(declare-const var1579 var671) ; Statement: r0 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var1579 null-var671)))
(define-const var3873 String (sql/-1710938057 var1579)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
(define-const var2989 String (toString/-2075883882 var3873)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var671=cn.hutool.db.sql.SqlBuilder, var1579=r0, var3873=$r1, var2989=$r2}
; {cn.hutool.db.sql.SqlBuilder=var671, r0=var1579, $r1=var3873, $r2=var2989}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlBuilder;	$r1 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1