(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun strFlags/-803315618 (var2758) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2758 var2758)
(declare-const null-String String)
(declare-const var2625 var2758) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken 
(assert (not (= var2625 null-var2758)))
(define-const var1538 String (strFlags/-803315618 var2625)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: java.lang.StringBuilder strFlags> 
 ; Statement: if $r1 == null goto $r3 = "" 
(assert (not (= var1538 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1099 String (strFlags/-803315618 var2625)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: java.lang.StringBuilder strFlags> 
(assert true)
(define-const var1440 String (toString/-2075883882 var1099)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {strFlags/-803315618=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2758=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var2625=r0, var1538=$r1, var1099=$r2, var1440=$r3}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var2758, r0=var2625, $r1=var1538, $r2=var1099, $r3=var1440}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: java.lang.StringBuilder strFlags>;	if $r1 == null goto $r3 = "";	$r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: java.lang.StringBuilder strFlags>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r3];	return $r3
;block_num 3