(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1390 0)
(declare-sort var1184 0)
(declare-sort var2996 0)
(declare-sort var1909 0)
(declare-sort var2506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun transpiler/533290978 (var1390) var2996)
(declare-fun var2996_runtime/623664269 (var2996) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun mode/533290978 (var1390) var1909)
(declare-fun appendTraditional/1881268115 (var1909 String var1184 String) void)
(declare-const null-var1390 var1390)
(declare-const null-var1184 var1184)
(declare-const var2996-NULL var2996)
(declare-const null-NullType var2506)
(declare-const null-String String)
(declare-const var1088 var1390) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.ClosureBundler 
(assert (not (= var1088 null-var1390)))
(declare-const var776 var1184) ; Statement: r5 := @parameter0: java.lang.Appendable 
(assert (not (= var776 null-var1184)))
(define-const var120 var2996 (transpiler/533290978 var1088)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.transpile.Transpiler transpiler> 
(define-const var1021 String (var2996_runtime/623664269 var120)) ; Statement: r2 = interfaceinvoke $r1.<com.google.javascript.jscomp.transpile.Transpiler: java.lang.String runtime()>() 
(assert true)
(define-const var3797 Bool (isEmpty/-1285796103 var1021)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.transpile.Transpiler transpiler> 
(assert (not (= (ite var3797 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2766 var2996 (transpiler/533290978 var1088)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.transpile.Transpiler transpiler> 
(define-const var2493 var2996 var2996-NULL) ; Statement: $r3 = <com.google.javascript.jscomp.transpile.Transpiler: com.google.javascript.jscomp.transpile.Transpiler NULL> 
 ; Statement: if $r4 != $r3 goto $r6 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert (not (= var2766 var2493))) ; Cond: $r4 != $r3 
(define-const var383 var1909 (mode/533290978 var1088)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert true)
;(assert (appendTraditional/1881268115 var383 "this.CLOSURE_EVAL_PREFILTER = function(s) { return s; };" var776 null-String)) ; Statement: virtualinvoke $r6.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("this.CLOSURE_EVAL_PREFILTER = function(s) { return s; };", r5, null) 

(declare-const var383!1 var1909)
(declare-const var1545 String)
(declare-const var776!1 var1184)
(declare-const var1254 var2506)
(define-const var223 var1909 (mode/533290978 var1088)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert true)
;(assert (appendTraditional/1881268115 var223 "(function(thisValue){" var776!1 null-String)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("(function(thisValue){", r5, null) 

(declare-const var223!1 var1909)
(declare-const var1159 String)
(declare-const var776!2 var1184)
(declare-const var1254!1 var2506)
(define-const var1564 var1909 (mode/533290978 var1088)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert true)
;(assert (appendTraditional/1881268115 var1564 "var isChrome87 = false; try {isChrome87 =  eval(trustedTypes.emptyScript) !== trustedTypes.emptyScript } catch (e) {} if (typeof trustedTypes !== \u0027undefined\u0027 && trustedTypes.createPolicy &&isChrome87 ) {" var776!2 null-String)) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("var isChrome87 = false; try {isChrome87 =  eval(trustedTypes.emptyScript) !== trustedTypes.emptyScript } catch (e) {} if (typeof trustedTypes !== \'undefined\' && trustedTypes.createPolicy &&isChrome87 ) {", r5, null) 

(declare-const var1564!1 var1909)
(declare-const var3687 String)
(declare-const var776!3 var1184)
(declare-const var1254!2 var2506)
(define-const var1613 var1909 (mode/533290978 var1088)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert true)
;(assert (appendTraditional/1881268115 var1613 "  var policy = trustedTypes.createPolicy(\u0027goog#devserver\u0027,{ createScript: function(s){ return s; }});" var776!3 null-String)) ; Statement: virtualinvoke $r9.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("  var policy = trustedTypes.createPolicy(\'goog#devserver\',{ createScript: function(s){ return s; }});", r5, null) 

(declare-const var1613!1 var1909)
(declare-const var1260 String)
(declare-const var776!4 var1184)
(declare-const var1254!3 var2506)
(define-const var1895 var1909 (mode/533290978 var1088)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert true)
;(assert (appendTraditional/1881268115 var1895 "  thisValue.CLOSURE_EVAL_PREFILTER = policy.createScript.bind(policy);" var776!4 null-String)) ; Statement: virtualinvoke $r10.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("  thisValue.CLOSURE_EVAL_PREFILTER = policy.createScript.bind(policy);", r5, null) 

(declare-const var1895!1 var1909)
(declare-const var2098 String)
(declare-const var776!5 var1184)
(declare-const var1254!4 var2506)
(define-const var58 var1909 (mode/533290978 var1088)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert true)
;(assert (appendTraditional/1881268115 var58 "}" var776!5 null-String)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("}", r5, null) 

(declare-const var58!1 var1909)
(declare-const var986 String)
(declare-const var776!6 var1184)
(declare-const var1254!5 var2506)
(define-const var2757 var1909 (mode/533290978 var1088)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode> 
(assert true)
;(assert (appendTraditional/1881268115 var2757 "})(this);" var776!6 null-String)) ; Statement: virtualinvoke $r12.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("})(this);", r5, null) 

(declare-const var2757!1 var1909)
(declare-const var984 String)
(declare-const var776!7 var1184)
(declare-const var1254!6 var2506)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {transpiler/533290978=([com.google.javascript.jscomp.deps.ClosureBundler], com.google.javascript.jscomp.transpile.Transpiler), var2996_runtime/623664269=([com.google.javascript.jscomp.transpile.Transpiler], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), mode/533290978=([com.google.javascript.jscomp.deps.ClosureBundler], com.google.javascript.jscomp.deps.ClosureBundler$EvalMode), appendTraditional/1881268115=([com.google.javascript.jscomp.deps.ClosureBundler$EvalMode, java.lang.String, java.lang.Appendable, java.lang.String], void)}
; {var1390=com.google.javascript.jscomp.deps.ClosureBundler, var1088=r0, var1184=java.lang.Appendable, var776=r5, var2996=com.google.javascript.jscomp.transpile.Transpiler, var120=$r1, var1021=r2, var3797=$z0, var2766=$r4, var2493=$r3, var1909=com.google.javascript.jscomp.deps.ClosureBundler$EvalMode, var383=$r6, var2506=null_type, var1545="this.CLOSURE_EVAL_PREFILTER = function(s) { return s; };", var1254=null, var223=$r7, var1159="(function(thisValue){", var1564=$r8, var3687="var isChrome87 = false; try {isChrome87 =  eval(trustedTypes.emptyScript) !== trustedTypes.emptyScript } catch (e) {} if (typeof trustedTypes !== \'undefined\' && trustedTypes.createPolicy &&isChrome87 ) {", var1613=$r9, var1260="  var policy = trustedTypes.createPolicy(\'goog#devserver\',{ createScript: function(s){ return s; }});", var1895=$r10, var2098="  thisValue.CLOSURE_EVAL_PREFILTER = policy.createScript.bind(policy);", var58=$r11, var986="}", var2757=$r12, var984="})(this);"}
; {com.google.javascript.jscomp.deps.ClosureBundler=var1390, r0=var1088, java.lang.Appendable=var1184, r5=var776, com.google.javascript.jscomp.transpile.Transpiler=var2996, $r1=var120, r2=var1021, $z0=var3797, $r4=var2766, $r3=var2493, com.google.javascript.jscomp.deps.ClosureBundler$EvalMode=var1909, $r6=var383, null_type=var2506, "this.CLOSURE_EVAL_PREFILTER = function(s) { return s; };"=var1545, null=var1254, $r7=var223, "(function(thisValue){"=var1159, $r8=var1564, "var isChrome87 = false; try {isChrome87 =  eval(trustedTypes.emptyScript) !== trustedTypes.emptyScript } catch (e) {} if (typeof trustedTypes !== \'undefined\' && trustedTypes.createPolicy &&isChrome87 ) {"=var3687, $r9=var1613, "  var policy = trustedTypes.createPolicy(\'goog#devserver\',{ createScript: function(s){ return s; }});"=var1260, $r10=var1895, "  thisValue.CLOSURE_EVAL_PREFILTER = policy.createScript.bind(policy);"=var2098, $r11=var58, "}"=var986, $r12=var2757, "})(this);"=var984}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.deps.ClosureBundler;	r5 := @parameter0: java.lang.Appendable;	$r1 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.transpile.Transpiler transpiler>;	r2 = interfaceinvoke $r1.<com.google.javascript.jscomp.transpile.Transpiler: java.lang.String runtime()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r4 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.transpile.Transpiler transpiler>;	$r4 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.transpile.Transpiler transpiler>;	$r3 = <com.google.javascript.jscomp.transpile.Transpiler: com.google.javascript.jscomp.transpile.Transpiler NULL>;	if $r4 != $r3 goto $r6 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	$r6 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	virtualinvoke $r6.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("this.CLOSURE_EVAL_PREFILTER = function(s) { return s; };", r5, null);	$r7 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	virtualinvoke $r7.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("(function(thisValue){", r5, null);	$r8 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	virtualinvoke $r8.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("var isChrome87 = false; try {isChrome87 =  eval(trustedTypes.emptyScript) !== trustedTypes.emptyScript } catch (e) {} if (typeof trustedTypes !== \'undefined\' && trustedTypes.createPolicy &&isChrome87 ) {", r5, null);	$r9 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	virtualinvoke $r9.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("  var policy = trustedTypes.createPolicy(\'goog#devserver\',{ createScript: function(s){ return s; }});", r5, null);	$r10 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	virtualinvoke $r10.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("  thisValue.CLOSURE_EVAL_PREFILTER = policy.createScript.bind(policy);", r5, null);	$r11 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	virtualinvoke $r11.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("}", r5, null);	$r12 = r0.<com.google.javascript.jscomp.deps.ClosureBundler: com.google.javascript.jscomp.deps.ClosureBundler$EvalMode mode>;	virtualinvoke $r12.<com.google.javascript.jscomp.deps.ClosureBundler$EvalMode: void appendTraditional(java.lang.String,java.lang.Appendable,java.lang.String)>("})(this);", r5, null);	return
;block_num 3