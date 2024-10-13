(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort var193 0)
(declare-sort var2277 0)
(declare-sort var2459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2277-init () var2277)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2277 String var2459) void)
(declare-fun cast-from-var193-to-var2459 (var193) var2459)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var193 var193)
(declare-const var2388 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2388 null-ClassObject)))
(declare-const var1714 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1714 null-String)))
(declare-const var788 (Array Int ClassObject)) ; Statement: r2 := @parameter2: java.lang.Class[] 
(assert (not (= var788 null-__Array__Int__ClassObject__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2499 var193) ; Statement: $r4 := @caughtexception 
(assert (not (= var2499 null-var193)))
(define-const var919 var2277 var2277-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var964 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var964)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var964!1 String)
(assert (= var964!1 ""))
(assert true)
(define-const var892 String (append/672562846 var964!1 "Generated message class \u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated message class \"") 
(declare-const var964!2 String)
(assert (= var964!2 (str.++ var964!1 "Generated message class \u0022")))
(assert true)
(define-const var377 String (getName/-1958580599 var2388)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var320 String (append/672562846 var892 var377)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var892!1 String)
(assert (= var892!1 (str.++ var892 var377)))
(assert true)
(define-const var3510 String (append/672562846 var320 "\u0022 missing method \u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" missing method \"") 
(declare-const var320!1 String)
(assert (= var320!1 (str.++ var320 "\u0022 missing method \u0022")))
(assert true)
(define-const var2763 String (append/672562846 var3510 var1714)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3510!1 String)
(assert (= var3510!1 (str.++ var3510 var1714)))
(assert true)
(define-const var31 String (append/672562846 var2763 "\u0022.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var2763!1 String)
(assert (= var2763!1 (str.++ var2763 "\u0022.")))
(assert true)
(define-const var1071 String (toString/-2075883882 var31)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var919 var1071 (cast-from-var193-to-var2459 var2499))) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4) 

(declare-const var919!1 var2277)
(declare-const var1071!1 String)
(declare-const var2499!1 var193)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2277-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var193-to-var2459=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var2388=r0, var1714=r1, var2103=null_type, var788=r2, var193=java.lang.NoSuchMethodException, var2499=$r4, var2277=java.lang.RuntimeException, var919=$r5, var964=$r6, var892=$r8, var377=$r7, var320=$r9, var3510=$r10, var2763=$r11, var31=$r12, var1071=$r13, var2459=java.lang.Throwable}
; {r0=var2388, r1=var1714, null_type=var2103, r2=var788, java.lang.NoSuchMethodException=var193, $r4=var2499, java.lang.RuntimeException=var2277, $r5=var919, $r6=var964, $r8=var892, $r7=var377, $r9=var320, $r10=var3510, $r11=var2763, $r12=var31, $r13=var1071, java.lang.Throwable=var2459}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class[];	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated message class \"");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" missing method \"");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4);	throw $r5
;block_num 2