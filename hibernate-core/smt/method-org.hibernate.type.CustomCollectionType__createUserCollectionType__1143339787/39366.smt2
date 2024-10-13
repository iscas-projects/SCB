(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2546 0)
(declare-sort var3770 0)
(declare-sort var574 0)
(declare-sort var2343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2546!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var574-init () var574)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var574 String) void)
(declare-fun cast-from-var574-to-var2343 (var574) var2343)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3770 var3770)
(declare-const var2463 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2463 null-ClassObject)))
(define-const var2188 ClassObject var2546!class) ; Statement: $r1 = class "Lorg/hibernate/usertype/UserCollectionType;" 
(assert true)
(define-const var2295 Bool (isAssignableFrom/-1028998700 var2188 var2463)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Object newInstance()>() 
(assert (not (not (= (ite var2295 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var3855 var3770) ; Statement: $r10 := @caughtexception 
(assert (not (= var3855 null-var3770)))
(define-const var3995 var574 var574-init) ; Statement: $r29 = new org.hibernate.MappingException 
(define-const var801 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var801)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var801!1 String)
(assert (= var801!1 ""))
(assert true)
(define-const var1543 String (append/672562846 var801!1 "IllegalAccessException trying to instantiate custom type: ")) ; Statement: $r14 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IllegalAccessException trying to instantiate custom type: ") 
(declare-const var801!2 String)
(assert (= var801!2 (str.++ var801!1 "IllegalAccessException trying to instantiate custom type: ")))
(assert true)
(define-const var2984 String (getName/-1958580599 var2463)) ; Statement: $r13 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1699 String (append/672562846 var1543 var2984)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1543!1 String)
(assert (= var1543!1 (str.++ var1543 var2984)))
(assert true)
(define-const var1976 String (toString/-2075883882 var1699)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3995 var1976)) ; Statement: specialinvoke $r29.<org.hibernate.MappingException: void <init>(java.lang.String)>($r16) 

(declare-const var3995!1 var574)
(declare-const var1976!1 String)
(define-const var3050 var2343 (cast-from-var574-to-var2343 var3995!1)) ; Statement: $r32 = (java.lang.Throwable) $r29 
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var574-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var574-to-var2343=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2463=r0, var2546=org.hibernate.usertype.UserCollectionType, var2188=$r1, var2295=$z0, var3770=java.lang.IllegalAccessException, var3855=$r10, var574=org.hibernate.MappingException, var3995=$r29, var801=$r28, var1543=$r14, var2984=$r13, var1699=$r15, var1976=$r16, var2343=java.lang.Throwable, var3050=$r32}
; {r0=var2463, org.hibernate.usertype.UserCollectionType=var2546, $r1=var2188, $z0=var2295, java.lang.IllegalAccessException=var3770, $r10=var3855, org.hibernate.MappingException=var574, $r29=var3995, $r28=var801, $r14=var1543, $r13=var2984, $r15=var1699, $r16=var1976, java.lang.Throwable=var2343, $r32=var3050}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = class "Lorg/hibernate/usertype/UserCollectionType;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r2 = virtualinvoke r0.<java.lang.Class: java.lang.Object newInstance()>();	$r10 := @caughtexception;	$r29 = new org.hibernate.MappingException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IllegalAccessException trying to instantiate custom type: ");	$r13 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.MappingException: void <init>(java.lang.String)>($r16);	$r32 = (java.lang.Throwable) $r29;	throw $r32
;block_num 2