(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var308 0)
(declare-sort var1557 0)
(declare-sort var1605 0)
(declare-sort var1672 0)
(declare-sort var2941 0)
(declare-sort var3838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1672!class ClassObject)
(declare-fun getClass/1258963082 (var1605) ClassObject)
(declare-fun cast-from-var1557-to-var1605 (var1557) var1605)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var2941) String)
(declare-fun cast-from-var1557-to-var2941 (var1557) var2941)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var308 var308)
(declare-const null-var1557 var1557)
(declare-const null-String String)
(declare-const var0 var308) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy 
(assert (not (= var0 null-var308)))
(declare-const var324 var1557) ; Statement: r0 := @parameter0: java.lang.Exception 
(assert (not (= var324 null-var1557)))
(assert true)
(define-const var2668 ClassObject (getClass/1258963082 (cast-from-var1557-to-var1605 var324))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r1 != class "Ljava/io/IOException;" goto $z4 = 0 
(assert (not (= var2668 var1672!class))) ; Cond: $r1 != class "Ljava/io/IOException;" 
(define-const var2295 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(define-const var3866 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var1135 Bool var2295) ; Statement: z0 = $z4 
(define-const var3865 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3865)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3865!1 String)
(assert (= var3865!1 ""))
 ; Statement: if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var3866 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
(define-const var1889 String (getMessage/849299655 (cast-from-var1557-to-var2941 var324))) ; Statement: $r11 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
 ; Statement: if $r11 != null goto $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
(assert (not (= var1889 null-String))) ; Cond: $r11 != null 
(assert true)
(define-const var1699 String (getMessage/849299655 (cast-from-var1557-to-var2941 var324))) ; Statement: $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>() 
 ; Statement: if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var1699 null-String)) ; Cond: $r12 == null 
(assert true)
(define-const var2548 ClassObject (getClass/1258963082 (cast-from-var1557-to-var1605 var324))) ; Statement: $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2707 String (getName/-1958580599 var2548)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1281 Bool (contains/1009244746 var2707 (cast-from-String-to-String "MalformedInput"))) ; Statement: $z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput") 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1281 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2903 String (toString/-2075883882 var3865!1)) ; Statement: $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1557-to-var1605=([java.lang.Exception], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1557-to-var2941=([java.lang.Exception], java.lang.Throwable), getName/-1958580599=([java.lang.Class], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var308=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy, var0=r6, var1557=java.lang.Exception, var324=r0, var1605=java.lang.Object, var2668=$r1, var1672=java.io.IOException, var2295=$z4, var3866=$z3, var1135=z0, var3865=$r2, var2941=java.lang.Throwable, var1889=$r11, var3838=null_type, var1699=$r12, var2548=$r13, var2707=$r14, var1281=$z2, var2903=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy=var308, r6=var0, java.lang.Exception=var1557, r0=var324, java.lang.Object=var1605, $r1=var2668, java.io.IOException=var1672, $z4=var2295, $z3=var3866, z0=var1135, $r2=var3865, java.lang.Throwable=var2941, $r11=var1889, null_type=var3838, $r12=var1699, $r13=var2548, $r14=var2707, $z2=var1281, $r16=var2903}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Copy;	r0 := @parameter0: java.lang.Exception;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	if $r1 != class "Ljava/io/IOException;" goto $z4 = 0;	$z4 = 0;	$z3 = 0;	z0 = $z4;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if $z3 == 0 goto $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	if $r11 != null goto $r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	$r12 = virtualinvoke r0.<java.lang.Exception: java.lang.String getMessage()>();	if $r12 == null goto $r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$z2 = virtualinvoke $r14.<java.lang.String: boolean contains(java.lang.CharSequence)>("MalformedInput");	if $z2 == 0 goto $r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 7