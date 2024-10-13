(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1235 0)
(declare-sort var2395 0)
(declare-sort var2634 0)
(declare-sort var923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var923_getSourceName/-747323770 (var2395) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var1235 var1235)
(declare-const null-var2395 var2395)
(declare-const null-var2634 var2634)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3566 var1235) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var3566 null-var1235)))
(declare-const var3629 var2395) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3629 null-var2395)))
(declare-const var3848 var2634) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.DiagnosticType 
(assert (not (= var3848 null-var2634)))
(declare-const var1937 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var1937 null-__Array__Int__String__)))
(define-const var2797 String (var923_getSourceName/-747323770 var3629)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var1870 Bool (endsWith/985337093 var2797 "_test.js")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("_test.js") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1870 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var923_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1235=com.google.javascript.jscomp.AbstractCompiler, var3566=r2, var2395=com.google.javascript.rhino.Node, var3629=r0, var2634=com.google.javascript.jscomp.DiagnosticType, var3848=r3, var1937=r4, var923=com.google.javascript.jscomp.NodeUtil, var2797=r1, var1870=$z0}
; {com.google.javascript.jscomp.AbstractCompiler=var1235, r2=var3566, com.google.javascript.rhino.Node=var2395, r0=var3629, com.google.javascript.jscomp.DiagnosticType=var2634, r3=var3848, r4=var1937, com.google.javascript.jscomp.NodeUtil=var923, r1=var2797, $z0=var1870}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r0 := @parameter1: com.google.javascript.rhino.Node;	r3 := @parameter2: com.google.javascript.jscomp.DiagnosticType;	r4 := @parameter3: java.lang.String[];	r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("_test.js");	if $z0 != 0 goto return;	return
;block_num 2