(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2485 0)
(declare-sort var436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun OFFSET_ROWS/-40408787 (var2485 String) var436)
(declare-const null-var2485 var2485)
(declare-const null-Int Int)
(declare-const var3185 var2485) ; Statement: r0 := @this: org.apache.ibatis.jdbc.AbstractSQL 
(assert (not (= var3185 null-var2485)))
(declare-const var822 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var822 null-Int)))
(define-const var690 String (String_valueOf/-107395227 var822)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
(assert true)
(define-const var853 var436 (OFFSET_ROWS/-40408787 var3185 var690)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object OFFSET_ROWS(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String), OFFSET_ROWS/-40408787=([org.apache.ibatis.jdbc.AbstractSQL, java.lang.String], java.lang.Object)}
; {var2485=org.apache.ibatis.jdbc.AbstractSQL, var3185=r0, var822=l0, var690=$r1, var436=java.lang.Object, var853=$r2}
; {org.apache.ibatis.jdbc.AbstractSQL=var2485, r0=var3185, l0=var822, $r1=var690, java.lang.Object=var436, $r2=var853}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.AbstractSQL;	l0 := @parameter0: long;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	$r2 = virtualinvoke r0.<org.apache.ibatis.jdbc.AbstractSQL: java.lang.Object OFFSET_ROWS(java.lang.String)>($r1);	return $r2
;block_num 1