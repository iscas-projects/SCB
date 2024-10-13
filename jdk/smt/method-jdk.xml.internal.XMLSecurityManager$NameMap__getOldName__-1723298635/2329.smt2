(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1398 0)
(declare-sort var3936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newName/-1713491872 (var1398) String)
(declare-const null-var1398 var1398)
(declare-const null-String String)
(declare-const var3910 var1398) ; Statement: r1 := @this: jdk.xml.internal.XMLSecurityManager$NameMap 
(assert (not (= var3910 null-var1398)))
(declare-const var1609 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1609 null-String)))
(define-const var857 String (newName/-1713491872 var3910)) ; Statement: $r2 = r1.<jdk.xml.internal.XMLSecurityManager$NameMap: java.lang.String newName> 
(assert true)
(define-const var3246 Bool (= var1609 var857)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3246 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {newName/-1713491872=([jdk.xml.internal.XMLSecurityManager$NameMap], java.lang.String)}
; {var1398=jdk.xml.internal.XMLSecurityManager$NameMap, var3910=r1, var1609=r0, var3936=null_type, var857=$r2, var3246=$z0}
; {jdk.xml.internal.XMLSecurityManager$NameMap=var1398, r1=var3910, r0=var1609, null_type=var3936, $r2=var857, $z0=var3246}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.xml.internal.XMLSecurityManager$NameMap;	r0 := @parameter0: java.lang.String;	$r2 = r1.<jdk.xml.internal.XMLSecurityManager$NameMap: java.lang.String newName>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return null;	return null
;block_num 2