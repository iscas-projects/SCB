(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1986 0)
(declare-sort var837 0)
(declare-sort var2974 0)
(declare-sort var2493 0)
(declare-sort var2069 0)
(declare-sort var1594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun configurable/1537946212 (var2493) var2974)
(declare-fun cast-from-var1986-to-var2493 (var1986) var2493)
(declare-fun cast-from-var2974-to-var2069 (var2974) var2069)
(declare-fun getCurrentNamespace/1642697624 (var2069) var1594)
(declare-const null-var1986 var1986)
(declare-const null-String String)
(declare-const var23 var1986) ; Statement: r7 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugEnvironmentModel 
(assert (not (= var23 null-var1986)))
(declare-const var2485 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2485 null-String)))
(define-const var1819 String "currentNamespace") ; Statement: $r1 = "currentNamespace" 
(assert true)
(define-const var2982 Bool (= var1819 var2485)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "dataModel" 
(assert (not (= (ite var2982 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1568 var2974 (configurable/1537946212 (cast-from-var1986-to-var2493 var23))) ; Statement: $r24 = r7.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugEnvironmentModel: freemarker.core.Configurable configurable> 
(define-const var3060 var2069 (cast-from-var2974-to-var2069 var1568)) ; Statement: $r25 = (freemarker.core.Environment) $r24 
(assert true)
(define-const var3410 var1594 (getCurrentNamespace/1642697624 var3060)) ; Statement: $r26 = virtualinvoke $r25.<freemarker.core.Environment: freemarker.core.Environment$Namespace getCurrentNamespace()>() 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {configurable/1537946212=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel], freemarker.core.Configurable), cast-from-var1986-to-var2493=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugEnvironmentModel], freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel), cast-from-var2974-to-var2069=([freemarker.core.Configurable], freemarker.core.Environment), getCurrentNamespace/1642697624=([freemarker.core.Environment], freemarker.core.Environment$Namespace)}
; {var1986=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugEnvironmentModel, var23=r7, var2485=r0, var837=null_type, var1819=$r1, var2982=$z0, var2974=freemarker.core.Configurable, var2493=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel, var1568=$r24, var2069=freemarker.core.Environment, var3060=$r25, var1594=freemarker.core.Environment$Namespace, var3410=$r26}
; {freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugEnvironmentModel=var1986, r7=var23, r0=var2485, null_type=var837, $r1=var1819, $z0=var2982, freemarker.core.Configurable=var2974, freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel=var2493, $r24=var1568, freemarker.core.Environment=var2069, $r25=var3060, freemarker.core.Environment$Namespace=var1594, $r26=var3410}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugEnvironmentModel;	r0 := @parameter0: java.lang.String;	$r1 = "currentNamespace";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "dataModel";	$r24 = r7.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugEnvironmentModel: freemarker.core.Configurable configurable>;	$r25 = (freemarker.core.Environment) $r24;	$r26 = virtualinvoke $r25.<freemarker.core.Environment: freemarker.core.Environment$Namespace getCurrentNamespace()>();	return $r26
;block_num 2