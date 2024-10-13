(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var3039 0)
(declare-sort var1955 0)
(declare-sort var3264 0)
(declare-sort var2450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3264-init () var3264)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2450) String)
(declare-fun cast-from-var3264-to-var2450 (var3264) var2450)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3264 String) void)
(declare-const null-var3144 var3144)
(declare-const null-String String)
(declare-const null-var1955 var1955)
(declare-const null-var3264 var3264)
(declare-const var2993 var3144) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var2993 null-var3144)))
(declare-const var942 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var942 null-String)))
(declare-const var2191 var1955) ; Statement: r3 := @parameter2: java.util.function.Function 
(assert (not (= var2191 null-var1955)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1679 var3264) ; Statement: $r4 := @caughtexception 
(assert (not (= var1679 null-var3264)))
(define-const var1746 var3264 var3264-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2326 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2326)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2326!1 String)
(assert (= var2326!1 ""))
(assert true)
(define-const var800 String (append/672562846 var2326!1 "Not a valid value for option \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a valid value for option \'") 
(declare-const var2326!2 String)
(assert (= var2326!2 (str.++ var2326!1 "Not a valid value for option \u0027")))
(assert true)
(define-const var3156 String (append/672562846 var800 var942)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var800!1 String)
(assert (= var800!1 (str.++ var800 var942)))
(assert true)
(define-const var1864 String (append/672562846 var3156 "\u0027. ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. ") 
(declare-const var3156!1 String)
(assert (= var3156!1 (str.++ var3156 "\u0027. ")))
(assert true)
(define-const var3884 String (getMessage/849299655 (cast-from-var3264-to-var2450 var1679))) ; Statement: $r9 = virtualinvoke $r4.<java.lang.IllegalArgumentException: java.lang.String getMessage()>() 
(assert true)
(define-const var458 String (append/672562846 var1864 var3884)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1864!1 String)
(assert (= var1864!1 (str.++ var1864 var3884)))
(assert true)
(define-const var1171 String (toString/-2075883882 var458)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1746 var1171)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1746!1 var3264)
(declare-const var1171!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3264-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3264-to-var2450=([java.lang.IllegalArgumentException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3144=java.util.Map, var2993=r0, var942=r1, var3039=null_type, var1955=java.util.function.Function, var2191=r3, var3264=java.lang.IllegalArgumentException, var1679=$r4, var1746=$r5, var2326=$r6, var800=$r7, var3156=$r8, var1864=$r10, var2450=java.lang.Throwable, var3884=$r9, var458=$r11, var1171=$r12}
; {java.util.Map=var3144, r0=var2993, r1=var942, null_type=var3039, java.util.function.Function=var1955, r3=var2191, java.lang.IllegalArgumentException=var3264, $r4=var1679, $r5=var1746, $r6=var2326, $r7=var800, $r8=var3156, $r10=var1864, java.lang.Throwable=var2450, $r9=var3884, $r11=var458, $r12=var1171}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.util.function.Function;	$r4 := @caughtexception;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a valid value for option \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. ");	$r9 = virtualinvoke $r4.<java.lang.IllegalArgumentException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 2