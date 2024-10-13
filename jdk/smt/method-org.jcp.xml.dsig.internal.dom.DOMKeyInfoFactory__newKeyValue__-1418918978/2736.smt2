(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1444 0)
(declare-sort var3038 0)
(declare-sort var1075 0)
(declare-sort var3108 0)
(declare-sort var3969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1075_getAlgorithm/-1569158064 (var1075) String)
(declare-fun cast-from-var3038-to-var1075 (var3038) var1075)
(declare-fun var3108-init () var3108)
(declare-fun cast-from-var3038-to-var3969 (var3038) var3969)
(declare-fun <init>/270306825 (var3108 var3969) void)
(declare-const null-var1444 var1444)
(declare-const null-var3038 var3038)
(declare-const var201 var1444) ; Statement: r16 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyInfoFactory 
(assert (not (= var201 null-var1444)))
(declare-const var845 var3038) ; Statement: r0 := @parameter0: java.security.PublicKey 
(assert (not (= var845 null-var3038)))
(define-const var229 String (var1075_getAlgorithm/-1569158064 (cast-from-var3038-to-var1075 var845))) ; Statement: r1 = interfaceinvoke r0.<java.security.PublicKey: java.lang.String getAlgorithm()>() 
(define-const var3598 String "DSA") ; Statement: $r2 = "DSA" 
(assert true)
(define-const var116 Bool (= var3598 var229)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "RSA" 
(assert (not (= (ite var116 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1484 var3108 var3108-init) ; Statement: $r14 = new org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA 
(define-const var646 var3969 (cast-from-var3038-to-var3969 var845)) ; Statement: $r15 = (java.security.interfaces.DSAPublicKey) r0 
(assert true)
;(assert (<init>/270306825 var1484 var646)) ; Statement: specialinvoke $r14.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA: void <init>(java.security.interfaces.DSAPublicKey)>($r15) 

(declare-const var1484!1 var3108)
(declare-const var646!1 var3969)
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1075_getAlgorithm/-1569158064=([java.security.Key], java.lang.String), cast-from-var3038-to-var1075=([java.security.PublicKey], java.security.Key), var3108-init=([], org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA), cast-from-var3038-to-var3969=([java.security.PublicKey], java.security.interfaces.DSAPublicKey), <init>/270306825=([org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA, java.security.interfaces.DSAPublicKey], void)}
; {var1444=org.jcp.xml.dsig.internal.dom.DOMKeyInfoFactory, var201=r16, var3038=java.security.PublicKey, var845=r0, var1075=java.security.Key, var229=r1, var3598=$r2, var116=$z0, var3108=org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA, var1484=$r14, var3969=java.security.interfaces.DSAPublicKey, var646=$r15}
; {org.jcp.xml.dsig.internal.dom.DOMKeyInfoFactory=var1444, r16=var201, java.security.PublicKey=var3038, r0=var845, java.security.Key=var1075, r1=var229, $r2=var3598, $z0=var116, org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA=var3108, $r14=var1484, java.security.interfaces.DSAPublicKey=var3969, $r15=var646}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r16 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyInfoFactory;	r0 := @parameter0: java.security.PublicKey;	r1 = interfaceinvoke r0.<java.security.PublicKey: java.lang.String getAlgorithm()>();	$r2 = "DSA";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "RSA";	$r14 = new org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA;	$r15 = (java.security.interfaces.DSAPublicKey) r0;	specialinvoke $r14.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA: void <init>(java.security.interfaces.DSAPublicKey)>($r15);	return $r14
;block_num 2