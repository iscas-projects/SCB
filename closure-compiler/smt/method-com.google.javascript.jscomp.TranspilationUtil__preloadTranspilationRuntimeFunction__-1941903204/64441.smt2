(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3488 0)
(declare-sort var1051 0)
(declare-sort var548 0)
(declare-sort var1042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var548) String)
(declare-fun ensureLibraryInjected/2050133044 (var3488 String Bool) var1042)
(declare-const null-var3488 var3488)
(declare-const null-String String)
(declare-const var548-ROOT var548)
(declare-const var2337 var3488) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var2337 null-var3488)))
(declare-const var2675 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2675 null-String)))
(define-const var2198 var548 var548-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2891 String (toLowerCase/1946809429 var2675 var2198)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var2395 String (str.++ "es6/util/\u0001" var2891)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("es6/util/\u0001") 
(assert true)
;(assert (ensureLibraryInjected/2050133044 var2337 var2395 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node ensureLibraryInjected(java.lang.String,boolean)>($r4, 0) 

(declare-const var2337!1 var3488)
(declare-const var2395!1 String)
(declare-const var1298 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), ensureLibraryInjected/2050133044=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String, boolean], com.google.javascript.rhino.Node)}
; {var3488=com.google.javascript.jscomp.AbstractCompiler, var2337=r0, var2675=r1, var1051=null_type, var548=java.util.Locale, var2198=$r2, var2891=$r3, var2395=$r4, var1298=0, var1042=com.google.javascript.rhino.Node}
; {com.google.javascript.jscomp.AbstractCompiler=var3488, r0=var2337, r1=var2675, null_type=var1051, java.util.Locale=var548, $r2=var2198, $r3=var2891, $r4=var2395, 0=var1298, com.google.javascript.rhino.Node=var1042}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r1 := @parameter1: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("es6/util/\u0001");	virtualinvoke r0.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node ensureLibraryInjected(java.lang.String,boolean)>($r4, 0);	return
;block_num 1