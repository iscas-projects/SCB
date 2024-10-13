(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-fun processLine/-845345469 (var1290 String) void)
(declare-const null-var1290 var1290)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2342 var1290) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStream 
(assert (not (= var2342 null-var1290)))
(declare-const var2321 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var2321 null-__Array__Int__Int__)))
(define-const var119 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/76075152 var119 var2321)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(byte[])>(r2) 

(declare-const var119!1 String)
(declare-const var2321!1 (Array Int Int))
(assert true)
;(assert (processLine/-845345469 var2342 var119!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStream: void processLine(java.lang.String)>($r1) 

(declare-const var2342!1 var1290)
(declare-const var119!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/76075152=([java.lang.String, byte[]], void), processLine/-845345469=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStream, java.lang.String], void)}
; {var1290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStream, var2342=r0, var2321=r2, var119=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStream=var1290, r0=var2342, r2=var2321, $r1=var119}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStream;	r2 := @parameter0: byte[];	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(byte[])>(r2);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LineOrientedOutputStream: void processLine(java.lang.String)>($r1);	return
;block_num 1