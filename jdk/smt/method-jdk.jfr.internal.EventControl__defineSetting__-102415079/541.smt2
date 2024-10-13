(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3435 0)
(declare-sort var2435 0)
(declare-sort var703 0)
(declare-sort var2019 0)
(declare-sort var2394 0)
(declare-sort var3077 0)
(declare-sort var1146 0)
(declare-sort var2232 0)
(declare-sort var1292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun settingInfos/-995646817 (var3435) var2394)
(declare-fun var1146-init () var1146)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getLogName/-1622746903 (var2232) String)
(declare-fun cast-from-var703-to-var2232 (var703) var2232)
(declare-fun getMessage/849299655 (var1292) String)
(declare-fun cast-from-var3077-to-var1292 (var3077) var1292)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/37326133 (var1146 String) void)
(declare-const null-var3435 var3435)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2435 var2435)
(declare-const null-var703 var703)
(declare-const null-String String)
(declare-const null-var3077 var3077)
(declare-const var122 var3435) ; Statement: r0 := @this: jdk.jfr.internal.EventControl 
(assert (not (= var122 null-var3435)))
(declare-const var3489 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3489 null-ClassObject)))
(declare-const var1890 var2435) ; Statement: r13 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1890 null-var2435)))
(declare-const var927 var703) ; Statement: r18 := @parameter2: jdk.jfr.internal.PlatformEventType 
(assert (not (= var927 null-var703)))
(declare-const var1662 String) ; Statement: r15 := @parameter3: java.lang.String 
(assert (not (= var1662 null-String)))
(define-const var3267 var2394 (settingInfos/-995646817 var122)) ; Statement: $r1 = r0.<jdk.jfr.internal.EventControl: java.util.List settingInfos> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3371 var3077) ; Statement: $r37 := @caughtexception 
(assert (not (= var3371 null-var3077)))
(define-const var2117 var1146 var1146-init) ; Statement: $r38 = new java.lang.InstantiationError 
(define-const var1160 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1160)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1160!1 String)
(assert (= var1160!1 ""))
(assert true)
(define-const var3964 String (append/672562846 var1160!1 "Could not instantiate setting ")) ; Statement: $r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate setting ") 
(declare-const var1160!2 String)
(assert (= var1160!2 (str.++ var1160!1 "Could not instantiate setting ")))
(assert true)
(define-const var3993 String (getName/-1958580599 var3489)) ; Statement: $r40 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var948 String (append/672562846 var3964 var3993)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3964!1 String)
(assert (= var3964!1 (str.++ var3964 var3993)))
(assert true)
(define-const var2116 String (append/672562846 var948 " for event ")) ; Statement: $r44 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for event ") 
(declare-const var948!1 String)
(assert (= var948!1 (str.++ var948 " for event ")))
(assert true)
(define-const var692 String (getLogName/-1622746903 (cast-from-var703-to-var2232 var927))) ; Statement: $r43 = virtualinvoke r18.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var2201 String (append/672562846 var2116 var692)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r43) 
(declare-const var2116!1 String)
(assert (= var2116!1 (str.++ var2116 var692)))
(assert true)
(define-const var1048 String (append/672562846 var2201 ". ")) ; Statement: $r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ") 
(declare-const var2201!1 String)
(assert (= var2201!1 (str.++ var2201 ". ")))
(assert true)
(define-const var722 String (getMessage/849299655 (cast-from-var3077-to-var1292 var3371))) ; Statement: $r46 = virtualinvoke $r37.<java.lang.InstantiationException: java.lang.String getMessage()>() 
(assert true)
(define-const var3823 String (append/672562846 var1048 var722)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46) 
(declare-const var1048!1 String)
(assert (= var1048!1 (str.++ var1048 var722)))
(assert true)
(define-const var33 String (toString/-2075883882 var3823)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/37326133 var2117 var33)) ; Statement: specialinvoke $r38.<java.lang.InstantiationError: void <init>(java.lang.String)>($r49) 

(declare-const var2117!1 var1146)
(declare-const var33!1 String)
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {settingInfos/-995646817=([jdk.jfr.internal.EventControl], java.util.List), var1146-init=([], java.lang.InstantiationError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var703-to-var2232=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3077-to-var1292=([java.lang.InstantiationException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/37326133=([java.lang.InstantiationError, java.lang.String], void)}
; {var3435=jdk.jfr.internal.EventControl, var122=r0, var3489=r7, var2435=java.lang.reflect.Method, var1890=r13, var703=jdk.jfr.internal.PlatformEventType, var927=r18, var1662=r15, var2019=null_type, var2394=java.util.List, var3267=$r1, var3077=java.lang.InstantiationException, var3371=$r37, var1146=java.lang.InstantiationError, var2117=$r38, var1160=$r39, var3964=$r41, var3993=$r40, var948=$r42, var2116=$r44, var2232=jdk.jfr.internal.Type, var692=$r43, var2201=$r45, var1048=$r47, var1292=java.lang.Throwable, var722=$r46, var3823=$r48, var33=$r49}
; {jdk.jfr.internal.EventControl=var3435, r0=var122, r7=var3489, java.lang.reflect.Method=var2435, r13=var1890, jdk.jfr.internal.PlatformEventType=var703, r18=var927, r15=var1662, null_type=var2019, java.util.List=var2394, $r1=var3267, java.lang.InstantiationException=var3077, $r37=var3371, java.lang.InstantiationError=var1146, $r38=var2117, $r39=var1160, $r41=var3964, $r40=var3993, $r42=var948, $r44=var2116, jdk.jfr.internal.Type=var2232, $r43=var692, $r45=var2201, $r47=var1048, java.lang.Throwable=var1292, $r46=var722, $r48=var3823, $r49=var33}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.EventControl;	r7 := @parameter0: java.lang.Class;	r13 := @parameter1: java.lang.reflect.Method;	r18 := @parameter2: jdk.jfr.internal.PlatformEventType;	r15 := @parameter3: java.lang.String;	$r1 = r0.<jdk.jfr.internal.EventControl: java.util.List settingInfos>;	$r37 := @caughtexception;	$r38 = new java.lang.InstantiationError;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate setting ");	$r40 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r44 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for event ");	$r43 = virtualinvoke r18.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r43);	$r47 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ");	$r46 = virtualinvoke $r37.<java.lang.InstantiationException: java.lang.String getMessage()>();	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46);	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r38.<java.lang.InstantiationError: void <init>(java.lang.String)>($r49);	throw $r38
;block_num 2