(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1106 0)
(declare-sort var2530 0)
(declare-sort var3389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1503243063 (var1106) void)
(declare-fun seq/455216022 (var1106) String)
(declare-fun var2530_requireNonNull/-961817614 (var3389) var3389)
(declare-fun cast-from-String-to-var3389 (String) var3389)
(declare-fun hasRemaining/573199081 (var1106) Bool)
(declare-const null-var1106 var1106)
(declare-const var3641 var1106) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader 
(assert (not (= var3641 null-var1106)))
(assert true)
;(assert (checkOpen/1503243063 var3641)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: void checkOpen()>() 

(declare-const var3641!1 var1106)
(define-const var1967 String (seq/455216022 var3641!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq> 
;(assert (var2530_requireNonNull/-961817614 (cast-from-String-to-var3389 var1967))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1) 

(declare-const var1967!1 String)
(assert true)
(define-const var1853 Bool (hasRemaining/573199081 var3641!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: boolean hasRemaining()>() 
 ; Statement: if $z0 == 0 goto $s2 = -1 
(assert (= (ite var1853 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1725 Int (- 1)) ; Statement: $s2 = -1 
(assert true) ; Non Conditional
 ; Statement: return $s2 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1503243063=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], void), seq/455216022=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], java.lang.CharSequence), var2530_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var3389=([java.lang.CharSequence], java.lang.Object), hasRemaining/573199081=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], boolean)}
; {var1106=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader, var3641=r0, var1967=$r1, var2530=java.util.Objects, var3389=java.lang.Object, var1853=$z0, var1725=$s2}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader=var1106, r0=var3641, $r1=var1967, java.util.Objects=var2530, java.lang.Object=var3389, $z0=var1853, $s2=var1725}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: void checkOpen()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq>;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1);	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: boolean hasRemaining()>();	if $z0 == 0 goto $s2 = -1;	$s2 = -1;	return $s2
;block_num 3