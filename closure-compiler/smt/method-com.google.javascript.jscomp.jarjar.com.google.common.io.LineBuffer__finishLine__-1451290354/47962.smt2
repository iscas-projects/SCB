(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sawReturn/1145894928 (var2195) Bool)
(declare-fun line/1145894928 (var2195) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun handleLine/-1367614105 (var2195 String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var2195 var2195)
(declare-const null-Bool Bool)
(declare-const var2396 var2195) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var2396 null-var2195)))
(declare-const var501 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var501 null-Bool)))
(define-const var3075 Bool (sawReturn/1145894928 var2396)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3075 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if z1 == 0 goto $r1 = "\r" 
(assert (= (ite var501 1 0) 0)) ; Cond: z1 == 0 
(define-const var275 String "\r") ; Statement: $r1 = "\r" 
 ; Statement: goto [?= $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>] 
(assert true) ; Non Conditional
(define-const var389 String (line/1145894928 var2396)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> 
(assert true)
(define-const var1257 String (toString/-2075883882 var389)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (handleLine/-1367614105 var2396 var1257 var275)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1) 

(declare-const var2396!1 var2195)
(declare-const var1257!1 String)
(declare-const var275!1 String)
(define-const var3501 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3501)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3501!1 String)
(assert (= var3501!1 ""))
(declare-const var2396!2 var2195)
(assert (not (= var2396!2 null-var2195)))
(assert (= (line/1145894928 var2396!2) var3501!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4 
(declare-const var2396!3 var2195)
(assert (not (= var2396!3 null-var2195)))
(assert (= (sawReturn/1145894928 var2396!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0 
 ; Statement: return z1 
(check-sat)
(get-model)
(get-unsat-core)
; {sawReturn/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], boolean), line/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), handleLine/-1367614105=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var2195=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var2396=r0, var501=z1, var3075=$z0, var275=$r1, var389=$r2, var1257=$r3, var3501=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var2195, r0=var2396, z1=var501, $z0=var3075, $r1=var275, $r2=var389, $r3=var1257, $r4=var3501}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	z1 := @parameter0: boolean;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn>;	if $z0 == 0 goto (branch);	if z1 == 0 goto $r1 = "\r";	$r1 = "\r";	goto [?= $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>];	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: void handleLine(java.lang.String,java.lang.String)>($r3, $r1);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: java.lang.StringBuilder line> = $r4;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> = 0;	return z1
;block_num 4