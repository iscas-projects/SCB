(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1204_getStringValue/-609363705 (var1204) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-var1204 var1204)
(declare-const null-Int Int)
(declare-const var2346 var1204) ; Statement: r0 := @parameter0: org.apache.xmlbeans.XmlAnySimpleType 
(assert (not (= var2346 null-var1204)))
(declare-const var2685 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2685 null-Int)))
(define-const var1144 String (var1204_getStringValue/-609363705 var2346)) ; Statement: r1 = interfaceinvoke r0.<org.apache.xmlbeans.XmlAnySimpleType: java.lang.String getStringValue()>() 
(assert true)
(define-const var2671 Bool (endsWith/985337093 var1144 "%")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("%") 
 ; Statement: if $z0 == 0 goto $i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r1) 
(assert (= (ite var2671 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2052 Int (Int_parseInt/1370970945 var1144)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r1) 
(define-const var1922 Int (* var2052 var2685)) ; Statement: $i2 = $i1 * i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1204_getStringValue/-609363705=([org.apache.xmlbeans.XmlAnySimpleType], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), Int_parseInt/1370970945=([java.lang.String], int)}
; {var1204=org.apache.xmlbeans.XmlAnySimpleType, var2346=r0, var2685=i0, var1144=r1, var2671=$z0, var2052=$i1, var1922=$i2}
; {org.apache.xmlbeans.XmlAnySimpleType=var1204, r0=var2346, i0=var2685, r1=var1144, $z0=var2671, $i1=var2052, $i2=var1922}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.apache.xmlbeans.XmlAnySimpleType;	i0 := @parameter1: int;	r1 = interfaceinvoke r0.<org.apache.xmlbeans.XmlAnySimpleType: java.lang.String getStringValue()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("%");	if $z0 == 0 goto $i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r1);	$i1 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r1);	$i2 = $i1 * i0;	return $i2
;block_num 2