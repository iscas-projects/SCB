(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3257 0)
(declare-sort var1817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indent/1923421650 (var3257) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun var1817-init () var1817)
(declare-fun <init>/875830710 (var1817 String) void)
(declare-const null-var3257 var3257)
(declare-const var993 var3257) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator 
(assert (not (= var993 null-var3257)))
(define-const var1933 String (indent/1923421650 var993)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> 
(assert true)
(define-const var3063 Int (length/-171891354 var1933)) ; Statement: i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> 
(assert (not (not (= var3063 0)))) ; Negate: Cond: i0 != 0  
(define-const var3030 var1817 var1817-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3030 " Outdent() without matching Indent().")) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(" Outdent() without matching Indent().") 

(declare-const var3030!1 var1817)
(declare-const var1104 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indent/1923421650=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), var1817-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3257=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator, var993=r0, var1933=$r1, var3063=i0, var1817=java.lang.IllegalArgumentException, var3030=$r3, var1104=" Outdent() without matching Indent()."}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator=var3257, r0=var993, $r1=var1933, i0=var3063, java.lang.IllegalArgumentException=var1817, $r3=var3030, " Outdent() without matching Indent()."=var1104}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent>;	i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if i0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent>;	$r3 = new java.lang.IllegalArgumentException;	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(" Outdent() without matching Indent().");	throw $r3
;block_num 2