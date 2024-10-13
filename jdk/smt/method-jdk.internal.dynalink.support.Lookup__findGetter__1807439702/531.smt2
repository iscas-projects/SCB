(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1745 0)
(declare-sort var3170 0)
(declare-sort var1666 0)
(declare-sort var2719 0)
(declare-sort var1791 0)
(declare-sort var255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var1745) var1666)
(declare-fun var1791-init () var1791)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1886346384 (var1791 String) void)
(declare-fun initCause/2003336360 (var255 var255) var255)
(declare-fun cast-from-var1791-to-var255 (var1791) var255)
(declare-fun cast-from-var2719-to-var255 (var2719) var255)
(declare-const null-var1745 var1745)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2719 var2719)
(declare-const var3674 var1745) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var3674 null-var1745)))
(declare-const var3387 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3387 null-ClassObject)))
(declare-const var2123 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2123 null-String)))
(declare-const var3037 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var3037 null-ClassObject)))
(define-const var1457 var1666 (lookup/-920752463 var3674)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3928 var2719) ; Statement: $r6 := @caughtexception 
(assert (not (= var3928 null-var2719)))
(define-const var696 var1791 var1791-init) ; Statement: $r7 = new java.lang.NoSuchFieldError 
(define-const var403 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var403)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var403!1 String)
(assert (= var403!1 ""))
(assert true)
(define-const var16 String (append/672562846 var403!1 "Failed to find getter for field ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find getter for field ") 
(declare-const var403!2 String)
(assert (= var403!2 (str.++ var403!1 "Failed to find getter for field ")))
(assert true)
(define-const var1870 String (getName/-1958580599 var3387)) ; Statement: $r9 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1982 String (append/672562846 var16 var1870)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var16!1 String)
(assert (= var16!1 (str.++ var16 var1870)))
(assert true)
(define-const var627 String (append/672562846 var1982 ".")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1982!1 String)
(assert (= var1982!1 (str.++ var1982 ".")))
(assert true)
(define-const var871 String (append/672562846 var627 var2123)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var627!1 String)
(assert (= var627!1 (str.++ var627 var2123)))
(assert true)
(define-const var3607 String (append/672562846 var871 " of type ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of type ") 
(declare-const var871!1 String)
(assert (= var871!1 (str.++ var871 " of type ")))
(assert true)
(define-const var3614 String (getName/-1958580599 var3037)) ; Statement: $r14 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1428 String (append/672562846 var3607 var3614)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3607!1 String)
(assert (= var3607!1 (str.++ var3607 var3614)))
(assert true)
(define-const var1752 String (toString/-2075883882 var1428)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1886346384 var696 var1752)) ; Statement: specialinvoke $r7.<java.lang.NoSuchFieldError: void <init>(java.lang.String)>($r17) 

(declare-const var696!1 var1791)
(declare-const var1752!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1791-to-var255 var696!1) (cast-from-var2719-to-var255 var3928))) ; Statement: virtualinvoke $r7.<java.lang.NoSuchFieldError: java.lang.Throwable initCause(java.lang.Throwable)>($r6) 

(declare-const var696!2 var1791)
(declare-const var3928!1 var2719)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var1791-init=([], java.lang.NoSuchFieldError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1886346384=([java.lang.NoSuchFieldError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1791-to-var255=([java.lang.NoSuchFieldError], java.lang.Throwable), cast-from-var2719-to-var255=([java.lang.NoSuchFieldException], java.lang.Throwable)}
; {var1745=jdk.internal.dynalink.support.Lookup, var3674=r0, var3387=r1, var2123=r2, var3170=null_type, var3037=r3, var1666=java.lang.invoke.MethodHandles$Lookup, var1457=$r4, var2719=java.lang.NoSuchFieldException, var3928=$r6, var1791=java.lang.NoSuchFieldError, var696=$r7, var403=$r8, var16=$r10, var1870=$r9, var1982=$r11, var627=$r12, var871=$r13, var3607=$r15, var3614=$r14, var1428=$r16, var1752=$r17, var255=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var1745, r0=var3674, r1=var3387, r2=var2123, null_type=var3170, r3=var3037, java.lang.invoke.MethodHandles$Lookup=var1666, $r4=var1457, java.lang.NoSuchFieldException=var2719, $r6=var3928, java.lang.NoSuchFieldError=var1791, $r7=var696, $r8=var403, $r10=var16, $r9=var1870, $r11=var1982, $r12=var627, $r13=var871, $r15=var3607, $r14=var3614, $r16=var1428, $r17=var1752, java.lang.Throwable=var255}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r6 := @caughtexception;	$r7 = new java.lang.NoSuchFieldError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find getter for field ");	$r9 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of type ");	$r14 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NoSuchFieldError: void <init>(java.lang.String)>($r17);	virtualinvoke $r7.<java.lang.NoSuchFieldError: java.lang.Throwable initCause(java.lang.Throwable)>($r6);	throw $r7
;block_num 2