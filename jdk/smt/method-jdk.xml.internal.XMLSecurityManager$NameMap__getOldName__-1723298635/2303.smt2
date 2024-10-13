(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2101 0)
(declare-sort var1843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newName/-1713491872 (var2101) String)
(declare-fun oldName/-1713491872 (var2101) String)
(declare-const null-var2101 var2101)
(declare-const null-String String)
(declare-const var749 var2101) ; Statement: r1 := @this: jdk.xml.internal.XMLSecurityManager$NameMap 
(assert (not (= var749 null-var2101)))
(declare-const var2170 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2170 null-String)))
(define-const var2393 String (newName/-1713491872 var749)) ; Statement: $r2 = r1.<jdk.xml.internal.XMLSecurityManager$NameMap: java.lang.String newName> 
(assert true)
(define-const var1931 Bool (= var2170 var2393)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1931 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3913 String (oldName/-1713491872 var749)) ; Statement: $r3 = r1.<jdk.xml.internal.XMLSecurityManager$NameMap: java.lang.String oldName> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {newName/-1713491872=([jdk.xml.internal.XMLSecurityManager$NameMap], java.lang.String), oldName/-1713491872=([jdk.xml.internal.XMLSecurityManager$NameMap], java.lang.String)}
; {var2101=jdk.xml.internal.XMLSecurityManager$NameMap, var749=r1, var2170=r0, var1843=null_type, var2393=$r2, var1931=$z0, var3913=$r3}
; {jdk.xml.internal.XMLSecurityManager$NameMap=var2101, r1=var749, r0=var2170, null_type=var1843, $r2=var2393, $z0=var1931, $r3=var3913}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.xml.internal.XMLSecurityManager$NameMap;	r0 := @parameter0: java.lang.String;	$r2 = r1.<jdk.xml.internal.XMLSecurityManager$NameMap: java.lang.String newName>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return null;	$r3 = r1.<jdk.xml.internal.XMLSecurityManager$NameMap: java.lang.String oldName>;	return $r3
;block_num 2