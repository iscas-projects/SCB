(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3574 0)
(declare-sort var3459 0)
(declare-sort var503 0)
(declare-sort var1358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var503-init () var503)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var503 String var1358) void)
(declare-fun cast-from-var3459-to-var1358 (var3459) var1358)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3459 var3459)
(declare-const var704 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var704 null-ClassObject)))
(declare-const var2416 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2416 null-String)))
(declare-const var2701 (Array Int ClassObject)) ; Statement: r2 := @parameter2: java.lang.Class[] 
(assert (not (= var2701 null-__Array__Int__ClassObject__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2383 var3459) ; Statement: $r4 := @caughtexception 
(assert (not (= var2383 null-var3459)))
(define-const var2268 var503 var503-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var1493 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1493)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1493!1 String)
(assert (= var1493!1 ""))
(assert true)
(define-const var151 String (append/672562846 var1493!1 "Generated message class \u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated message class \"") 
(declare-const var1493!2 String)
(assert (= var1493!2 (str.++ var1493!1 "Generated message class \u0022")))
(assert true)
(define-const var3528 String (getName/-1958580599 var704)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2722 String (append/672562846 var151 var3528)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var151!1 String)
(assert (= var151!1 (str.++ var151 var3528)))
(assert true)
(define-const var1913 String (append/672562846 var2722 "\u0022 missing method \u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" missing method \"") 
(declare-const var2722!1 String)
(assert (= var2722!1 (str.++ var2722 "\u0022 missing method \u0022")))
(assert true)
(define-const var1315 String (append/672562846 var1913 var2416)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1913!1 String)
(assert (= var1913!1 (str.++ var1913 var2416)))
(assert true)
(define-const var3861 String (append/672562846 var1315 "\u0022.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var1315!1 String)
(assert (= var1315!1 (str.++ var1315 "\u0022.")))
(assert true)
(define-const var317 String (toString/-2075883882 var3861)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2268 var317 (cast-from-var3459-to-var1358 var2383))) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4) 

(declare-const var2268!1 var503)
(declare-const var317!1 String)
(declare-const var2383!1 var3459)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var503-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var3459-to-var1358=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var704=r0, var2416=r1, var3574=null_type, var2701=r2, var3459=java.lang.NoSuchMethodException, var2383=$r4, var503=java.lang.RuntimeException, var2268=$r5, var1493=$r6, var151=$r8, var3528=$r7, var2722=$r9, var1913=$r10, var1315=$r11, var3861=$r12, var317=$r13, var1358=java.lang.Throwable}
; {r0=var704, r1=var2416, null_type=var3574, r2=var2701, java.lang.NoSuchMethodException=var3459, $r4=var2383, java.lang.RuntimeException=var503, $r5=var2268, $r6=var1493, $r8=var151, $r7=var3528, $r9=var2722, $r10=var1913, $r11=var1315, $r12=var3861, $r13=var317, java.lang.Throwable=var1358}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class[];	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated message class \"");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" missing method \"");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4);	throw $r5
;block_num 2