(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var523 0)
(declare-sort var3817 0)
(declare-sort var2439 0)
(declare-sort var531 0)
(declare-sort var1524 0)
(declare-sort var1784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun definition/-1347497853 (var523) var531)
(declare-fun getParameterType/468480640 (var531 String) var1524)
(declare-fun var1784-init () var1784)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1784 String) void)
(declare-const null-var523 var523)
(declare-const null-String String)
(declare-const null-var2439 var2439)
(declare-const null-var1524 var1524)
(declare-const var2907 var523) ; Statement: r0 := @this: org.hibernate.internal.FilterImpl 
(assert (not (= var2907 null-var523)))
(declare-const var443 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var443 null-String)))
(declare-const var1112 var2439) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1112 null-var2439)))
(define-const var731 var531 (definition/-1347497853 var2907)) ; Statement: $r2 = r0.<org.hibernate.internal.FilterImpl: org.hibernate.engine.spi.FilterDefinition definition> 
(assert true)
(define-const var1891 var1524 (getParameterType/468480640 var731 var443)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.engine.spi.FilterDefinition: org.hibernate.type.Type getParameterType(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto (branch) 
(assert (not (not (= var1891 null-var1524)))) ; Negate: Cond: r3 != null  
(define-const var1831 var1784 var1784-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(define-const var2313 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2313)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2313!1 String)
(assert (= var2313!1 ""))
(assert true)
(define-const var1425 String (append/672562846 var2313!1 "Undefined filter parameter [")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined filter parameter [") 
(declare-const var2313!2 String)
(assert (= var2313!2 (str.++ var2313!1 "Undefined filter parameter [")))
(assert true)
(define-const var29 String (append/672562846 var1425 var443)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1425!1 String)
(assert (= var1425!1 (str.++ var1425 var443)))
(assert true)
(define-const var986 String (append/672562846 var29 "]")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var29!1 String)
(assert (= var29!1 (str.++ var29 "]")))
(assert true)
(define-const var1055 String (toString/-2075883882 var986)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1831 var1055)) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19) 

(declare-const var1831!1 var1784)
(declare-const var1055!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {definition/-1347497853=([org.hibernate.internal.FilterImpl], org.hibernate.engine.spi.FilterDefinition), getParameterType/468480640=([org.hibernate.engine.spi.FilterDefinition, java.lang.String], org.hibernate.type.Type), var1784-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var523=org.hibernate.internal.FilterImpl, var2907=r0, var443=r1, var3817=null_type, var2439=java.lang.Object, var1112=r4, var531=org.hibernate.engine.spi.FilterDefinition, var731=$r2, var1524=org.hibernate.type.Type, var1891=r3, var1784=java.lang.IllegalArgumentException, var1831=$r14, var2313=$r15, var1425=$r16, var29=$r17, var986=$r18, var1055=$r19}
; {org.hibernate.internal.FilterImpl=var523, r0=var2907, r1=var443, null_type=var3817, java.lang.Object=var2439, r4=var1112, org.hibernate.engine.spi.FilterDefinition=var531, $r2=var731, org.hibernate.type.Type=var1524, r3=var1891, java.lang.IllegalArgumentException=var1784, $r14=var1831, $r15=var2313, $r16=var1425, $r17=var29, $r18=var986, $r19=var1055}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.FilterImpl;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object;	$r2 = r0.<org.hibernate.internal.FilterImpl: org.hibernate.engine.spi.FilterDefinition definition>;	r3 = virtualinvoke $r2.<org.hibernate.engine.spi.FilterDefinition: org.hibernate.type.Type getParameterType(java.lang.String)>(r1);	if r3 != null goto (branch);	$r14 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Undefined filter parameter [");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r19);	throw $r14
;block_num 2