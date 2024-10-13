(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var859 0)
(declare-sort var2342 0)
(declare-sort var3885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3885_values/1030644307 () (Array Int var3885))
(declare-fun getLength-Arr-var3885-1 ((Array Int var3885)) Int)
(declare-const null-var859 var859)
(declare-const null-String String)
(declare-const var1218 var859) ; Statement: r3 := @this: jdk.xml.internal.XMLSecurityManager 
(assert (not (= var1218 null-var859)))
(declare-const var3865 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3865 null-String)))
(define-const var3024 (Array Int var3885) var3885_values/1030644307) ; Statement: r0 = staticinvoke <jdk.xml.internal.XMLSecurityManager$Limit: jdk.xml.internal.XMLSecurityManager$Limit[] values()>() 
(define-const var303 Int (getLength-Arr-var3885-1 var3024)) ; Statement: i0 = lengthof r0 
(define-const var147 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo") 
(assert (>= var147 var303)) ; Cond: i2 >= i0 
(assert true)
(define-const var2272 Bool (= var3865 "http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo") 
 ; Statement: if $z0 == 0 goto $i4 = (int) -1 
(assert (not (= (ite var2272 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 10000 
(check-sat)
(get-model)
(get-unsat-core)
; {var3885_values/1030644307=([], jdk.xml.internal.XMLSecurityManager$Limit[]), getLength-Arr-var3885-1=([jdk.xml.internal.XMLSecurityManager$Limit[]], int)}
; {var859=jdk.xml.internal.XMLSecurityManager, var1218=r3, var3865=r1, var2342=null_type, var3885=jdk.xml.internal.XMLSecurityManager$Limit, var3024=r0, var303=i0, var147=i2, var2272=$z0}
; {jdk.xml.internal.XMLSecurityManager=var859, r3=var1218, r1=var3865, null_type=var2342, jdk.xml.internal.XMLSecurityManager$Limit=var3885, r0=var3024, i0=var303, i2=var147, $z0=var2272}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.xml.internal.XMLSecurityManager;	r1 := @parameter0: java.lang.String;	r0 = staticinvoke <jdk.xml.internal.XMLSecurityManager$Limit: jdk.xml.internal.XMLSecurityManager$Limit[] values()>();	i0 = lengthof r0;	i2 = 0;	if i2 >= i0 goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo");	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo");	if $z0 == 0 goto $i4 = (int) -1;	return 10000
;block_num 4