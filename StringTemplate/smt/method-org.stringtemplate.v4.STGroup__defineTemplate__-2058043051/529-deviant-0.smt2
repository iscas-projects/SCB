(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var1971 0)
(declare-sort var1056 0)
(declare-sort var1871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1056-init () var1056)
(declare-const null-var3187 var3187)
(declare-const null-String String)
(declare-const null-var1871 var1871)
(declare-const var2700 var3187) ; Statement: r0 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var2700 null-var3187)))
(declare-const var996 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var996 null-String)))
(declare-const var1128 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1128 null-String)))
(assert (not (and true (and (> (str.len var996) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1056-init=([], org.antlr.runtime.CommonToken)}
; {var3187=org.stringtemplate.v4.STGroup, var2700=r0, var996=r8, var1971=null_type, var1128=r2, var580=$c0, var956=$i1, var1056=org.antlr.runtime.CommonToken, var350=$r10, var1871=org.stringtemplate.v4.compiler.STException, var1814=$r7}
; {org.stringtemplate.v4.STGroup=var3187, r0=var2700, r8=var996, null_type=var1971, r2=var1128, $c0=var580, $i1=var956, org.antlr.runtime.CommonToken=var1056, $r10=var350, org.stringtemplate.v4.compiler.STException=var1871, $r7=var1814}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.STGroup;	r8 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$c0 = virtualinvoke r8.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 47 goto $r10 = new org.antlr.runtime.CommonToken;	$r10 = new org.antlr.runtime.CommonToken;	$r7 := @caughtexception;	return null
;block_num 3