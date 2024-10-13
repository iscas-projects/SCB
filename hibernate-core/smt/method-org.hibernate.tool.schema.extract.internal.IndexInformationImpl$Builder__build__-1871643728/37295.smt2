(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3065 0)
(declare-sort var1519 0)
(declare-sort var210 0)
(declare-sort var65 0)
(declare-sort var1230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columnList/302987640 (var3065) var1519)
(declare-fun var1519_isEmpty/-153543822 (var1519) Bool)
(declare-fun var210-init () var210)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun indexIdentifier/302987640 (var3065) var65)
(declare-fun getText/-467579009 (var65) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2079914650 (var210 String) void)
(declare-fun cast-from-var210-to-var1230 (var210) var1230)
(declare-const null-var3065 var3065)
(declare-const var1992 var3065) ; Statement: r0 := @this: org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder 
(assert (not (= var1992 null-var3065)))
(define-const var814 var1519 (columnList/302987640 var1992)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: java.util.List columnList> 
(define-const var3753 Bool (var1519_isEmpty/-153543822 var814)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r16 = new org.hibernate.tool.schema.extract.internal.IndexInformationImpl 
(assert (not (= (ite var3753 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3063 var210 var210-init) ; Statement: $r15 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var3699 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3699)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3699!1 String)
(assert (= var3699!1 ""))
(assert true)
(define-const var1835 String (append/672562846 var3699!1 "Attempt to resolve JDBC metadata failed to find columns for index [")) ; Statement: $r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to resolve JDBC metadata failed to find columns for index [") 
(declare-const var3699!2 String)
(assert (= var3699!2 (str.++ var3699!1 "Attempt to resolve JDBC metadata failed to find columns for index [")))
(define-const var3748 var65 (indexIdentifier/302987640 var1992)) ; Statement: $r8 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: org.hibernate.boot.model.naming.Identifier indexIdentifier> 
(assert true)
(define-const var1663 String (getText/-467579009 var3748)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var1342 String (append/672562846 var1835 var1663)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1835!1 String)
(assert (= var1835!1 (str.++ var1835 var1663)))
(assert true)
(define-const var2327 String (append/672562846 var1342 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1342!1 String)
(assert (= var1342!1 (str.++ var1342 "]")))
(assert true)
(define-const var2296 String (toString/-2075883882 var2327)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2079914650 var3063 var2296)) ; Statement: specialinvoke $r15.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r13) 

(declare-const var3063!1 var210)
(declare-const var2296!1 String)
(define-const var246 var1230 (cast-from-var210-to-var1230 var3063!1)) ; Statement: $r17 = (java.lang.Throwable) $r15 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {columnList/302987640=([org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder], java.util.List), var1519_isEmpty/-153543822=([java.util.List], boolean), var210-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indexIdentifier/302987640=([org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var210-to-var1230=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var3065=org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder, var1992=r0, var1519=java.util.List, var814=$r1, var3753=$z0, var210=org.hibernate.tool.schema.spi.SchemaManagementException, var3063=$r15, var3699=$r14, var1835=$r10, var65=org.hibernate.boot.model.naming.Identifier, var3748=$r8, var1663=$r9, var1342=$r11, var2327=$r12, var2296=$r13, var1230=java.lang.Throwable, var246=$r17}
; {org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder=var3065, r0=var1992, java.util.List=var1519, $r1=var814, $z0=var3753, org.hibernate.tool.schema.spi.SchemaManagementException=var210, $r15=var3063, $r14=var3699, $r10=var1835, org.hibernate.boot.model.naming.Identifier=var65, $r8=var3748, $r9=var1663, $r11=var1342, $r12=var2327, $r13=var2296, java.lang.Throwable=var1230, $r17=var246}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder;	$r1 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: java.util.List columnList>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r16 = new org.hibernate.tool.schema.extract.internal.IndexInformationImpl;	$r15 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to resolve JDBC metadata failed to find columns for index [");	$r8 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: org.hibernate.boot.model.naming.Identifier indexIdentifier>;	$r9 = virtualinvoke $r8.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r13);	$r17 = (java.lang.Throwable) $r15;	throw $r17
;block_num 2