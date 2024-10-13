(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3459 0)
(declare-sort var2554 0)
(declare-sort var1188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3459 var3459)
(declare-const null-var2554 var2554)
(declare-const null-String String)
(declare-const var1298 var3459) ; Statement: r1 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var1298 null-var3459)))
(declare-const var3203 var2554) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3203 null-var2554)))
(declare-const var493 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var493 null-String)))
(declare-const var2278 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var2278 null-String)))
(declare-const var1877 var2554) ; Statement: r7 := @parameter3: java.lang.Object 
(assert (not (= var1877 null-var2554)))
(define-const var3876 Bool false) ; Statement: $z0 = r0 instanceof org.apache.log4j.Appender 
 ; Statement: if $z0 == 0 goto $z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize> 
(assert (not (= (ite var3876 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3657 String "name") ; Statement: $r12 = "name" 
(assert true)
(define-const var939 Bool (= var3657 var2278)) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r13) 
 ; Statement: if $z2 == 0 goto $z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize> 
(assert (not (= (ite var939 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3459=org.apache.log4j.config.PropertyPrinter, var1298=r1, var2554=java.lang.Object, var3203=r0, var493=r4, var1188=null_type, var2278=r13, var1877=r7, var3876=$z0, var3657=$r12, var939=$z2}
; {org.apache.log4j.config.PropertyPrinter=var3459, r1=var1298, java.lang.Object=var2554, r0=var3203, r4=var493, null_type=var1188, r13=var2278, r7=var1877, $z0=var3876, $r12=var3657, $z2=var939}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.config.PropertyPrinter;	r0 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	r7 := @parameter3: java.lang.Object;	$z0 = r0 instanceof org.apache.log4j.Appender;	if $z0 == 0 goto $z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize>;	$r12 = "name";	$z2 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r13);	if $z2 == 0 goto $z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize>;	return
;block_num 3