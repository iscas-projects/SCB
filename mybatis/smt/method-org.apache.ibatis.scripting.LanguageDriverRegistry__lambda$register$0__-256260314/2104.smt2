(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var118 0)
(declare-sort var1905 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1905-init () var1905)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1831760983 (var1905 String var2280) void)
(declare-fun cast-from-var118-to-var2280 (var118) var2280)
(declare-const null-ClassObject ClassObject)
(declare-const null-var118 var118)
(declare-const var1573 ClassObject) ; Statement: r9 := @parameter0: java.lang.Class 
(assert (not (= var1573 null-ClassObject)))
(declare-const var619 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var619 null-ClassObject)))
(define-const var801 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var464 var118) ; Statement: $r6 := @caughtexception 
(assert (not (= var464 null-var118)))
(define-const var1342 var1905 var1905-init) ; Statement: $r7 = new org.apache.ibatis.scripting.ScriptingException 
(define-const var1787 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1787)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1787!1 String)
(assert (= var1787!1 ""))
(assert true)
(define-const var3172 String (append/672562846 var1787!1 "Failed to load language driver for ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to load language driver for ") 
(declare-const var1787!2 String)
(assert (= var1787!2 (str.++ var1787!1 "Failed to load language driver for ")))
(assert true)
(define-const var3556 String (getName/-1958580599 var1573)) ; Statement: $r10 = virtualinvoke r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1055 String (append/672562846 var3172 var3556)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3172!1 String)
(assert (= var3172!1 (str.++ var3172 var3556)))
(assert true)
(define-const var1580 String (toString/-2075883882 var1055)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1831760983 var1342 var1580 (cast-from-var118-to-var2280 var464))) ; Statement: specialinvoke $r7.<org.apache.ibatis.scripting.ScriptingException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var1342!1 var1905)
(declare-const var1580!1 String)
(declare-const var464!1 var118)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1905-init=([], org.apache.ibatis.scripting.ScriptingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1831760983=([org.apache.ibatis.scripting.ScriptingException, java.lang.String, java.lang.Throwable], void), cast-from-var118-to-var2280=([java.lang.Exception], java.lang.Throwable)}
; {var1573=r9, var619=r0, var801=$r1, var118=java.lang.Exception, var464=$r6, var1905=org.apache.ibatis.scripting.ScriptingException, var1342=$r7, var1787=$r8, var3172=$r11, var3556=$r10, var1055=$r12, var1580=$r13, var2280=java.lang.Throwable}
; {r9=var1573, r0=var619, $r1=var801, java.lang.Exception=var118, $r6=var464, org.apache.ibatis.scripting.ScriptingException=var1905, $r7=var1342, $r8=var1787, $r11=var3172, $r10=var3556, $r12=var1055, $r13=var1580, java.lang.Throwable=var2280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r6 := @caughtexception;	$r7 = new org.apache.ibatis.scripting.ScriptingException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to load language driver for ");	$r10 = virtualinvoke r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.scripting.ScriptingException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2