(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun insert/1427295636 (var3159 Int String) var3159)
(declare-const null-var3159 var3159)
(declare-const null-Int Int)
(declare-const var1617 var3159) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1617 null-var3159)))
(declare-const var899 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var899 null-Int)))
(declare-const var1442 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1442 null-Int)))
(define-const var2558 String (String_valueOf/1240665136 var1442)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1) 
(assert true)
(define-const var2274 var3159 (insert/1427295636 var1617 var899 var2558)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), insert/1427295636=([org.apache.commons.lang3.text.StrBuilder, int, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var3159=org.apache.commons.lang3.text.StrBuilder, var1617=r0, var899=i0, var1442=i1, var2558=$r1, var2274=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var3159, r0=var1617, i0=var899, i1=var1442, $r1=var2558, $r2=var2274}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i1);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder insert(int,java.lang.String)>(i0, $r1);	return $r2
;block_num 1