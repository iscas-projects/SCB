(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var290 0)
(declare-sort var588 0)
(declare-sort var1947 0)
(declare-sort var820 0)
(declare-sort var3828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var588 var588)
(declare-const null-var1947 var1947)
(declare-const null-var820 var820)
(declare-const var3828-UNDEFINED var3828)
(declare-const var3875 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3875 null-String)))
(declare-const var425 var588) ; Statement: r14 := @parameter1: org.hibernate.property.access.spi.Getter 
(assert (not (= var425 null-var588)))
(declare-const var207 var1947) ; Statement: r17 := @parameter2: org.hibernate.type.VersionType 
(assert (not (= var207 null-var1947)))
(declare-const var3473 var820) ; Statement: r12 := @parameter3: java.lang.reflect.Constructor 
(assert (not (= var3473 null-var820)))
 ; Statement: if r0 != null goto $r1 = "undefined" 
(assert (not (= var3875 null-String))) ; Cond: r0 != null 
(define-const var117 String "undefined") ; Statement: $r1 = "undefined" 
(assert true)
(define-const var1789 Bool (= var117 var3875)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "null" 
(assert (not (= (ite var1789 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var797 var3828 var3828-UNDEFINED) ; Statement: $r11 = <org.hibernate.engine.spi.VersionValue: org.hibernate.engine.spi.VersionValue UNDEFINED> 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3875=r0, var290=null_type, var588=org.hibernate.property.access.spi.Getter, var425=r14, var1947=org.hibernate.type.VersionType, var207=r17, var820=java.lang.reflect.Constructor, var3473=r12, var117=$r1, var1789=$z0, var3828=org.hibernate.engine.spi.VersionValue, var797=$r11}
; {r0=var3875, null_type=var290, org.hibernate.property.access.spi.Getter=var588, r14=var425, org.hibernate.type.VersionType=var1947, r17=var207, java.lang.reflect.Constructor=var820, r12=var3473, $r1=var117, $z0=var1789, org.hibernate.engine.spi.VersionValue=var3828, $r11=var797}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r14 := @parameter1: org.hibernate.property.access.spi.Getter;	r17 := @parameter2: org.hibernate.type.VersionType;	r12 := @parameter3: java.lang.reflect.Constructor;	if r0 != null goto $r1 = "undefined";	$r1 = "undefined";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "null";	$r11 = <org.hibernate.engine.spi.VersionValue: org.hibernate.engine.spi.VersionValue UNDEFINED>;	return $r11
;block_num 3