(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var18 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBuffer/1229857244 (var18) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var18 var18)
(declare-const var2668 var18) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens 
(assert (not (= var2668 null-var18)))
(define-const var28 String (readBuffer/1229857244 var2668)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> 
(assert true)
(define-const var1073 Bool (isEmpty/-1285796103 var28)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer> 
(assert (not (= (ite var1073 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1032 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {readBuffer/1229857244=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), cast-from-Int-to-Int=([int], int)}
; {var18=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens, var2668=r0, var28=$r1, var1073=$z0, var1032=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens=var18, r0=var2668, $r1=var28, $z0=var1073, $i2=var1032}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.ReplaceTokens: java.lang.String readBuffer>;	$i2 = (int) -1;	return $i2
;block_num 2