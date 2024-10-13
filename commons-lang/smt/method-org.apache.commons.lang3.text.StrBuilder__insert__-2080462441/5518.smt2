(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-fun insert/1427295636 (var1753 Int String) var1753)
(declare-const null-var1753 var1753)
(declare-const null-Int Int)
(declare-const null-Float32 Float32)
(declare-const var1209 var1753) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1209 null-var1753)))
(declare-const var3582 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3582 null-Int)))
(declare-const var3977 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var3977 null-Float32)))
(define-const var1767 String (String_valueOf/-149410723 var3977)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0) 
(assert true)
(define-const var1878 var1753 (insert/1427295636 var1209 var3582 var1767)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-149410723=([float], java.lang.String), insert/1427295636=([org.apache.commons.lang3.text.StrBuilder, int, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var1753=org.apache.commons.lang3.text.StrBuilder, var1209=r0, var3582=i0, var3977=f0, var1767=$r1, var1878=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var1753, r0=var1209, i0=var3582, f0=var3977, $r1=var1767, $r2=var1878}
;seq <java.lang.String: java.lang.String valueOf(float)>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	f0 := @parameter1: float;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1);	return $r2
;block_num 1