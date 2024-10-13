(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var7 0)
(declare-sort var3914 0)
(declare-sort var3953 0)
(declare-sort var1120 0)
(declare-sort var3131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var3914 var3914)
(declare-const null-var3953 var3953)
(declare-const null-var1120 var1120)
(declare-const var3131-NULL var3131)
(declare-const var1135 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1135 null-String)))
(declare-const var326 var3914) ; Statement: r14 := @parameter1: org.hibernate.property.access.spi.Getter 
(assert (not (= var326 null-var3914)))
(declare-const var3647 var3953) ; Statement: r6 := @parameter2: org.hibernate.type.Type 
(assert (not (= var3647 null-var3953)))
(declare-const var566 var1120) ; Statement: r18 := @parameter3: java.lang.reflect.Constructor 
(assert (not (= var566 null-var1120)))
 ; Statement: if r0 != null goto $r1 = "null" 
(assert (not (= var1135 null-String))) ; Cond: r0 != null 
(define-const var157 String "null") ; Statement: $r1 = "null" 
(assert true)
(define-const var1988 Bool (= var157 var1135)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "undefined" 
(assert (not (= (ite var1988 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1370 var3131 var3131-NULL) ; Statement: $r13 = <org.hibernate.engine.spi.IdentifierValue: org.hibernate.engine.spi.IdentifierValue NULL> 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1135=r0, var7=null_type, var3914=org.hibernate.property.access.spi.Getter, var326=r14, var3953=org.hibernate.type.Type, var3647=r6, var1120=java.lang.reflect.Constructor, var566=r18, var157=$r1, var1988=$z0, var3131=org.hibernate.engine.spi.IdentifierValue, var1370=$r13}
; {r0=var1135, null_type=var7, org.hibernate.property.access.spi.Getter=var3914, r14=var326, org.hibernate.type.Type=var3953, r6=var3647, java.lang.reflect.Constructor=var1120, r18=var566, $r1=var157, $z0=var1988, org.hibernate.engine.spi.IdentifierValue=var3131, $r13=var1370}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r14 := @parameter1: org.hibernate.property.access.spi.Getter;	r6 := @parameter2: org.hibernate.type.Type;	r18 := @parameter3: java.lang.reflect.Constructor;	if r0 != null goto $r1 = "null";	$r1 = "null";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "undefined";	$r13 = <org.hibernate.engine.spi.IdentifierValue: org.hibernate.engine.spi.IdentifierValue NULL>;	return $r13
;block_num 3