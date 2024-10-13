(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var511 0)
(declare-sort var1000 0)
(declare-sort var1355 0)
(declare-sort var1588 0)
(declare-sort var1652 0)
(declare-sort var3817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun canDoExtraction/-1780866762 (var511) Bool)
(declare-fun var1588-init () var1588)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getUserType/-1664569987 (var511) var1652)
(declare-fun append/-1031950772 (String var3817) String)
(declare-fun cast-from-var1652-to-var3817 (var1652) var3817)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1588 String) void)
(declare-const null-var511 var511)
(declare-const null-var1000 var1000)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1355 var1355)
(declare-const var4 var511) ; Statement: r0 := @this: org.hibernate.type.CustomType 
(assert (not (= var4 null-var511)))
(declare-const var2217 var1000) ; Statement: r9 := @parameter0: java.sql.CallableStatement 
(assert (not (= var2217 null-var1000)))
(declare-const var3436 (Array Int String)) ; Statement: r10 := @parameter1: java.lang.String[] 
(assert (not (= var3436 null-__Array__Int__String__)))
(declare-const var3369 var1355) ; Statement: r11 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3369 null-var1355)))
(assert true)
(define-const var1719 Bool (canDoExtraction/-1780866762 var4)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.type.CustomType: boolean canDoExtraction()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.UnsupportedOperationException 
(assert (= (ite var1719 1 0) 0)) ; Cond: $z0 == 0 
(define-const var701 var1588 var1588-init) ; Statement: $r1 = new java.lang.UnsupportedOperationException 
(define-const var2127 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2127)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2127!1 String)
(assert (= var2127!1 ""))
(assert true)
(define-const var1257 String (append/672562846 var2127!1 "Type [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type [") 
(declare-const var2127!2 String)
(assert (= var2127!2 (str.++ var2127!1 "Type [")))
(assert true)
(define-const var3769 var1652 (getUserType/-1664569987 var4)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.type.CustomType: org.hibernate.usertype.UserType getUserType()>() 
(assert true)
(define-const var2633 String (append/-1031950772 var1257 (cast-from-var1652-to-var3817 var3769))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1257!1 String)
(assert (str.prefixof var1257 var1257!1))
(assert true)
(define-const var3837 String (append/672562846 var2633 "] does support parameter value extraction")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does support parameter value extraction") 
(declare-const var2633!1 String)
(assert (= var2633!1 (str.++ var2633 "] does support parameter value extraction")))
(assert true)
(define-const var729 String (toString/-2075883882 var3837)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var701 var729)) ; Statement: specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var701!1 var1588)
(declare-const var729!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {canDoExtraction/-1780866762=([org.hibernate.type.CustomType], boolean), var1588-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getUserType/-1664569987=([org.hibernate.type.CustomType], org.hibernate.usertype.UserType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1652-to-var3817=([org.hibernate.usertype.UserType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var511=org.hibernate.type.CustomType, var4=r0, var1000=java.sql.CallableStatement, var2217=r9, var3436=r10, var1355=org.hibernate.engine.spi.SharedSessionContractImplementor, var3369=r11, var1719=$z0, var1588=java.lang.UnsupportedOperationException, var701=$r1, var2127=$r2, var1257=$r4, var1652=org.hibernate.usertype.UserType, var3769=$r3, var3817=java.lang.Object, var2633=$r5, var3837=$r6, var729=$r7}
; {org.hibernate.type.CustomType=var511, r0=var4, java.sql.CallableStatement=var1000, r9=var2217, r10=var3436, org.hibernate.engine.spi.SharedSessionContractImplementor=var1355, r11=var3369, $z0=var1719, java.lang.UnsupportedOperationException=var1588, $r1=var701, $r2=var2127, $r4=var1257, org.hibernate.usertype.UserType=var1652, $r3=var3769, java.lang.Object=var3817, $r5=var2633, $r6=var3837, $r7=var729}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.CustomType;	r9 := @parameter0: java.sql.CallableStatement;	r10 := @parameter1: java.lang.String[];	r11 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$z0 = virtualinvoke r0.<org.hibernate.type.CustomType: boolean canDoExtraction()>();	if $z0 == 0 goto $r1 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.UnsupportedOperationException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type [");	$r3 = virtualinvoke r0.<org.hibernate.type.CustomType: org.hibernate.usertype.UserType getUserType()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does support parameter value extraction");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2