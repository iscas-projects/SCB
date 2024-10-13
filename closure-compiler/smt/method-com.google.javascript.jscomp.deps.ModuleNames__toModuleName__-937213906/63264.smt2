(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3836 0)
(declare-sort var322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var322_toJSIdentifier/-174082061 (String) String)
(declare-const null-String String)
(declare-const var113 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var113 null-String)))
(assert true)
(define-const var3851 Bool (startsWith/-1785782452 var113 "/")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String toJSIdentifier(java.lang.String)>(r2) 
(assert (= (ite var3851 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1606 String (var322_toJSIdentifier/-174082061 var113)) ; Statement: $r0 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String toJSIdentifier(java.lang.String)>(r2) 
(define-const var1045 String (str.++ "module$\u0001" var1606)) ; Statement: $r1 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("module$\u0001") 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var322_toJSIdentifier/-174082061=([java.lang.String], java.lang.String)}
; {var113=r2, var3836=null_type, var3851=$z0, var322=com.google.javascript.jscomp.deps.ModuleNames, var1606=$r0, var1045=$r1}
; {r2=var113, null_type=var3836, $z0=var3851, com.google.javascript.jscomp.deps.ModuleNames=var322, $r0=var1606, $r1=var1045}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r0 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String toJSIdentifier(java.lang.String)>(r2);	$r0 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String toJSIdentifier(java.lang.String)>(r2);	$r1 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("module$\u0001");	return $r1
;block_num 2