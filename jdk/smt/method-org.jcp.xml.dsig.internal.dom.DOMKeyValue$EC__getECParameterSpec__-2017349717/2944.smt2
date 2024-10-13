(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3852 0)
(declare-sort var3466 0)
(declare-sort var723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3466_access$200/234037484 (var3466) String)
(declare-const null-String String)
(declare-const var723-SECP256R1 var3466)
(declare-const var440 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var440 null-String)))
(define-const var943 var3466 var723-SECP256R1) ; Statement: $r1 = <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve SECP256R1> 
(define-const var869 String (var3466_access$200/234037484 var943)) ; Statement: $r2 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve: java.lang.String access$200(org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve)>($r1) 
(assert true)
(define-const var2877 Bool (= var440 var869)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve SECP384R1> 
(assert (not (= (ite var2877 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3208 var3466 var723-SECP256R1) ; Statement: $r9 = <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve SECP256R1> 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3466_access$200/234037484=([org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve], java.lang.String)}
; {var440=r0, var3852=null_type, var3466=org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve, var723=org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC, var943=$r1, var869=$r2, var2877=$z0, var3208=$r9}
; {r0=var440, null_type=var3852, org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve=var3466, org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC=var723, $r1=var943, $r2=var869, $z0=var2877, $r9=var3208}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve SECP256R1>;	$r2 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve: java.lang.String access$200(org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve)>($r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve SECP384R1>;	$r9 = <org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC: org.jcp.xml.dsig.internal.dom.DOMKeyValue$EC$Curve SECP256R1>;	return $r9
;block_num 2