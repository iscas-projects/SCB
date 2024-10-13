(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2781 0)
(declare-sort var2648 0)
(declare-sort var2089 0)
(declare-sort var547 0)
(declare-sort var332 0)
(declare-sort var3512 0)
(declare-sort var3794 0)
(declare-sort var684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var547!class ClassObject)
(declare-fun properties/-706120869 (var2781) var2089)
(declare-fun var332_getClass/1258963082 (var332) ClassObject)
(declare-fun cast-from-var2648-to-var332 (var2648) var332)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3794-init () var3794)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2648_getId/-2111934967 (var2648) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1290385087 (var3794 String var684) void)
(declare-fun cast-from-var3512-to-var684 (var3512) var684)
(declare-const null-var2781 var2781)
(declare-const null-var2648 var2648)
(declare-const null-var2089 var2089)
(declare-const null-var3512 var3512)
(declare-const var1413 var2781) ; Statement: r0 := @this: org.apache.ibatis.mapping.CacheBuilder 
(assert (not (= var1413 null-var2781)))
(declare-const var3573 var2648) ; Statement: r2 := @parameter0: org.apache.ibatis.cache.Cache 
(assert (not (= var3573 null-var2648)))
(define-const var1844 var2089 (properties/-706120869 var1413)) ; Statement: $r1 = r0.<org.apache.ibatis.mapping.CacheBuilder: java.util.Properties properties> 
 ; Statement: if $r1 == null goto $r4 = class "Lorg/apache/ibatis/builder/InitializingObject;" 
(assert (= var1844 null-var2089)) ; Cond: $r1 == null 
(define-const var1858 ClassObject var547!class) ; Statement: $r4 = class "Lorg/apache/ibatis/builder/InitializingObject;" 
(define-const var2101 ClassObject (var332_getClass/1258963082 (cast-from-var2648-to-var332 var3573))) ; Statement: $r3 = interfaceinvoke r2.<org.apache.ibatis.cache.Cache: java.lang.Class getClass()>() 
(assert true)
(define-const var2912 Bool (isAssignableFrom/-1028998700 var1858 var2101)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2912 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1182 var3512) ; Statement: $r37 := @caughtexception 
(assert (not (= var1182 null-var3512)))
(define-const var1128 var3794 var3794-init) ; Statement: $r38 = new org.apache.ibatis.cache.CacheException 
(define-const var3949 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3949)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3949!1 String)
(assert (= var3949!1 ""))
(assert true)
(define-const var3502 String (append/672562846 var3949!1 "Failed cache initialization for \u0027")) ; Statement: $r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed cache initialization for \'") 
(declare-const var3949!2 String)
(assert (= var3949!2 (str.++ var3949!1 "Failed cache initialization for \u0027")))
(define-const var1114 String (var2648_getId/-2111934967 var3573)) ; Statement: $r40 = interfaceinvoke r2.<org.apache.ibatis.cache.Cache: java.lang.String getId()>() 
(assert true)
(define-const var81 String (append/672562846 var3502 var1114)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3502!1 String)
(assert (= var3502!1 (str.++ var3502 var1114)))
(assert true)
(define-const var3865 String (append/672562846 var81 "\u0027 on \u0027")) ; Statement: $r45 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' on \'") 
(declare-const var81!1 String)
(assert (= var81!1 (str.++ var81 "\u0027 on \u0027")))
(define-const var1393 ClassObject (var332_getClass/1258963082 (cast-from-var2648-to-var332 var3573))) ; Statement: $r43 = interfaceinvoke r2.<org.apache.ibatis.cache.Cache: java.lang.Class getClass()>() 
(assert true)
(define-const var3357 String (getName/-1958580599 var1393)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1618 String (append/672562846 var3865 var3357)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44) 
(declare-const var3865!1 String)
(assert (= var3865!1 (str.++ var3865 var3357)))
(assert true)
(define-const var903 String (append/672562846 var1618 "\u0027")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1618!1 String)
(assert (= var1618!1 (str.++ var1618 "\u0027")))
(assert true)
(define-const var3443 String (toString/-2075883882 var903)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1290385087 var1128 var3443 (cast-from-var3512-to-var684 var1182))) ; Statement: specialinvoke $r38.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r48, $r37) 

(declare-const var1128!1 var3794)
(declare-const var3443!1 String)
(declare-const var1182!1 var3512)
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {properties/-706120869=([org.apache.ibatis.mapping.CacheBuilder], java.util.Properties), var332_getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2648-to-var332=([org.apache.ibatis.cache.Cache], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3794-init=([], org.apache.ibatis.cache.CacheException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2648_getId/-2111934967=([org.apache.ibatis.cache.Cache], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1290385087=([org.apache.ibatis.cache.CacheException, java.lang.String, java.lang.Throwable], void), cast-from-var3512-to-var684=([java.lang.Exception], java.lang.Throwable)}
; {var2781=org.apache.ibatis.mapping.CacheBuilder, var1413=r0, var2648=org.apache.ibatis.cache.Cache, var3573=r2, var2089=java.util.Properties, var1844=$r1, var547=org.apache.ibatis.builder.InitializingObject, var1858=$r4, var332=java.lang.Object, var2101=$r3, var2912=$z0, var3512=java.lang.Exception, var1182=$r37, var3794=org.apache.ibatis.cache.CacheException, var1128=$r38, var3949=$r39, var3502=$r41, var1114=$r40, var81=$r42, var3865=$r45, var1393=$r43, var3357=$r44, var1618=$r46, var903=$r47, var3443=$r48, var684=java.lang.Throwable}
; {org.apache.ibatis.mapping.CacheBuilder=var2781, r0=var1413, org.apache.ibatis.cache.Cache=var2648, r2=var3573, java.util.Properties=var2089, $r1=var1844, org.apache.ibatis.builder.InitializingObject=var547, $r4=var1858, java.lang.Object=var332, $r3=var2101, $z0=var2912, java.lang.Exception=var3512, $r37=var1182, org.apache.ibatis.cache.CacheException=var3794, $r38=var1128, $r39=var3949, $r41=var3502, $r40=var1114, $r42=var81, $r45=var3865, $r43=var1393, $r44=var3357, $r46=var1618, $r47=var903, $r48=var3443, java.lang.Throwable=var684}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.CacheBuilder;	r2 := @parameter0: org.apache.ibatis.cache.Cache;	$r1 = r0.<org.apache.ibatis.mapping.CacheBuilder: java.util.Properties properties>;	if $r1 == null goto $r4 = class "Lorg/apache/ibatis/builder/InitializingObject;";	$r4 = class "Lorg/apache/ibatis/builder/InitializingObject;";	$r3 = interfaceinvoke r2.<org.apache.ibatis.cache.Cache: java.lang.Class getClass()>();	$z0 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 == 0 goto return;	$r37 := @caughtexception;	$r38 = new org.apache.ibatis.cache.CacheException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed cache initialization for \'");	$r40 = interfaceinvoke r2.<org.apache.ibatis.cache.Cache: java.lang.String getId()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r45 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' on \'");	$r43 = interfaceinvoke r2.<org.apache.ibatis.cache.Cache: java.lang.Class getClass()>();	$r44 = virtualinvoke $r43.<java.lang.Class: java.lang.String getName()>();	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r44);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r38.<org.apache.ibatis.cache.CacheException: void <init>(java.lang.String,java.lang.Throwable)>($r48, $r37);	throw $r38
;block_num 3