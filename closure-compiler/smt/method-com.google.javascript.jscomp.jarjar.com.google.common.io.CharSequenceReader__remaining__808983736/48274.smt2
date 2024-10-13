(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3899 0)
(declare-sort var2415 0)
(declare-sort var3496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seq/455216022 (var3899) String)
(declare-fun var2415_requireNonNull/-961817614 (var3496) var3496)
(declare-fun cast-from-String-to-var3496 (String) var3496)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun pos/455216022 (var3899) Int)
(declare-const null-var3899 var3899)
(declare-const var2243 var3899) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader 
(assert (not (= var2243 null-var3899)))
(define-const var1114 String (seq/455216022 var2243)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq> 
;(assert (var2415_requireNonNull/-961817614 (cast-from-String-to-var3496 var1114))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1) 

(declare-const var1114!1 String)
(define-const var668 String (seq/455216022 var2243)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq> 
(define-const var2618 Int (String_length/-667254855 var668)) ; Statement: $i1 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
(define-const var80 Int (pos/455216022 var2243)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: int pos> 
(define-const var3403 Int (- var2618 var80)) ; Statement: $i2 = $i1 - $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {seq/455216022=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], java.lang.CharSequence), var2415_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var3496=([java.lang.CharSequence], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), pos/455216022=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], int)}
; {var3899=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader, var2243=r0, var1114=$r1, var2415=java.util.Objects, var3496=java.lang.Object, var668=$r2, var2618=$i1, var80=$i0, var3403=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader=var3899, r0=var2243, $r1=var1114, java.util.Objects=var2415, java.lang.Object=var3496, $r2=var668, $i1=var2618, $i0=var80, $i2=var3403}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq>;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1);	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq>;	$i1 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: int pos>;	$i2 = $i1 - $i0;	return $i2
;block_num 1