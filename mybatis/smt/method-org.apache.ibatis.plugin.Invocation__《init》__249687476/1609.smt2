(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3269 0)
(declare-sort var3087 0)
(declare-sort var2148 0)
(declare-sort var3000 0)
(declare-sort var3066 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3087) void)
(declare-fun cast-from-var3269-to-var3087 (var3269) var3087)
(declare-fun getDeclaringClass/501867354 (var2148) ClassObject)
(declare-fun var3000_contains/-441121415 (var3000 var3087) Bool)
(declare-fun cast-from-ClassObject-to-var3087 (ClassObject) var3087)
(declare-fun var3066-init () var3066)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3087) String)
(declare-fun cast-from-var2148-to-var3087 (var2148) var3087)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3066 String) void)
(declare-const null-var3269 var3269)
(declare-const null-var3087 var3087)
(declare-const null-var2148 var2148)
(declare-const null-__Array__Int__var3087__ (Array Int var3087))
(declare-const var3269-targetClasses var3000)
(declare-const var1212 var3269) ; Statement: r0 := @this: org.apache.ibatis.plugin.Invocation 
(assert (not (= var1212 null-var3269)))
(declare-const var2880 var3087) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2880 null-var3087)))
(declare-const var581 var2148) ; Statement: r1 := @parameter1: java.lang.reflect.Method 
(assert (not (= var581 null-var2148)))
(declare-const var3022 (Array Int var3087)) ; Statement: r5 := @parameter2: java.lang.Object[] 
(assert (not (= var3022 null-__Array__Int__var3087__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3269-to-var3087 var1212))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1212!1 var3269)
(define-const var3460 var3000 var3269-targetClasses) ; Statement: $r2 = <org.apache.ibatis.plugin.Invocation: java.util.List targetClasses> 
(assert true)
(define-const var29 ClassObject (getDeclaringClass/501867354 var581)) ; Statement: $r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(define-const var1655 Bool (var3000_contains/-441121415 var3460 (cast-from-ClassObject-to-var3087 var29))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object target> = r4 
(assert (not (not (= (ite var1655 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2737 var3066 var3066-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1051 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1051)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1051!1 String)
(assert (= var1051!1 ""))
(assert true)
(define-const var842 String (append/672562846 var1051!1 "Method \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \'") 
(declare-const var1051!2 String)
(assert (= var1051!2 (str.++ var1051!1 "Method \u0027")))
(assert true)
(define-const var3310 String (append/-1031950772 var842 (cast-from-var2148-to-var3087 var581))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var842!1 String)
(assert (str.prefixof var842 var842!1))
(assert true)
(define-const var680 String (append/672562846 var3310 "\u0027 is not supported as a plugin target.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not supported as a plugin target.") 
(declare-const var3310!1 String)
(assert (= var3310!1 (str.++ var3310 "\u0027 is not supported as a plugin target.")))
(assert true)
(define-const var3144 String (toString/-2075883882 var680)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2737 var3144)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2737!1 var3066)
(declare-const var3144!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3269-to-var3087=([org.apache.ibatis.plugin.Invocation], java.lang.Object), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), var3000_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-ClassObject-to-var3087=([java.lang.Class], java.lang.Object), var3066-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2148-to-var3087=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3269=org.apache.ibatis.plugin.Invocation, var1212=r0, var3087=java.lang.Object, var2880=r4, var2148=java.lang.reflect.Method, var581=r1, var3022=r5, var3000=java.util.List, var3460=$r2, var29=$r3, var1655=$z0, var3066=java.lang.IllegalArgumentException, var2737=$r6, var1051=$r7, var842=$r8, var3310=$r9, var680=$r10, var3144=$r11}
; {org.apache.ibatis.plugin.Invocation=var3269, r0=var1212, java.lang.Object=var3087, r4=var2880, java.lang.reflect.Method=var2148, r1=var581, r5=var3022, java.util.List=var3000, $r2=var3460, $r3=var29, $z0=var1655, java.lang.IllegalArgumentException=var3066, $r6=var2737, $r7=var1051, $r8=var842, $r9=var3310, $r10=var680, $r11=var3144}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.plugin.Invocation;	r4 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.reflect.Method;	r5 := @parameter2: java.lang.Object[];	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = <org.apache.ibatis.plugin.Invocation: java.util.List targetClasses>;	$r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>($r3);	if $z0 != 0 goto r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object target> = r4;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not supported as a plugin target.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2