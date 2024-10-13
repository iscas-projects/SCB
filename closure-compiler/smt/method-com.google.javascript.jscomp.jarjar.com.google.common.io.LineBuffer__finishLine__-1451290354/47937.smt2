(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sawReturn/1145894928 (var570) Bool)
(declare-fun line/1145894928 (var570) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun handleLine/-1367614105 (var570 String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var570 var570)
(declare-const null-Bool Bool)
(declare-const var2279 var570) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var2279 null-var570)))
(declare-const var3668 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3668 null-Bool)))
(define-const var2440 Bool (sawReturn/1145894928 var2279)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2440 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if z1 == 0 goto $r1 = "\r" 
(assert (not (= (ite var3668 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var3215 String "\r\n") ; Statement: $r1 = "\r\n" 
 ; Statement: goto [?= $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>] 
(assert true) ; Non Conditional
(define-const var3403 String (line/1145894928 var2279)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> 
(assert true)
(define-const var2382 String (toString/-2075883882 var3403)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (handleLine/-1367614105 var2279 var2382 var3215)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1) 

(declare-const var2279!1 var570)
(declare-const var2382!1 String)
(declare-const var3215!1 String)
(define-const var204 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var204)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var204!1 String)
(assert (= var204!1 ""))
(declare-const var2279!2 var570)
(assert (not (= var2279!2 null-var570)))
(assert (= (line/1145894928 var2279!2) var204!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4 
(declare-const var2279!3 var570)
(assert (not (= var2279!3 null-var570)))
(assert (= (sawReturn/1145894928 var2279!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0 
 ; Statement: return z1 
(check-sat)
(get-model)
(get-unsat-core)
; {sawReturn/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], boolean), line/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), handleLine/-1367614105=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var570=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var2279=r0, var3668=z1, var2440=$z0, var3215=$r1, var3403=$r2, var2382=$r3, var204=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var570, r0=var2279, z1=var3668, $z0=var2440, $r1=var3215, $r2=var3403, $r3=var2382, $r4=var204}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	z1 := @parameter0: boolean;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn>;	if $z0 == 0 goto (branch);	if z1 == 0 goto $r1 = "\r";	$r1 = "\r\n";	goto [?= $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>];	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0;	return z1
;block_num 4