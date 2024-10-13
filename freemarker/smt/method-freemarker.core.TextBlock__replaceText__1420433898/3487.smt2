(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1444 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun text/-1810769671 (var1444) (Array Int Int))
(declare-const null-var1444 var1444)
(declare-const null-String String)
(declare-const var399 var1444) ; Statement: r0 := @this: freemarker.core.TextBlock 
(assert (not (= var399 null-var1444)))
(declare-const var1154 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1154 null-String)))
(assert true)
(define-const var998 (Array Int Int) (toCharArray/415275702 var1154)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var399!1 var1444)
(assert (not (= var399!1 null-var1444)))
(assert (= (text/-1810769671 var399!1) var998)) ; Statement: r0.<freemarker.core.TextBlock: char[] text> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), text/-1810769671=([freemarker.core.TextBlock], char[])}
; {var1444=freemarker.core.TextBlock, var399=r0, var1154=r1, var1825=null_type, var998=$r2}
; {freemarker.core.TextBlock=var1444, r0=var399, r1=var1154, null_type=var1825, $r2=var998}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: freemarker.core.TextBlock;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	r0.<freemarker.core.TextBlock: char[] text> = $r2;	return
;block_num 1