(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1225 0)
(declare-sort var1855 0)
(declare-sort var1941 0)
(declare-sort var2074 0)
(declare-sort var3312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun append/-1031950772 (String var3312) String)
(declare-fun cast-from-var1855-to-var3312 (var1855) var3312)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1941_error/1469573001 (var1941 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1855 var1855)
(declare-const var2074-log var1941)
(declare-const var2225 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2225 null-ClassObject)))
(declare-const var2734 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2734 null-String)))
(declare-const var2559 (Array Int ClassObject)) ; Statement: r2 := @parameter2: java.lang.Class[] 
(assert (not (= var2559 null-__Array__Int__ClassObject__)))
 ; Statement: if r0 != null goto $r3 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r1, r2) 
(assert (not (not (= var2225 null-ClassObject)))) ; Negate: Cond: r0 != null  
(declare-const var145 var1855) ; Statement: $r17 := @caughtexception 
(assert (not (= var145 null-var1855)))
(define-const var694 var1941 var2074-log) ; Statement: $r19 = <org.apache.ibatis.io.VFS: org.apache.ibatis.logging.Log log> 
(define-const var3204 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3204)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3204!1 String)
(assert (= var3204!1 ""))
(assert true)
(define-const var1131 String (append/672562846 var3204!1 "Security exception looking for method ")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security exception looking for method ") 
(declare-const var3204!2 String)
(assert (= var3204!2 (str.++ var3204!1 "Security exception looking for method ")))
(assert true)
(define-const var69 String (getName/-1958580599 var2225)) ; Statement: $r20 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var371 String (append/672562846 var1131 var69)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 var69)))
(assert true)
(define-const var1595 String (append/672562846 var371 ".")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var371!1 String)
(assert (= var371!1 (str.++ var371 ".")))
(assert true)
(define-const var3759 String (append/672562846 var1595 var2734)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1595!1 String)
(assert (= var1595!1 (str.++ var1595 var2734)))
(assert true)
(define-const var1435 String (append/672562846 var3759 ".  Cause: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var3759!1 String)
(assert (= var3759!1 (str.++ var3759 ".  Cause: ")))
(assert true)
(define-const var3317 String (append/-1031950772 var1435 (cast-from-var1855-to-var3312 var145))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var1435!1 String)
(assert (str.prefixof var1435 var1435!1))
(assert true)
(define-const var3203 String (toString/-2075883882 var3317)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1941_error/1469573001 var694 var3203)) ; Statement: interfaceinvoke $r19.<org.apache.ibatis.logging.Log: void error(java.lang.String)>($r27) 

(declare-const var694!1 var1941)
(declare-const var3203!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1855-to-var3312=([java.lang.SecurityException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1941_error/1469573001=([org.apache.ibatis.logging.Log, java.lang.String], void)}
; {var2225=r0, var2734=r1, var1225=null_type, var2559=r2, var1855=java.lang.SecurityException, var145=$r17, var1941=org.apache.ibatis.logging.Log, var2074=org.apache.ibatis.io.VFS, var694=$r19, var3204=$r18, var1131=$r21, var69=$r20, var371=$r22, var1595=$r23, var3759=$r24, var1435=$r25, var3312=java.lang.Object, var3317=$r26, var3203=$r27}
; {r0=var2225, r1=var2734, null_type=var1225, r2=var2559, java.lang.SecurityException=var1855, $r17=var145, org.apache.ibatis.logging.Log=var1941, org.apache.ibatis.io.VFS=var2074, $r19=var694, $r18=var3204, $r21=var1131, $r20=var69, $r22=var371, $r23=var1595, $r24=var3759, $r25=var1435, java.lang.Object=var3312, $r26=var3317, $r27=var3203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class[];	if r0 != null goto $r3 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r1, r2);	$r17 := @caughtexception;	$r19 = <org.apache.ibatis.io.VFS: org.apache.ibatis.logging.Log log>;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security exception looking for method ");	$r20 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r19.<org.apache.ibatis.logging.Log: void error(java.lang.String)>($r27);	return null
;block_num 2