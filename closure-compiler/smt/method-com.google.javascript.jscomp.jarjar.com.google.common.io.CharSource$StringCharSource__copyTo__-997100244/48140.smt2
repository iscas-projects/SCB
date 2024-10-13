(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2182 0)
(declare-sort var542 0)
(declare-sort var2929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seq/-342019969 (var2929) String)
(declare-fun cast-from-var2182-to-var2929 (var2182) var2929)
(declare-fun var542_append/1177541664 (var542 String) var542)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2182 var2182)
(declare-const null-var542 var542)
(declare-const var3884 var2182) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource 
(assert (not (= var3884 null-var2182)))
(declare-const var3159 var542) ; Statement: r0 := @parameter0: java.lang.Appendable 
(assert (not (= var3159 null-var542)))
(define-const var1444 String (seq/-342019969 (cast-from-var2182-to-var2929 var3884))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource: java.lang.CharSequence seq> 
;(assert (var542_append/1177541664 var3159 var1444)) ; Statement: interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>($r2) 

(declare-const var3159!1 var542)
(declare-const var1444!1 String)
(define-const var3212 String (seq/-342019969 (cast-from-var2182-to-var2929 var3884))) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource: java.lang.CharSequence seq> 
(define-const var1554 Int (String_length/-667254855 var3212)) ; Statement: $i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>() 
(define-const var3383 Int (cast-from-Int-to-Int var1554)) ; Statement: $l1 = (long) $i0 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {seq/-342019969=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource], java.lang.CharSequence), cast-from-var2182-to-var2929=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource], com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource), var542_append/1177541664=([java.lang.Appendable, java.lang.CharSequence], java.lang.Appendable), String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], long)}
; {var2182=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource, var3884=r1, var542=java.lang.Appendable, var3159=r0, var2929=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource, var1444=$r2, var3212=$r3, var1554=$i0, var3383=$l1}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource=var2182, r1=var3884, java.lang.Appendable=var542, r0=var3159, com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource=var2929, $r2=var1444, $r3=var3212, $i0=var1554, $l1=var3383}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource;	r0 := @parameter0: java.lang.Appendable;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource: java.lang.CharSequence seq>;	interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>($r2);	$r3 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$StringCharSource: java.lang.CharSequence seq>;	$i0 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>();	$l1 = (long) $i0;	return $l1
;block_num 1