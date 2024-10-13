(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3572 0)
(declare-sort var3199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-var3572 var3572)
(declare-const null-String String)
(declare-const var2506 var3572) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.regex.RegExpTree 
(assert (not (= var2506 null-var3572)))
(declare-const var420 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var420 null-String)))
(assert true)
(define-const var73 Int (indexOf/-1037706067 var420 109)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(109) 
 ; Statement: if $i0 < 0 goto $z0 = r1 instanceof com.google.javascript.jscomp.regex.RegExpTree$Concatenation 
(assert (not (< var73 0))) ; Negate: Cond: $i0 < 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var3572=com.google.javascript.jscomp.regex.RegExpTree, var2506=r1, var420=r0, var3199=null_type, var73=$i0}
; {com.google.javascript.jscomp.regex.RegExpTree=var3572, r1=var2506, r0=var420, null_type=var3199, $i0=var73}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.regex.RegExpTree;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(109);	if $i0 < 0 goto $z0 = r1 instanceof com.google.javascript.jscomp.regex.RegExpTree$Concatenation;	return 0
;block_num 2