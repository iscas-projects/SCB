(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var740 0)
(declare-sort var3468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun apiProperty/515043594 (var740) String)
(declare-const null-var740 var740)
(declare-const null-String String)
(declare-const var1544 var740) ; Statement: r1 := @this: jdk.xml.internal.XMLSecurityManager$Limit 
(assert (not (= var1544 null-var740)))
(declare-const var2799 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2799 null-String)))
 ; Statement: if r0 != null goto $r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String apiProperty> 
(assert (not (= var2799 null-String))) ; Cond: r0 != null 
(define-const var1031 String (apiProperty/515043594 var1544)) ; Statement: $r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String apiProperty> 
(assert true)
(define-const var630 Bool (= var1031 var2799)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {apiProperty/515043594=([jdk.xml.internal.XMLSecurityManager$Limit], java.lang.String)}
; {var740=jdk.xml.internal.XMLSecurityManager$Limit, var1544=r1, var2799=r0, var3468=null_type, var1031=$r2, var630=$z0}
; {jdk.xml.internal.XMLSecurityManager$Limit=var740, r1=var1544, r0=var2799, null_type=var3468, $r2=var1031, $z0=var630}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.xml.internal.XMLSecurityManager$Limit;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String apiProperty>;	$r2 = r1.<jdk.xml.internal.XMLSecurityManager$Limit: java.lang.String apiProperty>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	return $z0
;block_num 3