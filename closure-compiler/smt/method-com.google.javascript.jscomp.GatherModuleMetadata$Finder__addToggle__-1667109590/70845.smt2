(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3186 0)
(declare-sort var2971 0)
(declare-sort var3295 0)
(declare-sort var3368 0)
(declare-sort var2389 0)
(declare-sort var1518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun report/-1308495688 (var2971 var3295 var2389 (Array Int String)) void)
(declare-const null-var3186 var3186)
(declare-const null-var2971 var2971)
(declare-const null-var3295 var3295)
(declare-const null-String String)
(declare-const var1518-INVALID_TOGGLE_USAGE var2389)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2633 var3186) ; Statement: r7 := @this: com.google.javascript.jscomp.GatherModuleMetadata$Finder 
(assert (not (= var2633 null-var3186)))
(declare-const var318 var2971) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var318 null-var2971)))
(declare-const var1142 var3295) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1142 null-var3295)))
(declare-const var3037 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3037 null-String)))
(assert true)
(define-const var2573 Bool (startsWith/-1785782452 var3037 "TOGGLE_")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("TOGGLE_") 
 ; Statement: if $z0 == 0 goto $r4 = <com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.DiagnosticType INVALID_TOGGLE_USAGE> 
(assert (= (ite var2573 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2405 var2389 var1518-INVALID_TOGGLE_USAGE) ; Statement: $r4 = <com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.DiagnosticType INVALID_TOGGLE_USAGE> 
(define-const var2563 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.String)[1] 
(declare-const var2563!1 (Array Int String))
(assert (not (= var2563!1 null-__Array__Int__String__)))
(assert (= (select var2563!1 0) "all toggle names must start with `TOGGLE_`")) ; Statement: $r3[0] = "all toggle names must start with `TOGGLE_`" 
(assert true)
;(assert (report/-1308495688 var318 var1142 var2405 var2563!1)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: void report(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r2, $r4, $r3) 

(declare-const var318!1 var2971)
(declare-const var1142!1 var3295)
(declare-const var2405!1 var2389)
(declare-const var2563!2 (Array Int String))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), arr-String-init=([], java.lang.String[]), report/-1308495688=([com.google.javascript.jscomp.NodeTraversal, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], void)}
; {var3186=com.google.javascript.jscomp.GatherModuleMetadata$Finder, var2633=r7, var2971=com.google.javascript.jscomp.NodeTraversal, var318=r1, var3295=com.google.javascript.rhino.Node, var1142=r2, var3037=r0, var3368=null_type, var2573=$z0, var2389=com.google.javascript.jscomp.DiagnosticType, var1518=com.google.javascript.jscomp.GatherModuleMetadata, var2405=$r4, var2563=$r3}
; {com.google.javascript.jscomp.GatherModuleMetadata$Finder=var3186, r7=var2633, com.google.javascript.jscomp.NodeTraversal=var2971, r1=var318, com.google.javascript.rhino.Node=var3295, r2=var1142, r0=var3037, null_type=var3368, $z0=var2573, com.google.javascript.jscomp.DiagnosticType=var2389, com.google.javascript.jscomp.GatherModuleMetadata=var1518, $r4=var2405, $r3=var2563}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.GatherModuleMetadata$Finder;	r1 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r2 := @parameter1: com.google.javascript.rhino.Node;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("TOGGLE_");	if $z0 == 0 goto $r4 = <com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.DiagnosticType INVALID_TOGGLE_USAGE>;	$r4 = <com.google.javascript.jscomp.GatherModuleMetadata: com.google.javascript.jscomp.DiagnosticType INVALID_TOGGLE_USAGE>;	$r3 = newarray (java.lang.String)[1];	$r3[0] = "all toggle names must start with `TOGGLE_`";	virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: void report(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r2, $r4, $r3);	return
;block_num 3