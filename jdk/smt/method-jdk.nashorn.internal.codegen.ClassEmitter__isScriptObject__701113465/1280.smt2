(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2338 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2338 null-String)))
(declare-const var1911 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1911 null-String)))
(assert true)
(define-const var3723 Bool (startsWith/-1785782452 var1911 var2338)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r2 = staticinvoke <jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String className(java.lang.Class)>(class "Ljdk/nashorn/internal/runtime/ScriptObject;") 
(assert (not (= (ite var3723 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2338=r1, var2598=null_type, var1911=r0, var3723=$z0}
; {r1=var2338, null_type=var2598, r0=var1911, $z0=var3723}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 == 0 goto $r2 = staticinvoke <jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String className(java.lang.Class)>(class "Ljdk/nashorn/internal/runtime/ScriptObject;");	return 1
;block_num 2