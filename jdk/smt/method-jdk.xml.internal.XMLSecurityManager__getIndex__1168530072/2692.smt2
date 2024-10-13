(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1991 0)
(declare-sort var2937 0)
(declare-sort var1036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1036_values/1030644307 () (Array Int var1036))
(declare-fun getLength-Arr-var1036-1 ((Array Int var1036)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1991 var1991)
(declare-const null-String String)
(declare-const var3795 var1991) ; Statement: r3 := @this: jdk.xml.internal.XMLSecurityManager 
(assert (not (= var3795 null-var1991)))
(declare-const var589 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var589 null-String)))
(define-const var3672 (Array Int var1036) var1036_values/1030644307) ; Statement: r0 = staticinvoke <jdk.xml.internal.XMLSecurityManager$Limit: jdk.xml.internal.XMLSecurityManager$Limit[] values()>() 
(define-const var307 Int (getLength-Arr-var1036-1 var3672)) ; Statement: i0 = lengthof r0 
(define-const var2225 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo") 
(assert (>= var2225 var307)) ; Cond: i2 >= i0 
(assert true)
(define-const var530 Bool (= var589 "http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo") 
 ; Statement: if $z0 == 0 goto $i4 = (int) -1 
(assert (= (ite var530 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2641 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1036_values/1030644307=([], jdk.xml.internal.XMLSecurityManager$Limit[]), getLength-Arr-var1036-1=([jdk.xml.internal.XMLSecurityManager$Limit[]], int), cast-from-Int-to-Int=([int], int)}
; {var1991=jdk.xml.internal.XMLSecurityManager, var3795=r3, var589=r1, var2937=null_type, var1036=jdk.xml.internal.XMLSecurityManager$Limit, var3672=r0, var307=i0, var2225=i2, var530=$z0, var2641=$i4}
; {jdk.xml.internal.XMLSecurityManager=var1991, r3=var3795, r1=var589, null_type=var2937, jdk.xml.internal.XMLSecurityManager$Limit=var1036, r0=var3672, i0=var307, i2=var2225, $z0=var530, $i4=var2641}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.xml.internal.XMLSecurityManager;	r1 := @parameter0: java.lang.String;	r0 = staticinvoke <jdk.xml.internal.XMLSecurityManager$Limit: jdk.xml.internal.XMLSecurityManager$Limit[] values()>();	i0 = lengthof r0;	i2 = 0;	if i2 >= i0 goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo");	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("http://www.oracle.com/xml/jaxp/properties/getEntityCountInfo");	if $z0 == 0 goto $i4 = (int) -1;	$i4 = (int) -1;	return $i4
;block_num 4