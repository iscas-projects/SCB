(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printEntityCountInfo/1709287763 (var40) String)
(declare-const null-var40 var40)
(declare-const var3642 var40) ; Statement: r0 := @this: jdk.xml.internal.XMLSecurityManager 
(assert (not (= var3642 null-var40)))
(define-const var1087 String (printEntityCountInfo/1709287763 var3642)) ; Statement: $r1 = r0.<jdk.xml.internal.XMLSecurityManager: java.lang.String printEntityCountInfo> 
(assert true)
(define-const var2597 Bool (= var1087 "yes")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("yes") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {printEntityCountInfo/1709287763=([jdk.xml.internal.XMLSecurityManager], java.lang.String)}
; {var40=jdk.xml.internal.XMLSecurityManager, var3642=r0, var1087=$r1, var2597=$z0}
; {jdk.xml.internal.XMLSecurityManager=var40, r0=var3642, $r1=var1087, $z0=var2597}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.xml.internal.XMLSecurityManager;	$r1 = r0.<jdk.xml.internal.XMLSecurityManager: java.lang.String printEntityCountInfo>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("yes");	return $z0
;block_num 1