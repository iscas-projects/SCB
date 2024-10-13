(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort var1388 0)
(declare-sort var780 0)
(declare-sort var3594 0)
(declare-sort var177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3594_iterator/-912451715 (var3594) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var687 var687)
(declare-const null-String String)
(declare-const null-var780 var780)
(declare-const null-var3594 var3594)
(declare-const null-var177 var177)
(declare-const var3334 var687) ; Statement: r15 := @this: org.hibernate.procedure.internal.StandardCallableStatementSupport 
(assert (not (= var3334 null-var687)))
(declare-const var2883 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2883 null-String)))
(declare-const var229 var780) ; Statement: r22 := @parameter1: org.hibernate.procedure.spi.ParameterStrategy 
(assert (not (= var229 null-var780)))
(declare-const var1195 var3594) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var1195 null-var3594)))
(declare-const var2071 var177) ; Statement: r16 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2071 null-var177)))
(define-const var1061 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1061)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1061!1 String)
(assert (= var1061!1 ""))
(assert true)
(define-const var852 String (append/672562846 var1061!1 "{call ")) ; Statement: $r2 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{call ") 
(declare-const var1061!2 String)
(assert (= var1061!2 (str.++ var1061!1 "{call ")))
(assert true)
(define-const var1675 String (append/672562846 var852 var2883)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var852!1 String)
(assert (= var852!1 (str.++ var852 var2883)))
(assert true)
(define-const var3078 String (append/672562846 var1675 "(")) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1675!1 String)
(assert (= var1675!1 (str.++ var1675 "(")))
(define-const var2530 String "") ; Statement: r23 = "" 
(define-const var1176 String "") ; Statement: r25 = "" 
(define-const var633 String "") ; Statement: r24 = "" 
(define-const var168 Iterator (var3594_iterator/-912451715 var1195)) ; Statement: r6 = interfaceinvoke r5.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1489 Bool (Iterator_hasNext/-1669924200 var168)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")}") 
(assert (= (ite var1489 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3596 String (append/672562846 var3078 ")}")) ; Statement: $r7 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")}") 
(declare-const var3078!1 String)
(assert (= var3078!1 (str.++ var3078 ")}")))
(assert true)
(define-const var2823 String (toString/-2075883882 var3596)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3594_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var687=org.hibernate.procedure.internal.StandardCallableStatementSupport, var3334=r15, var2883=r1, var1388=null_type, var780=org.hibernate.procedure.spi.ParameterStrategy, var229=r22, var3594=java.util.List, var1195=r5, var177=org.hibernate.engine.spi.SharedSessionContractImplementor, var2071=r16, var1061=$r26, var852=$r2, var1675=$r3, var3078=r4, var2530=r23, var1176=r25, var633=r24, var168=r6, var1489=$z0, var3596=$r7, var2823=$r8}
; {org.hibernate.procedure.internal.StandardCallableStatementSupport=var687, r15=var3334, r1=var2883, null_type=var1388, org.hibernate.procedure.spi.ParameterStrategy=var780, r22=var229, java.util.List=var3594, r5=var1195, org.hibernate.engine.spi.SharedSessionContractImplementor=var177, r16=var2071, $r26=var1061, $r2=var852, $r3=var1675, r4=var3078, r23=var2530, r25=var1176, r24=var633, r6=var168, $z0=var1489, $r7=var3596, $r8=var2823}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.hibernate.procedure.internal.StandardCallableStatementSupport;	r1 := @parameter0: java.lang.String;	r22 := @parameter1: org.hibernate.procedure.spi.ParameterStrategy;	r5 := @parameter2: java.util.List;	r16 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{call ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	r23 = "";	r25 = "";	r24 = "";	r6 = interfaceinvoke r5.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r7 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")}");	$r7 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")}");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3