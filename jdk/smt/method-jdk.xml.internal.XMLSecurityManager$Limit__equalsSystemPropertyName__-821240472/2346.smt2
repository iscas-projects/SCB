(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3450 0)
(declare-sort var1598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun systemProperty/515043594 (var3450) String)
(declare-const null-var3450 var3450)
(declare-const null-String String)
(declare-const var2470 var3450) ; Statement: r1 := @this: jdk.xml.internal.XMLSecurityManager$Limit 
(assert (not (= var2470 null-var3450)))
(declare-const var1449 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1449 null-String)))
 ; Statement: if r0 != null goto $r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String systemProperty> 
(assert (not (= var1449 null-String))) ; Cond: r0 != null 
(define-const var2133 String (systemProperty/515043594 var2470)) ; Statement: $r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String systemProperty> 
(assert true)
(define-const var1207 Bool (= var2133 var1449)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {systemProperty/515043594=([jdk.xml.internal.XMLSecurityManager$Limit], java.lang.String)}
; {var3450=jdk.xml.internal.XMLSecurityManager$Limit, var2470=r1, var1449=r0, var1598=null_type, var2133=$r2, var1207=$z0}
; {jdk.xml.internal.XMLSecurityManager$Limit=var3450, r1=var2470, r0=var1449, null_type=var1598, $r2=var2133, $z0=var1207}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.xml.internal.XMLSecurityManager$Limit;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String systemProperty>;	$r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String systemProperty>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	return $z0
;block_num 3