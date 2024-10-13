(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sawReturn/1145894928 (var1121) Bool)
(declare-fun line/1145894928 (var1121) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun handleLine/-1367614105 (var1121 String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var1121 var1121)
(declare-const null-Bool Bool)
(declare-const var1468 var1121) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var1468 null-var1121)))
(declare-const var1359 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1359 null-Bool)))
(define-const var963 Bool (sawReturn/1145894928 var1468)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var963 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z1 == 0 goto $r1 = "" 
(assert (= (ite var1359 1 0) 0)) ; Cond: z1 == 0 
(define-const var2200 String "") ; Statement: $r1 = "" 
(assert true) ; Non Conditional
(define-const var2546 String (line/1145894928 var1468)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> 
(assert true)
(define-const var2035 String (toString/-2075883882 var2546)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (handleLine/-1367614105 var1468 var2035 var2200)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1) 

(declare-const var1468!1 var1121)
(declare-const var2035!1 String)
(declare-const var2200!1 String)
(define-const var2425 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2425)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2425!1 String)
(assert (= var2425!1 ""))
(declare-const var1468!2 var1121)
(assert (not (= var1468!2 null-var1121)))
(assert (= (line/1145894928 var1468!2) var2425!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4 
(declare-const var1468!3 var1121)
(assert (not (= var1468!3 null-var1121)))
(assert (= (sawReturn/1145894928 var1468!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0 
 ; Statement: return z1 
(check-sat)
(get-model)
(get-unsat-core)
; {sawReturn/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], boolean), line/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), handleLine/-1367614105=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var1121=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var1468=r0, var1359=z1, var963=$z0, var2200=$r1, var2546=$r2, var2035=$r3, var2425=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var1121, r0=var1468, z1=var1359, $z0=var963, $r1=var2200, $r2=var2546, $r3=var2035, $r4=var2425}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	z1 := @parameter0: boolean;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn>;	if $z0 == 0 goto (branch);	if z1 == 0 goto $r1 = "";	$r1 = "";	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0;	return z1
;block_num 4