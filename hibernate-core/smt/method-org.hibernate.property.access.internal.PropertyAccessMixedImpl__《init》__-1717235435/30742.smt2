(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3804 0)
(declare-sort var716 0)
(declare-sort var2429 0)
(declare-sort var3320 0)
(declare-sort var1571 0)
(declare-sort var2063 0)
(declare-sort var92 0)
(declare-sort var2529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3320) void)
(declare-fun cast-from-var3804-to-var3320 (var3804) var3320)
(declare-fun strategy/-290315160 (var3804) var716)
(declare-fun var3804_getAccessType/1911607463 (ClassObject String) var1571)
(declare-fun ordinal/-509708060 (var1571) Int)
(declare-fun var92-init () var92)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3320) String)
(declare-fun cast-from-var1571-to-var3320 (var1571) var3320)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2856137 (var92 String) void)
(declare-fun cast-from-var92-to-var2529 (var92) var2529)
(declare-const null-var3804 var3804)
(declare-const null-var716 var716)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2063-$SwitchMap$javax$persistence$AccessType (Array Int Int))
(declare-const var3584 var3804) ; Statement: r0 := @this: org.hibernate.property.access.internal.PropertyAccessMixedImpl 
(assert (not (= var3584 null-var3804)))
(declare-const var2876 var716) ; Statement: r1 := @parameter0: org.hibernate.property.access.spi.PropertyAccessStrategy 
(assert (not (= var2876 null-var716)))
(declare-const var1699 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var1699 null-ClassObject)))
(declare-const var3847 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3847 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3804-to-var3320 var3584))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3584!1 var3804)
(declare-const var3584!2 var3804)
(assert (not (= var3584!2 null-var3804)))
(assert (= (strategy/-290315160 var3584!2) var2876)) ; Statement: r0.<org.hibernate.property.access.internal.PropertyAccessMixedImpl: org.hibernate.property.access.spi.PropertyAccessStrategy strategy> = r1 
(define-const var215 var1571 (var3804_getAccessType/1911607463 var1699 var3847)) ; Statement: r4 = staticinvoke <org.hibernate.property.access.internal.PropertyAccessMixedImpl: javax.persistence.AccessType getAccessType(java.lang.Class,java.lang.String)>(r2, r3) 
(define-const var3285 (Array Int Int) var2063-$SwitchMap$javax$persistence$AccessType) ; Statement: $r5 = <org.hibernate.property.access.internal.PropertyAccessMixedImpl$1: int[] $SwitchMap$javax$persistence$AccessType> 
(assert true)
(define-const var2836 Int (ordinal/-509708060 var215)) ; Statement: $i0 = virtualinvoke r4.<javax.persistence.AccessType: int ordinal()>() 
(define-const var50 Int (select var3285 var2836)) ; Statement: $i1 = $r5[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto r41 = staticinvoke <org.hibernate.property.access.internal.PropertyAccessMixedImpl: java.lang.reflect.Field fieldOrNull(java.lang.Class,java.lang.String)>(r2, r3);     case 2: goto r42 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Method getterMethodOrNull(java.lang.Class,java.lang.String)>(r2, r3);     default: goto $r48 = new org.hibernate.property.access.spi.PropertyAccessBuildingException; } 
(assert (and (not (= var50 2)) (and (not (= var50 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2288 var92 var92-init) ; Statement: $r48 = new org.hibernate.property.access.spi.PropertyAccessBuildingException 
(define-const var2337 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2337)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2337!1 String)
(assert (= var2337!1 ""))
(assert true)
(define-const var2744 String (append/672562846 var2337!1 "Invalid access type ")) ; Statement: $r32 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid access type ") 
(declare-const var2337!2 String)
(assert (= var2337!2 (str.++ var2337!1 "Invalid access type ")))
(assert true)
(define-const var754 String (append/-1031950772 var2744 (cast-from-var1571-to-var3320 var215))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2744!1 String)
(assert (str.prefixof var2744 var2744!1))
(assert true)
(define-const var934 String (append/672562846 var754 " for property named [")) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for property named [") 
(declare-const var754!1 String)
(assert (= var754!1 (str.++ var754 " for property named [")))
(assert true)
(define-const var183 String (getName/-1958580599 var1699)) ; Statement: $r34 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3368 String (append/672562846 var934 var183)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var934!1 String)
(assert (= var934!1 (str.++ var934 var183)))
(assert true)
(define-const var3106 String (append/672562846 var3368 "#")) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3368!1 String)
(assert (= var3368!1 (str.++ var3368 "#")))
(assert true)
(define-const var1254 String (append/672562846 var3106 var3847)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3106!1 String)
(assert (= var3106!1 (str.++ var3106 var3847)))
(assert true)
(define-const var2594 String (append/672562846 var1254 "]")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1254!1 String)
(assert (= var1254!1 (str.++ var1254 "]")))
(assert true)
(define-const var1253 String (toString/-2075883882 var2594)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2856137 var2288 var1253)) ; Statement: specialinvoke $r48.<org.hibernate.property.access.spi.PropertyAccessBuildingException: void <init>(java.lang.String)>($r40) 

(declare-const var2288!1 var92)
(declare-const var1253!1 String)
(define-const var288 var2529 (cast-from-var92-to-var2529 var2288!1)) ; Statement: $r51 = (java.lang.Throwable) $r48 
 ; Statement: throw $r51 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3804-to-var3320=([org.hibernate.property.access.internal.PropertyAccessMixedImpl], java.lang.Object), strategy/-290315160=([org.hibernate.property.access.internal.PropertyAccessMixedImpl], org.hibernate.property.access.spi.PropertyAccessStrategy), var3804_getAccessType/1911607463=([java.lang.Class, java.lang.String], javax.persistence.AccessType), ordinal/-509708060=([javax.persistence.AccessType], int), var92-init=([], org.hibernate.property.access.spi.PropertyAccessBuildingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1571-to-var3320=([javax.persistence.AccessType], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2856137=([org.hibernate.property.access.spi.PropertyAccessBuildingException, java.lang.String], void), cast-from-var92-to-var2529=([org.hibernate.property.access.spi.PropertyAccessBuildingException], java.lang.Throwable)}
; {var3804=org.hibernate.property.access.internal.PropertyAccessMixedImpl, var3584=r0, var716=org.hibernate.property.access.spi.PropertyAccessStrategy, var2876=r1, var1699=r2, var3847=r3, var2429=null_type, var3320=java.lang.Object, var1571=javax.persistence.AccessType, var215=r4, var2063=org.hibernate.property.access.internal.PropertyAccessMixedImpl$1, var3285=$r5, var2836=$i0, var50=$i1, var92=org.hibernate.property.access.spi.PropertyAccessBuildingException, var2288=$r48, var2337=$r47, var2744=$r32, var754=$r33, var934=$r35, var183=$r34, var3368=$r36, var3106=$r37, var1254=$r38, var2594=$r39, var1253=$r40, var2529=java.lang.Throwable, var288=$r51}
; {org.hibernate.property.access.internal.PropertyAccessMixedImpl=var3804, r0=var3584, org.hibernate.property.access.spi.PropertyAccessStrategy=var716, r1=var2876, r2=var1699, r3=var3847, null_type=var2429, java.lang.Object=var3320, javax.persistence.AccessType=var1571, r4=var215, org.hibernate.property.access.internal.PropertyAccessMixedImpl$1=var2063, $r5=var3285, $i0=var2836, $i1=var50, org.hibernate.property.access.spi.PropertyAccessBuildingException=var92, $r48=var2288, $r47=var2337, $r32=var2744, $r33=var754, $r35=var934, $r34=var183, $r36=var3368, $r37=var3106, $r38=var1254, $r39=var2594, $r40=var1253, java.lang.Throwable=var2529, $r51=var288}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.property.access.internal.PropertyAccessMixedImpl;	r1 := @parameter0: org.hibernate.property.access.spi.PropertyAccessStrategy;	r2 := @parameter1: java.lang.Class;	r3 := @parameter2: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.property.access.internal.PropertyAccessMixedImpl: org.hibernate.property.access.spi.PropertyAccessStrategy strategy> = r1;	r4 = staticinvoke <org.hibernate.property.access.internal.PropertyAccessMixedImpl: javax.persistence.AccessType getAccessType(java.lang.Class,java.lang.String)>(r2, r3);	$r5 = <org.hibernate.property.access.internal.PropertyAccessMixedImpl$1: int[] $SwitchMap$javax$persistence$AccessType>;	$i0 = virtualinvoke r4.<javax.persistence.AccessType: int ordinal()>();	$i1 = $r5[$i0];	lookupswitch($i1) {     case 1: goto r41 = staticinvoke <org.hibernate.property.access.internal.PropertyAccessMixedImpl: java.lang.reflect.Field fieldOrNull(java.lang.Class,java.lang.String)>(r2, r3);     case 2: goto r42 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Method getterMethodOrNull(java.lang.Class,java.lang.String)>(r2, r3);     default: goto $r48 = new org.hibernate.property.access.spi.PropertyAccessBuildingException; };	$r48 = new org.hibernate.property.access.spi.PropertyAccessBuildingException;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid access type ");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for property named [");	$r34 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r48.<org.hibernate.property.access.spi.PropertyAccessBuildingException: void <init>(java.lang.String)>($r40);	$r51 = (java.lang.Throwable) $r48;	throw $r51
;block_num 2