(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-fun insert/1427295636 (var1592 Int String) var1592)
(declare-const null-var1592 var1592)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const var3062 var1592) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3062 null-var1592)))
(declare-const var3278 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3278 null-Int)))
(declare-const var1366 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var1366 null-Float64)))
(define-const var1976 String (String_valueOf/-987357574 var1366)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert true)
(define-const var2068 var1592 (insert/1427295636 var3062 var3278 var1976)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-987357574=([double], java.lang.String), insert/1427295636=([org.apache.commons.lang3.text.StrBuilder, int, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var1592=org.apache.commons.lang3.text.StrBuilder, var3062=r0, var3278=i0, var1366=d0, var1976=$r1, var2068=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var1592, r0=var3062, i0=var3278, d0=var1366, $r1=var1976, $r2=var2068}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	d0 := @parameter1: double;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1);	return $r2
;block_num 1