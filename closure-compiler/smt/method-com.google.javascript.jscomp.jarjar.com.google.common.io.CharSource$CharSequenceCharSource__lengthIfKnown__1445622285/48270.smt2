(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var147 0)
(declare-sort var1791 0)
(declare-sort var3033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seq/-342019969 (var147) String)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var1791_of/-112273841 (var3033) var1791)
(declare-fun cast-from-Int-to-var3033 (Int) var3033)
(declare-const null-var147 var147)
(declare-const var921 var147) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource 
(assert (not (= var921 null-var147)))
(define-const var1244 String (seq/-342019969 var921)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq> 
(define-const var1652 Int (String_length/-667254855 var1244)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var1396 Int (cast-from-Int-to-Int var1652)) ; Statement: $l1 = (long) $i0 
(define-const var2688 Int (Int_valueOf/-1102777585 var1396)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1) 
(define-const var95 var1791 (var1791_of/-112273841 (cast-from-Int-to-var3033 var2688))) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional of(java.lang.Object)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {seq/-342019969=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], long), Int_valueOf/-1102777585=([long], java.lang.Long), var1791_of/-112273841=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), cast-from-Int-to-var3033=([java.lang.Long], java.lang.Object)}
; {var147=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource, var921=r0, var1244=$r1, var1652=$i0, var1396=$l1, var2688=$r2, var1791=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var3033=java.lang.Object, var95=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource=var147, r0=var921, $r1=var1244, $i0=var1652, $l1=var1396, $r2=var2688, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var1791, java.lang.Object=var3033, $r3=var95}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$l1 = (long) $i0;	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional of(java.lang.Object)>($r2);	return $r3
;block_num 1