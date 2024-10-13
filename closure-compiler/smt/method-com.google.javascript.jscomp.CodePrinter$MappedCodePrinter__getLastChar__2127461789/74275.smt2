(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/-862103770 (var1798) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var1798 var1798)
(declare-const var2190 var1798) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var2190 null-var1798)))
(define-const var2776 String (code/-862103770 var2190)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> 
(assert true)
(define-const var1874 Int (length/-171891354 var2776)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $c3 = 0 
(assert (<= var1874 0)) ; Cond: $i0 <= 0 
(define-const var1144 Int 0) ; Statement: $c3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $c3 
(check-sat)
(get-model)
(get-unsat-core)
; {code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var1798=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var2190=r0, var2776=$r1, var1874=$i0, var1144=$c3}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1798, r0=var2190, $r1=var2776, $i0=var1874, $c3=var1144}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	$r1 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $c3 = 0;	$c3 = 0;	return $c3
;block_num 3