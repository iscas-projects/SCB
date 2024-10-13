(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2298 0)
(declare-sort var488 0)
(declare-sort var3734 0)
(declare-sort var3612 0)
(declare-sort var100 0)
(declare-sort var3189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun canDoExtraction/-1780866762 (var2298) Bool)
(declare-fun var3612-init () var3612)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getUserType/-1664569987 (var2298) var100)
(declare-fun append/-1031950772 (String var3189) String)
(declare-fun cast-from-var100-to-var3189 (var100) var3189)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3612 String) void)
(declare-const null-var2298 var2298)
(declare-const null-var488 var488)
(declare-const null-Int Int)
(declare-const null-var3734 var3734)
(declare-const var3410 var2298) ; Statement: r0 := @this: org.hibernate.type.CustomType 
(assert (not (= var3410 null-var2298)))
(declare-const var2732 var488) ; Statement: r9 := @parameter0: java.sql.CallableStatement 
(assert (not (= var2732 null-var488)))
(declare-const var1494 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1494 null-Int)))
(declare-const var1536 var3734) ; Statement: r10 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1536 null-var3734)))
(assert true)
(define-const var2956 Bool (canDoExtraction/-1780866762 var3410)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.type.CustomType: boolean canDoExtraction()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.UnsupportedOperationException 
(assert (= (ite var2956 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2412 var3612 var3612-init) ; Statement: $r1 = new java.lang.UnsupportedOperationException 
(define-const var427 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var427)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var427!1 String)
(assert (= var427!1 ""))
(assert true)
(define-const var70 String (append/672562846 var427!1 "Type [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type [") 
(declare-const var427!2 String)
(assert (= var427!2 (str.++ var427!1 "Type [")))
(assert true)
(define-const var178 var100 (getUserType/-1664569987 var3410)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.type.CustomType: org.hibernate.usertype.UserType getUserType()>() 
(assert true)
(define-const var716 String (append/-1031950772 var70 (cast-from-var100-to-var3189 var178))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var70!1 String)
(assert (str.prefixof var70 var70!1))
(assert true)
(define-const var318 String (append/672562846 var716 "] does support parameter value extraction")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does support parameter value extraction") 
(declare-const var716!1 String)
(assert (= var716!1 (str.++ var716 "] does support parameter value extraction")))
(assert true)
(define-const var1841 String (toString/-2075883882 var318)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2412 var1841)) ; Statement: specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var2412!1 var3612)
(declare-const var1841!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {canDoExtraction/-1780866762=([org.hibernate.type.CustomType], boolean), var3612-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getUserType/-1664569987=([org.hibernate.type.CustomType], org.hibernate.usertype.UserType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var100-to-var3189=([org.hibernate.usertype.UserType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2298=org.hibernate.type.CustomType, var3410=r0, var488=java.sql.CallableStatement, var2732=r9, var1494=i0, var3734=org.hibernate.engine.spi.SharedSessionContractImplementor, var1536=r10, var2956=$z0, var3612=java.lang.UnsupportedOperationException, var2412=$r1, var427=$r2, var70=$r4, var100=org.hibernate.usertype.UserType, var178=$r3, var3189=java.lang.Object, var716=$r5, var318=$r6, var1841=$r7}
; {org.hibernate.type.CustomType=var2298, r0=var3410, java.sql.CallableStatement=var488, r9=var2732, i0=var1494, org.hibernate.engine.spi.SharedSessionContractImplementor=var3734, r10=var1536, $z0=var2956, java.lang.UnsupportedOperationException=var3612, $r1=var2412, $r2=var427, $r4=var70, org.hibernate.usertype.UserType=var100, $r3=var178, java.lang.Object=var3189, $r5=var716, $r6=var318, $r7=var1841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.CustomType;	r9 := @parameter0: java.sql.CallableStatement;	i0 := @parameter1: int;	r10 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$z0 = virtualinvoke r0.<org.hibernate.type.CustomType: boolean canDoExtraction()>();	if $z0 == 0 goto $r1 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.UnsupportedOperationException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type [");	$r3 = virtualinvoke r0.<org.hibernate.type.CustomType: org.hibernate.usertype.UserType getUserType()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does support parameter value extraction");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2