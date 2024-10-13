(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var1622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3638 var3638)
(declare-const null-String String)
(declare-const var2331 var3638) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter 
(assert (not (= var2331 null-var3638)))
(declare-const var2450 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2450 null-String)))
(assert (not (and true (and (> (str.len var2450) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3638=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter, var2331=r1, var2450=r0, var1622=null_type, var1702=$c0, var1063=$i11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter=var3638, r1=var2331, r0=var2450, null_type=var1622, $c0=var1702, $i11=var1063}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter;	r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i11 = (int) $c0;	if $i11 != 38 goto return 0;	return 0
;block_num 2