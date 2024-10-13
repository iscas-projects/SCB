(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun strFlags/-803315618 (var345) String)
(declare-const null-var345 var345)
(declare-const null-String String)
(declare-const var2008 var345) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken 
(assert (not (= var2008 null-var345)))
(define-const var2522 String (strFlags/-803315618 var2008)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: java.lang.StringBuilder strFlags> 
 ; Statement: if $r1 == null goto $r3 = "" 
(assert (= var2522 null-String)) ; Cond: $r1 == null 
(define-const var2757 String "") ; Statement: $r3 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {strFlags/-803315618=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], java.lang.StringBuilder)}
; {var345=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var2008=r0, var2522=$r1, var2757=$r3}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var345, r0=var2008, $r1=var2522, $r3=var2757}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: java.lang.StringBuilder strFlags>;	if $r1 == null goto $r3 = "";	$r3 = "";	return $r3
;block_num 3