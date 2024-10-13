(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1509 0)
(declare-sort var334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/1321777772 (var334) String)
(declare-fun cast-from-var1509-to-var334 (var1509) var334)
(declare-fun getParent/-1829283033 (var1509) var1509)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1509 var1509)
(declare-const null-String String)
(declare-const var2582 var1509) ; Statement: r0 := @parameter0: org.hibernate.boot.model.source.spi.AttributePath 
(assert (not (= var2582 null-var1509)))
(declare-const var3785 String) ; Statement: r3 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3785 null-String)))
(assert true)
(define-const var2312 String (getProperty/1321777772 (cast-from-var1509-to-var334 var2582))) ; Statement: r7 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: java.lang.String getProperty()>() 
(assert true)
(define-const var67 var1509 (getParent/-1829283033 var2582)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath getParent()>() 
 ; Statement: if r1 == null goto $r2 = "_identifierMapper" 
(assert (= var67 null-var1509)) ; Cond: r1 == null 
(define-const var488 String "_identifierMapper") ; Statement: $r2 = "_identifierMapper" 
(assert true)
(define-const var2487 Bool (= var488 var2312)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r7) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "") 
(assert (not (= (ite var2487 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/672562846 var3785 "id")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id") 
(declare-const var3785!1 String)
(assert (= var3785!1 (str.++ var3785 "id")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/1321777772=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var1509-to-var334=([org.hibernate.boot.model.source.spi.AttributePath], org.hibernate.boot.model.source.spi.AbstractAttributeKey), getParent/-1829283033=([org.hibernate.boot.model.source.spi.AttributePath], org.hibernate.boot.model.source.spi.AttributePath), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1509=org.hibernate.boot.model.source.spi.AttributePath, var2582=r0, var3785=r3, var334=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var2312=r7, var67=r1, var488=$r2, var2487=$z0}
; {org.hibernate.boot.model.source.spi.AttributePath=var1509, r0=var2582, r3=var3785, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var334, r7=var2312, r1=var67, $r2=var488, $z0=var2487}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.hibernate.boot.model.source.spi.AttributePath;	r3 := @parameter1: java.lang.StringBuilder;	r7 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: java.lang.String getProperty()>();	r1 = virtualinvoke r0.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath getParent()>();	if r1 == null goto $r2 = "_identifierMapper";	$r2 = "_identifierMapper";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r7);	if $z0 == 0 goto $r5 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<", "");	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("id");	return
;block_num 3