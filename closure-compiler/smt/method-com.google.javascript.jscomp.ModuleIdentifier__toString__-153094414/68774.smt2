(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClosureNamespace/727654054 (var1559) String)
(declare-fun getModuleName/-303603633 (var1559) String)
(declare-const null-var1559 var1559)
(declare-const var928 var1559) ; Statement: r0 := @this: com.google.javascript.jscomp.ModuleIdentifier 
(assert (not (= var928 null-var1559)))
(assert true)
(define-const var637 String (getClosureNamespace/727654054 var928)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>() 
(assert true)
(define-const var3409 String (getModuleName/-303603633 var928)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>() 
(assert true)
(define-const var1291 Bool (= var637 var3409)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>() 
(assert (= (ite var1291 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2675 String (getModuleName/-303603633 var928)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>() 
(assert true)
(define-const var1066 String (getClosureNamespace/727654054 var928)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>() 
(define-const var2017 String (str.++ "\u0001:\u0001" var2675 var1066)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001:\u0001") 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getClosureNamespace/727654054=([com.google.javascript.jscomp.ModuleIdentifier], java.lang.String), getModuleName/-303603633=([com.google.javascript.jscomp.ModuleIdentifier], java.lang.String)}
; {var1559=com.google.javascript.jscomp.ModuleIdentifier, var928=r0, var637=$r2, var3409=$r1, var1291=$z0, var2675=$r4, var1066=$r3, var2017=$r5}
; {com.google.javascript.jscomp.ModuleIdentifier=var1559, r0=var928, $r2=var637, $r1=var3409, $z0=var1291, $r4=var2675, $r3=var1066, $r5=var2017}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ModuleIdentifier;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>();	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getModuleName()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.ModuleIdentifier: java.lang.String getClosureNamespace()>();	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r4, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001:\u0001");	return $r5
;block_num 2