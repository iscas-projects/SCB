(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3897 var3897)
(declare-const null-String String)
(declare-const var2149 var3897) ; Statement: r8 := @parameter0: com.google.javascript.jscomp.parsing.parser.FeatureSet 
(assert (not (= var2149 null-var3897)))
(declare-const var1741 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1741 null-String)))
(assert true)
(define-const var3643 Bool (endsWith/985337093 var1741 ".")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 != 0 goto return 0 
(assert (not (= (ite var3643 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3897=com.google.javascript.jscomp.parsing.parser.FeatureSet, var2149=r8, var1741=r0, var2837=null_type, var3643=$z0}
; {com.google.javascript.jscomp.parsing.parser.FeatureSet=var3897, r8=var2149, r0=var1741, null_type=var2837, $z0=var3643}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r8 := @parameter0: com.google.javascript.jscomp.parsing.parser.FeatureSet;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 != 0 goto return 0;	return 0
;block_num 2