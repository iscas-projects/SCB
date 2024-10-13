(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2757 0)
(declare-sort var144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun OFFSET/-89587649 (var2757 String) var144)
(declare-const null-var2757 var2757)
(declare-const null-Int Int)
(declare-const var2439 var2757) ; Statement: r0 := @this: org.apache.ibatis.jdbc.AbstractSQL 
(assert (not (= var2439 null-var2757)))
(declare-const var3546 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3546 null-Int)))
(define-const var1084 String (String_valueOf/-107395227 var3546)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(assert true)
(define-const var1821 var144 (OFFSET/-89587649 var2439 var1084)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object OFFSET(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String), OFFSET/-89587649=([org.apache.ibatis.jdbc.AbstractSQL, java.lang.String], java.lang.Object)}
; {var2757=org.apache.ibatis.jdbc.AbstractSQL, var2439=r0, var3546=l0, var1084=$r1, var144=java.lang.Object, var1821=$r2}
; {org.apache.ibatis.jdbc.AbstractSQL=var2757, r0=var2439, l0=var3546, $r1=var1084, java.lang.Object=var144, $r2=var1821}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.AbstractSQL;	l0 := @parameter0: long;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	$r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object OFFSET(java.lang.String)>($r1);	return $r2
;block_num 1