(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2407 0)
(declare-sort var463 0)
(declare-sort var1409 0)
(declare-sort var43 0)
(declare-sort var3701 0)
(declare-sort var3424 0)
(declare-sort var1819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1409_setterMethodOrNull/1917059858 (ClassObject String ClassObject) var463)
(declare-fun var43-init () var43)
(declare-fun arr-var3424-init () (Array Int var3424))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var3424 (String) var3424)
(declare-fun String_format/-647569892 (var3701 String (Array Int var3424)) String)
(declare-fun <init>/928068787 (var43 String) void)
(declare-fun cast-from-var43-to-var1819 (var43) var1819)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var463 var463)
(declare-const var3701-ROOT var3701)
(declare-const null-__Array__Int__var3424__ (Array Int var3424))
(declare-const var205 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var205 null-ClassObject)))
(declare-const var3642 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3642 null-String)))
(declare-const var541 ClassObject) ; Statement: r2 := @parameter2: java.lang.Class 
(assert (not (= var541 null-ClassObject)))
(define-const var1564 var463 (var1409_setterMethodOrNull/1917059858 var205 var3642 var541)) ; Statement: r3 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Method setterMethodOrNull(java.lang.Class,java.lang.String,java.lang.Class)>(r0, r1, r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1564 null-var463)))) ; Negate: Cond: r3 != null  
(define-const var3975 var43 var43-init) ; Statement: $r9 = new org.hibernate.PropertyNotFoundException 
(define-const var3331 var3701 var3701-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1865 (Array Int var3424) arr-var3424-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var3840 String (getName/-1958580599 var205)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1865!1 (Array Int var3424))
(assert (not (= var1865!1 null-__Array__Int__var3424__)))
(assert (= (select var1865!1 0) (cast-from-String-to-var3424 var3840))) ; Statement: $r5[0] = $r7 
(declare-const var1865!2 (Array Int var3424))
(assert (not (= var1865!2 null-__Array__Int__var3424__)))
(assert (= (select var1865!2 1) (cast-from-String-to-var3424 var3642))) ; Statement: $r5[1] = r1 
(define-const var2299 String (String_format/-647569892 var3331 "Could not locate setter method for property [%s#%s]" var1865!2)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Could not locate setter method for property [%s#%s]", $r5) 
(assert true)
;(assert (<init>/928068787 var3975 var2299)) ; Statement: specialinvoke $r9.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r8) 

(declare-const var3975!1 var43)
(declare-const var2299!1 String)
(define-const var3321 var1819 (cast-from-var43-to-var1819 var3975!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1409_setterMethodOrNull/1917059858=([java.lang.Class, java.lang.String, java.lang.Class], java.lang.reflect.Method), var43-init=([], org.hibernate.PropertyNotFoundException), arr-var3424-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var3424=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/928068787=([org.hibernate.PropertyNotFoundException, java.lang.String], void), cast-from-var43-to-var1819=([org.hibernate.PropertyNotFoundException], java.lang.Throwable)}
; {var205=r0, var3642=r1, var2407=null_type, var541=r2, var463=java.lang.reflect.Method, var1409=org.hibernate.internal.util.ReflectHelper, var1564=r3, var43=org.hibernate.PropertyNotFoundException, var3975=$r9, var3701=java.util.Locale, var3331=$r6, var3424=java.lang.Object, var1865=$r5, var3840=$r7, var2299=$r8, var1819=java.lang.Throwable, var3321=$r10}
; {r0=var205, r1=var3642, null_type=var2407, r2=var541, java.lang.reflect.Method=var463, org.hibernate.internal.util.ReflectHelper=var1409, r3=var1564, org.hibernate.PropertyNotFoundException=var43, $r9=var3975, java.util.Locale=var3701, $r6=var3331, java.lang.Object=var3424, $r5=var1865, $r7=var3840, $r8=var2299, java.lang.Throwable=var1819, $r10=var3321}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class;	r3 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Method setterMethodOrNull(java.lang.Class,java.lang.String,java.lang.Class)>(r0, r1, r2);	if r3 != null goto return r3;	$r9 = new org.hibernate.PropertyNotFoundException;	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = newarray (java.lang.Object)[2];	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r5[0] = $r7;	$r5[1] = r1;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Could not locate setter method for property [%s#%s]", $r5);	specialinvoke $r9.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r8);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2