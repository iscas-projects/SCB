(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var251 0)
(declare-sort var2812 0)
(declare-sort var2035 0)
(declare-sort var2654 0)
(declare-sort var1204 0)
(declare-sort var548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2654!class ClassObject)
(declare-fun getClass/1258963082 (var2035) ClassObject)
(declare-fun cast-from-var2812-to-var2035 (var2812) var2035)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1204) String)
(declare-fun cast-from-var2812-to-var1204 (var2812) var1204)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var251 var251)
(declare-const null-var2812 var2812)
(declare-const null-String String)
(declare-const var1567 var251) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy 
(assert (not (= var1567 null-var251)))
(declare-const var532 var2812) ; Statement: r0 := @parameter0: java.lang.Exception 
(assert (not (= var532 null-var2812)))
(assert true)
(define-const var680 ClassObject (getClass/1258963082 (cast-from-var2812-to-var2035 var532))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r1 != class "Ljava/io/IOException;" goto $z4 = 0 
(assert (not (= var680 var2654!class))) ; Cond: $r1 != class "Ljava/io/IOException;" 
(define-const var2876 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(define-const var3682 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var1784 Bool var2876) ; Statement: z0 = $z4 
(define-const var2049 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2049)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2049!1 String)
(assert (= var2049!1 ""))
 ; Statement: if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var3682 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var2777 ClassObject (getClass/1258963082 (cast-from-var2812-to-var2035 var532))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2773 String (getName/-1958580599 var2777)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var2049!1 var2773)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2049!2 String)
(assert (= var2049!2 (str.++ var2049!1 var2773)))
(assert true) ; Non Conditional
(assert true)
(define-const var3694 String (getMessage/849299655 (cast-from-var2812-to-var1204 var532))) ; Statement: $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
 ; Statement: if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var3694 null-String)) ; Cond: $r12 == null 
(assert true)
(define-const var3719 ClassObject (getClass/1258963082 (cast-from-var2812-to-var2035 var532))) ; Statement: $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var171 String (getName/-1958580599 var3719)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var318 Bool (contains/1009244746 var171 (cast-from-String-to-String "MalformedInput"))) ; Statement: $z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput") 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var318 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2813 String (toString/-2075883882 var2049!2)) ; Statement: $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2812-to-var2035=([java.lang.Exception], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2812-to-var1204=([java.lang.Exception], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var251=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy, var1567=r6, var2812=java.lang.Exception, var532=r0, var2035=java.lang.Object, var680=$r1, var2654=java.io.IOException, var2876=$z4, var3682=$z3, var1784=z0, var2049=$r2, var2777=$r3, var2773=$r4, var1204=java.lang.Throwable, var3694=$r12, var548=null_type, var3719=$r13, var171=$r14, var318=$z2, var2813=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy=var251, r6=var1567, java.lang.Exception=var2812, r0=var532, java.lang.Object=var2035, $r1=var680, java.io.IOException=var2654, $z4=var2876, $z3=var3682, z0=var1784, $r2=var2049, $r3=var2777, $r4=var2773, java.lang.Throwable=var1204, $r12=var3694, null_type=var548, $r13=var3719, $r14=var171, $z2=var318, $r16=var2813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy;	r0 := @parameter0: java.lang.Exception;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if $r1 != class "Ljava/io/IOException;" goto $z4 = 0;	$z4 = 0;	$z3 = 0;	z0 = $z4;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput");	if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 7