(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sawReturn/1145894928 (var3168) Bool)
(declare-fun line/1145894928 (var3168) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun handleLine/-1367614105 (var3168 String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var3168 var3168)
(declare-const null-Bool Bool)
(declare-const var2755 var3168) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var2755 null-var3168)))
(declare-const var3893 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3893 null-Bool)))
(define-const var2098 Bool (sawReturn/1145894928 var2755)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2098 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z1 == 0 goto $r1 = "" 
(assert (not (= (ite var3893 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var517 String "\n") ; Statement: $r1 = "\n" 
 ; Statement: goto [?= $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>] 
(assert true) ; Non Conditional
(define-const var3178 String (line/1145894928 var2755)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> 
(assert true)
(define-const var2486 String (toString/-2075883882 var3178)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (handleLine/-1367614105 var2755 var2486 var517)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1) 

(declare-const var2755!1 var3168)
(declare-const var2486!1 String)
(declare-const var517!1 String)
(define-const var434 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var434)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var434!1 String)
(assert (= var434!1 ""))
(declare-const var2755!2 var3168)
(assert (not (= var2755!2 null-var3168)))
(assert (= (line/1145894928 var2755!2) var434!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4 
(declare-const var2755!3 var3168)
(assert (not (= var2755!3 null-var3168)))
(assert (= (sawReturn/1145894928 var2755!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0 
 ; Statement: return z1 
(check-sat)
(get-model)
(get-unsat-core)
; {sawReturn/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], boolean), line/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), handleLine/-1367614105=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var3168=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var2755=r0, var3893=z1, var2098=$z0, var517=$r1, var3178=$r2, var2486=$r3, var434=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var3168, r0=var2755, z1=var3893, $z0=var2098, $r1=var517, $r2=var3178, $r3=var2486, $r4=var434}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	z1 := @parameter0: boolean;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn>;	if $z0 == 0 goto (branch);	if z1 == 0 goto $r1 = "";	$r1 = "\n";	goto [?= $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>];	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0;	return z1
;block_num 4