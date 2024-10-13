(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var259 0)
(declare-sort var3456 0)
(declare-sort var1750 0)
(declare-sort var2585 0)
(declare-sort var3825 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1750) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3825-init () var3825)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun append/-1031950772 (String var1750) String)
(declare-fun cast-from-ClassObject-to-var1750 (ClassObject) var1750)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var3825 String var1706) void)
(declare-fun cast-from-var2585-to-var1706 (var2585) var1706)
(declare-const null-var259 var259)
(declare-const null-String String)
(declare-const null-var1750 var1750)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2585 var2585)
(declare-const var2254 var259) ; Statement: r12 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl 
(assert (not (= var2254 null-var259)))
(declare-const var1079 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1079 null-String)))
(declare-const var2772 var1750) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2772 null-var1750)))
(declare-const var534 ClassObject) ; Statement: r0 := @parameter2: java.lang.Class 
(assert (not (= var534 null-ClassObject)))
(define-const var3868 var1750 null-var1750) ; Statement: r32 = null 
(define-const var3560 ClassObject null-ClassObject) ; Statement: r33 = null 
(assert true)
(define-const var1977 ClassObject (getClass/1258963082 var2772)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2514 Bool (isAssignableFrom/-1028998700 var534 var1977)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2) 
 ; Statement: if $z0 == 0 goto $z1 = r1 instanceof java.lang.Class 
(assert (not (= (ite var2514 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3868!1 var1750 var2772) ; Statement: r32 = r1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r33 == null goto return r32 
(assert (not (= var3560 null-ClassObject))) ; Negate: Cond: r33 == null  
(declare-const var867 var2585) ; Statement: $r16 := @caughtexception 
(assert (not (= var867 null-var2585)))
(define-const var274 var3825 var3825-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(define-const var3288 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3288)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3288!1 String)
(assert (= var3288!1 ""))
(assert true)
(define-const var2694 String (append/672562846 var3288!1 "The ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var3288!2 String)
(assert (= var3288!2 (str.++ var3288!1 "The ")))
(assert true)
(define-const var2472 String (getSimpleName/-390194377 var534)) ; Statement: $r19 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1831 String (append/672562846 var2694 var2472)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2694!1 String)
(assert (= var2694!1 (str.++ var2694 var2472)))
(assert true)
(define-const var1057 String (append/672562846 var1831 " class [")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" class [") 
(declare-const var1831!1 String)
(assert (= var1831!1 (str.++ var1831 " class [")))
(assert true)
(define-const var2281 String (append/-1031950772 var1057 (cast-from-ClassObject-to-var1750 var3560))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r33) 
(declare-const var1057!1 String)
(assert (str.prefixof var1057 var1057!1))
(assert true)
(define-const var1723 String (append/672562846 var2281 "] could not be instantiated!")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] could not be instantiated!") 
(declare-const var2281!1 String)
(assert (= var2281!1 (str.++ var2281 "] could not be instantiated!")))
(assert true)
(define-const var1592 String (toString/-2075883882 var1723)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var274 var1592 (cast-from-var2585-to-var1706 var867))) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r16) 

(declare-const var274!1 var3825)
(declare-const var1592!1 String)
(declare-const var867!1 var2585)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3825-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1750=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var2585-to-var1706=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var259=org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl, var2254=r12, var1079=r5, var3456=null_type, var1750=java.lang.Object, var2772=r1, var534=r0, var3868=r32, var3560=r33, var1977=$r2, var2514=$z0, var2585=java.lang.ReflectiveOperationException, var867=$r16, var3825=java.lang.IllegalArgumentException, var274=$r17, var3288=$r18, var2694=$r20, var2472=$r19, var1831=$r21, var1057=$r22, var2281=$r23, var1723=$r24, var1592=$r25, var1706=java.lang.Throwable}
; {org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl=var259, r12=var2254, r5=var1079, null_type=var3456, java.lang.Object=var1750, r1=var2772, r0=var534, r32=var3868, r33=var3560, $r2=var1977, $z0=var2514, java.lang.ReflectiveOperationException=var2585, $r16=var867, java.lang.IllegalArgumentException=var3825, $r17=var274, $r18=var3288, $r20=var2694, $r19=var2472, $r21=var1831, $r22=var1057, $r23=var2281, $r24=var1723, $r25=var1592, java.lang.Throwable=var1706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.jpa.boot.internal.EntityManagerFactoryBuilderImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Class;	r32 = null;	r33 = null;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r2);	if $z0 == 0 goto $z1 = r1 instanceof java.lang.Class;	r32 = r1;	goto [?= (branch)];	if r33 == null goto return r32;	$r16 := @caughtexception;	$r17 = new java.lang.IllegalArgumentException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r19 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" class [");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r33);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] could not be instantiated!");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r16);	throw $r17
;block_num 4