(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var280 0)
(declare-sort var3834 0)
(declare-sort var2362 0)
(declare-sort var652 0)
(declare-sort var839 0)
(declare-sort var1220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var652!class ClassObject)
(declare-fun getClass/1258963082 (var2362) ClassObject)
(declare-fun cast-from-var3834-to-var2362 (var3834) var2362)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var839) String)
(declare-fun cast-from-var3834-to-var839 (var3834) var839)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var280 var280)
(declare-const null-var3834 var3834)
(declare-const null-String String)
(declare-const var1142 var280) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy 
(assert (not (= var1142 null-var280)))
(declare-const var3496 var3834) ; Statement: r0 := @parameter0: java.lang.Exception 
(assert (not (= var3496 null-var3834)))
(assert true)
(define-const var3238 ClassObject (getClass/1258963082 (cast-from-var3834-to-var2362 var3496))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r1 != class "Ljava/io/IOException;" goto $z4 = 0 
(assert (not (not (= var3238 var652!class)))) ; Negate: Cond: $r1 != class "Ljava/io/IOException;"  
(define-const var2249 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
(define-const var241 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= z0 = $z4] 
(assert true) ; Non Conditional
(define-const var315 Bool var2249) ; Statement: z0 = $z4 
(define-const var1518 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1518)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1518!1 String)
(assert (= var1518!1 ""))
 ; Statement: if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var241 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var1938 ClassObject (getClass/1258963082 (cast-from-var3834-to-var2362 var3496))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var647 String (getName/-1958580599 var1938)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1518!1 var647)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1518!2 String)
(assert (= var1518!2 (str.++ var1518!1 var647)))
(assert true) ; Non Conditional
(assert true)
(define-const var1219 String (getMessage/849299655 (cast-from-var3834-to-var839 var3496))) ; Statement: $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
 ; Statement: if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var1219 null-String)) ; Cond: $r12 == null 
(assert true)
(define-const var589 ClassObject (getClass/1258963082 (cast-from-var3834-to-var2362 var3496))) ; Statement: $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1127 String (getName/-1958580599 var589)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3978 Bool (contains/1009244746 var1127 (cast-from-String-to-String "MalformedInput"))) ; Statement: $z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput") 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3978 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1978 String (toString/-2075883882 var1518!2)) ; Statement: $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3834-to-var2362=([java.lang.Exception], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3834-to-var839=([java.lang.Exception], java.lang.Throwable), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var280=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy, var1142=r6, var3834=java.lang.Exception, var3496=r0, var2362=java.lang.Object, var3238=$r1, var652=java.io.IOException, var2249=$z4, var241=$z3, var315=z0, var1518=$r2, var1938=$r3, var647=$r4, var839=java.lang.Throwable, var1219=$r12, var1220=null_type, var589=$r13, var1127=$r14, var3978=$z2, var1978=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy=var280, r6=var1142, java.lang.Exception=var3834, r0=var3496, java.lang.Object=var2362, $r1=var3238, java.io.IOException=var652, $z4=var2249, $z3=var241, z0=var315, $r2=var1518, $r3=var1938, $r4=var647, java.lang.Throwable=var839, $r12=var1219, null_type=var1220, $r13=var589, $r14=var1127, $z2=var3978, $r16=var1978}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy;	r0 := @parameter0: java.lang.Exception;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if $r1 != class "Ljava/io/IOException;" goto $z4 = 0;	$z4 = 1;	$z3 = 1;	goto [?= z0 = $z4];	z0 = $z4;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput");	if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 7