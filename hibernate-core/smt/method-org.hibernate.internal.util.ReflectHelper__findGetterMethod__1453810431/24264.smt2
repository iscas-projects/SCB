(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2711 0)
(declare-sort var3826 0)
(declare-sort var1546 0)
(declare-sort var1062 0)
(declare-sort var957 0)
(declare-sort var736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1546-init () var1546)
(declare-fun arr-var957-init () (Array Int var957))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var957 (String) var957)
(declare-fun String_format/-647569892 (var1062 String (Array Int var957)) String)
(declare-fun <init>/928068787 (var1546 String) void)
(declare-fun cast-from-var1546-to-var736 (var1546) var736)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var3826 var3826)
(declare-const var1062-ROOT var1062)
(declare-const null-__Array__Int__var957__ (Array Int var957))
(declare-const var2564 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2564 null-ClassObject)))
(declare-const var716 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var716 null-String)))
(define-const var983 ClassObject var2564) ; Statement: r8 = r0 
(define-const var2581 var3826 null-var3826) ; Statement: r9 = null 
(assert true) ; Non Conditional
 ; Statement: if r9 != null goto (branch) 
(assert (not (= var2581 null-var3826))) ; Cond: r9 != null 
 ; Statement: if r9 != null goto staticinvoke <org.hibernate.internal.util.ReflectHelper: void ensureAccessibility(java.lang.reflect.AccessibleObject)>(r9) 
(assert (not (not (= var2581 null-var3826)))) ; Negate: Cond: r9 != null  
(define-const var883 var1546 var1546-init) ; Statement: $r10 = new org.hibernate.PropertyNotFoundException 
(define-const var2010 var1062 var1062-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3590 (Array Int var957) arr-var957-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2840 String (getName/-1958580599 var2564)) ; Statement: $r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var3590!1 (Array Int var957))
(assert (not (= var3590!1 null-__Array__Int__var957__)))
(assert (= (select var3590!1 0) (cast-from-String-to-var957 var2840))) ; Statement: $r2[0] = $r4 
(declare-const var3590!2 (Array Int var957))
(assert (not (= var3590!2 null-__Array__Int__var957__)))
(assert (= (select var3590!2 1) (cast-from-String-to-var957 var716))) ; Statement: $r2[1] = r5 
(define-const var993 String (String_format/-647569892 var2010 "Could not locate getter method for property [%s#%s]" var3590!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "Could not locate getter method for property [%s#%s]", $r2) 
(assert true)
;(assert (<init>/928068787 var883 var993)) ; Statement: specialinvoke $r10.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r6) 

(declare-const var883!1 var1546)
(declare-const var993!1 String)
(define-const var1360 var736 (cast-from-var1546-to-var736 var883!1)) ; Statement: $r11 = (java.lang.Throwable) $r10 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1546-init=([], org.hibernate.PropertyNotFoundException), arr-var957-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var957=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/928068787=([org.hibernate.PropertyNotFoundException, java.lang.String], void), cast-from-var1546-to-var736=([org.hibernate.PropertyNotFoundException], java.lang.Throwable)}
; {var2564=r0, var716=r5, var2711=null_type, var983=r8, var3826=java.lang.reflect.Method, var2581=r9, var1546=org.hibernate.PropertyNotFoundException, var883=$r10, var1062=java.util.Locale, var2010=$r3, var957=java.lang.Object, var3590=$r2, var2840=$r4, var993=$r6, var736=java.lang.Throwable, var1360=$r11}
; {r0=var2564, r5=var716, null_type=var2711, r8=var983, java.lang.reflect.Method=var3826, r9=var2581, org.hibernate.PropertyNotFoundException=var1546, $r10=var883, java.util.Locale=var1062, $r3=var2010, java.lang.Object=var957, $r2=var3590, $r4=var2840, $r6=var993, java.lang.Throwable=var736, $r11=var1360}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r5 := @parameter1: java.lang.String;	r8 = r0;	r9 = null;	if r9 != null goto (branch);	if r9 != null goto staticinvoke <org.hibernate.internal.util.ReflectHelper: void ensureAccessibility(java.lang.reflect.AccessibleObject)>(r9);	$r10 = new org.hibernate.PropertyNotFoundException;	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = newarray (java.lang.Object)[2];	$r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r2[0] = $r4;	$r2[1] = r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "Could not locate getter method for property [%s#%s]", $r2);	specialinvoke $r10.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r6);	$r11 = (java.lang.Throwable) $r10;	throw $r11
;block_num 4