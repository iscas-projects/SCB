(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var1651 0)
(declare-sort var1223 0)
(declare-sort var2391 0)
(declare-sort var1490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1223-init () var1223)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2391) String)
(declare-fun cast-from-ClassObject-to-var2391 (ClassObject) var2391)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1017745449 (var1223 String var1490) void)
(declare-fun cast-from-var1651-to-var1490 (var1651) var1490)
(declare-const null-var617 var617)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1651 var1651)
(declare-const var2935 var617) ; Statement: r24 := @this: org.apache.ibatis.type.TypeHandlerRegistry 
(assert (not (= var2935 null-var617)))
(declare-const var2396 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2396 null-ClassObject)))
(declare-const var300 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var300 null-ClassObject)))
 ; Statement: if r0 == null goto $r2 = newarray (java.lang.Class)[0] 
(assert (= var2396 null-ClassObject)) ; Cond: r0 == null 
(define-const var1060 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r2 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2717 var1651) ; Statement: $r10 := @caughtexception 
(assert (not (= var2717 null-var1651)))
(define-const var2421 var1223 var1223-init) ; Statement: $r11 = new org.apache.ibatis.type.TypeException 
(define-const var663 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var663)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var663!1 String)
(assert (= var663!1 ""))
(assert true)
(define-const var3818 String (append/672562846 var663!1 "Unable to find a usable constructor for ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find a usable constructor for ") 
(declare-const var663!2 String)
(assert (= var663!2 (str.++ var663!1 "Unable to find a usable constructor for ")))
(assert true)
(define-const var3548 String (append/-1031950772 var3818 (cast-from-ClassObject-to-var2391 var300))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3818!1 String)
(assert (str.prefixof var3818 var3818!1))
(assert true)
(define-const var2881 String (toString/-2075883882 var3548)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1017745449 var2421 var2881 (cast-from-var1651-to-var1490 var2717))) ; Statement: specialinvoke $r11.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10) 

(declare-const var2421!1 var1223)
(declare-const var2881!1 String)
(declare-const var2717!1 var1651)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1223-init=([], org.apache.ibatis.type.TypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2391=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1017745449=([org.apache.ibatis.type.TypeException, java.lang.String, java.lang.Throwable], void), cast-from-var1651-to-var1490=([java.lang.Exception], java.lang.Throwable)}
; {var617=org.apache.ibatis.type.TypeHandlerRegistry, var2935=r24, var2396=r0, var300=r1, var1060=$r2, var1651=java.lang.Exception, var2717=$r10, var1223=org.apache.ibatis.type.TypeException, var2421=$r11, var663=$r12, var3818=$r13, var2391=java.lang.Object, var3548=$r14, var2881=$r15, var1490=java.lang.Throwable}
; {org.apache.ibatis.type.TypeHandlerRegistry=var617, r24=var2935, r0=var2396, r1=var300, $r2=var1060, java.lang.Exception=var1651, $r10=var2717, org.apache.ibatis.type.TypeException=var1223, $r11=var2421, $r12=var663, $r13=var3818, java.lang.Object=var2391, $r14=var3548, $r15=var2881, java.lang.Throwable=var1490}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r24 := @this: org.apache.ibatis.type.TypeHandlerRegistry;	r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Class;	if r0 == null goto $r2 = newarray (java.lang.Class)[0];	$r2 = newarray (java.lang.Class)[0];	$r10 := @caughtexception;	$r11 = new org.apache.ibatis.type.TypeException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find a usable constructor for ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r10);	throw $r11
;block_num 3