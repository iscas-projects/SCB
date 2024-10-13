(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1312 0)
(declare-sort var1742 0)
(declare-sort var484 0)
(declare-sort var2073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1742-init () var1742)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var484) String)
(declare-fun cast-from-ClassObject-to-var484 (ClassObject) var484)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var1742 String var2073) void)
(declare-fun cast-from-var1312-to-var2073 (var1312) var2073)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1312 var1312)
(declare-const var3461 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3461 null-ClassObject)))
(define-const var3196 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1744 var1312) ; Statement: $r5 := @caughtexception 
(assert (not (= var1744 null-var1312)))
(define-const var1255 var1742 var1742-init) ; Statement: $r6 = new java.lang.RuntimeException 
(define-const var29 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var29)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var29!1 String)
(assert (= var29!1 ""))
(assert true)
(define-const var3092 String (append/672562846 var29!1 "Failed to get default instance for ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get default instance for ") 
(declare-const var29!2 String)
(assert (= var29!2 (str.++ var29!1 "Failed to get default instance for ")))
(assert true)
(define-const var1433 String (append/-1031950772 var3092 (cast-from-ClassObject-to-var484 var3461))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3092!1 String)
(assert (str.prefixof var3092 var3092!1))
(assert true)
(define-const var2 String (toString/-2075883882 var1433)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var1255 var2 (cast-from-var1312-to-var2073 var1744))) ; Statement: specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5) 

(declare-const var1255!1 var1742)
(declare-const var2!1 String)
(declare-const var1744!1 var1312)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1742-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var484=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1312-to-var2073=([java.lang.Exception], java.lang.Throwable)}
; {var3461=r0, var3196=$r1, var1312=java.lang.Exception, var1744=$r5, var1742=java.lang.RuntimeException, var1255=$r6, var29=$r7, var3092=$r8, var484=java.lang.Object, var1433=$r9, var2=$r10, var2073=java.lang.Throwable}
; {r0=var3461, $r1=var3196, java.lang.Exception=var1312, $r5=var1744, java.lang.RuntimeException=var1742, $r6=var1255, $r7=var29, $r8=var3092, java.lang.Object=var484, $r9=var1433, $r10=var2, java.lang.Throwable=var2073}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r5 := @caughtexception;	$r6 = new java.lang.RuntimeException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to get default instance for ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5);	throw $r6
;block_num 2