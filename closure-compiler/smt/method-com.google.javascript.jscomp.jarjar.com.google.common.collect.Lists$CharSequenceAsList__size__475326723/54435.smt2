(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sequence/-890202970 (var882) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var882 var882)
(declare-const var145 var882) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList 
(assert (not (= var145 null-var882)))
(define-const var2152 String (sequence/-890202970 var145)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList: java.lang.CharSequence sequence> 
(define-const var1889 Int (String_length/-667254855 var2152)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {sequence/-890202970=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var882=com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList, var145=r0, var2152=$r1, var1889=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList=var882, r0=var145, $r1=var2152, $i0=var1889}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Lists$CharSequenceAsList: java.lang.CharSequence sequence>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	return $i0
;block_num 1