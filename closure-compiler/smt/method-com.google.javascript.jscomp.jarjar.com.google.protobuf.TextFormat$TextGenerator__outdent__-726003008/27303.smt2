(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indent/1923421650 (var3677) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-var3677 var3677)
(declare-const var1775 var3677) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator 
(assert (not (= var1775 null-var3677)))
(define-const var1991 String (indent/1923421650 var1775)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> 
(assert true)
(define-const var2664 Int (length/-171891354 var1991)) ; Statement: i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> 
(assert (not (= var2664 0))) ; Cond: i0 != 0 
(define-const var1685 String (indent/1923421650 var1775)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> 
(define-const var102 Int (- var2664 2)) ; Statement: $i1 = i0 - 2 
(assert true)
;(assert (setLength/1276735992 var1685 var102)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>($i1) 

(declare-const var1685!1 String)
(declare-const var102!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indent/1923421650=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var3677=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator, var1775=r0, var1991=$r1, var2664=i0, var1685=$r2, var102=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator=var3677, r0=var1775, $r1=var1991, i0=var2664, $r2=var1685, $i1=var102}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent>;	i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if i0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent>;	$i1 = i0 - 2;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>($i1);	return
;block_num 2