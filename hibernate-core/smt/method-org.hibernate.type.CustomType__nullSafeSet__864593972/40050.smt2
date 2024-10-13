(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2213 0)
(declare-sort var932 0)
(declare-sort var1822 0)
(declare-sort var2254 0)
(declare-sort var3223 0)
(declare-sort var317 0)
(declare-sort var1387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun canDoSetting/-195937299 (var2213) Bool)
(declare-fun var317-init () var317)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getUserType/-1664569987 (var2213) var1387)
(declare-fun append/-1031950772 (String var1822) String)
(declare-fun cast-from-var1387-to-var1822 (var1387) var1822)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var317 String) void)
(declare-const null-var2213 var2213)
(declare-const null-var932 var932)
(declare-const null-var1822 var1822)
(declare-const null-String String)
(declare-const null-var3223 var3223)
(declare-const var3093 var2213) ; Statement: r0 := @this: org.hibernate.type.CustomType 
(assert (not (= var3093 null-var2213)))
(declare-const var1119 var932) ; Statement: r9 := @parameter0: java.sql.CallableStatement 
(assert (not (= var1119 null-var932)))
(declare-const var2362 var1822) ; Statement: r10 := @parameter1: java.lang.Object 
(assert (not (= var2362 null-var1822)))
(declare-const var1123 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1123 null-String)))
(declare-const var2310 var3223) ; Statement: r12 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2310 null-var3223)))
(assert true)
(define-const var646 Bool (canDoSetting/-195937299 var3093)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.type.CustomType: boolean canDoSetting()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.UnsupportedOperationException 
(assert (= (ite var646 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2438 var317 var317-init) ; Statement: $r1 = new java.lang.UnsupportedOperationException 
(define-const var444 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var444)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var444!1 String)
(assert (= var444!1 ""))
(assert true)
(define-const var3966 String (append/672562846 var444!1 "Type [")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type [") 
(declare-const var444!2 String)
(assert (= var444!2 (str.++ var444!1 "Type [")))
(assert true)
(define-const var1860 var1387 (getUserType/-1664569987 var3093)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.type.CustomType: org.hibernate.usertype.UserType getUserType()>() 
(assert true)
(define-const var199 String (append/-1031950772 var3966 (cast-from-var1387-to-var1822 var1860))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3966!1 String)
(assert (str.prefixof var3966 var3966!1))
(assert true)
(define-const var3247 String (append/672562846 var199 "] does support parameter binding by name")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does support parameter binding by name") 
(declare-const var199!1 String)
(assert (= var199!1 (str.++ var199 "] does support parameter binding by name")))
(assert true)
(define-const var689 String (toString/-2075883882 var3247)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2438 var689)) ; Statement: specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var2438!1 var317)
(declare-const var689!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {canDoSetting/-195937299=([org.hibernate.type.CustomType], boolean), var317-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getUserType/-1664569987=([org.hibernate.type.CustomType], org.hibernate.usertype.UserType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1387-to-var1822=([org.hibernate.usertype.UserType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2213=org.hibernate.type.CustomType, var3093=r0, var932=java.sql.CallableStatement, var1119=r9, var1822=java.lang.Object, var2362=r10, var1123=r11, var2254=null_type, var3223=org.hibernate.engine.spi.SharedSessionContractImplementor, var2310=r12, var646=$z0, var317=java.lang.UnsupportedOperationException, var2438=$r1, var444=$r2, var3966=$r4, var1387=org.hibernate.usertype.UserType, var1860=$r3, var199=$r5, var3247=$r6, var689=$r7}
; {org.hibernate.type.CustomType=var2213, r0=var3093, java.sql.CallableStatement=var932, r9=var1119, java.lang.Object=var1822, r10=var2362, r11=var1123, null_type=var2254, org.hibernate.engine.spi.SharedSessionContractImplementor=var3223, r12=var2310, $z0=var646, java.lang.UnsupportedOperationException=var317, $r1=var2438, $r2=var444, $r4=var3966, org.hibernate.usertype.UserType=var1387, $r3=var1860, $r5=var199, $r6=var3247, $r7=var689}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.CustomType;	r9 := @parameter0: java.sql.CallableStatement;	r10 := @parameter1: java.lang.Object;	r11 := @parameter2: java.lang.String;	r12 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor;	$z0 = virtualinvoke r0.<org.hibernate.type.CustomType: boolean canDoSetting()>();	if $z0 == 0 goto $r1 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.UnsupportedOperationException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type [");	$r3 = virtualinvoke r0.<org.hibernate.type.CustomType: org.hibernate.usertype.UserType getUserType()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does support parameter binding by name");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2