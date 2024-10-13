(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sawReturn/1145894928 (var166) Bool)
(declare-fun line/1145894928 (var166) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var166 var166)
(declare-const var3459 var166) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var3459 null-var166)))
(define-const var2709 Bool (sawReturn/1145894928 var3459)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean finishLine(boolean)>(0) 
(assert (not (not (= (ite var2709 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2912 String (line/1145894928 var3459)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> 
(assert true)
(define-const var163 Int (length/-171891354 var2912)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var163 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sawReturn/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], boolean), line/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var166=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var3459=r0, var2709=$z0, var2912=$r1, var163=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var166, r0=var3459, $z0=var2709, $r1=var2912, $i0=var163}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn>;	if $z0 != 0 goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean finishLine(boolean)>(0);	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto return;	return
;block_num 3