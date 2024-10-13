(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var706 0)
(declare-sort var1814 0)
(declare-sort var2065 0)
(declare-sort var1080 0)
(declare-sort var3035 0)
(declare-sort var1541 0)
(declare-sort var1965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1541-init () var1541)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1965) String)
(declare-fun cast-from-var3035-to-var1965 (var3035) var1965)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1541 String) void)
(declare-const null-var706 var706)
(declare-const null-String String)
(declare-const null-var2065 var2065)
(declare-const null-var1080 var1080)
(declare-const null-var3035 var3035)
(declare-const var490 var706) ; Statement: r0 := @this: freemarker.core.BuiltIn 
(assert (not (= var490 null-var706)))
(declare-const var752 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var752 null-String)))
(declare-const var2997 var2065) ; Statement: r3 := @parameter1: freemarker.core.Expression 
(assert (not (= var2997 null-var2065)))
(declare-const var513 var1080) ; Statement: r4 := @parameter2: freemarker.core.Expression$ReplacemenetState 
(assert (not (= var513 null-var1080)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3908 var3035) ; Statement: $r7 := @caughtexception 
(assert (not (= var3908 null-var3035)))
(define-const var3802 var1541 var1541-init) ; Statement: $r8 = new java.lang.RuntimeException 
(define-const var2268 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2268)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2268!1 String)
(assert (= var2268!1 ""))
(assert true)
(define-const var3895 String (append/672562846 var2268!1 "Internal error: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Internal error: ") 
(declare-const var2268!2 String)
(assert (= var2268!2 (str.++ var2268!1 "Internal error: ")))
(assert true)
(define-const var3124 String (append/-1031950772 var3895 (cast-from-var3035-to-var1965 var3908))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3895!1 String)
(assert (str.prefixof var3895 var3895!1))
(assert true)
(define-const var3322 String (toString/-2075883882 var3124)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3802 var3322)) ; Statement: specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12) 

(declare-const var3802!1 var1541)
(declare-const var3322!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1541-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3035-to-var1965=([java.lang.CloneNotSupportedException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var706=freemarker.core.BuiltIn, var490=r0, var752=r2, var1814=null_type, var2065=freemarker.core.Expression, var2997=r3, var1080=freemarker.core.Expression$ReplacemenetState, var513=r4, var3035=java.lang.CloneNotSupportedException, var3908=$r7, var1541=java.lang.RuntimeException, var3802=$r8, var2268=$r9, var3895=$r10, var1965=java.lang.Object, var3124=$r11, var3322=$r12}
; {freemarker.core.BuiltIn=var706, r0=var490, r2=var752, null_type=var1814, freemarker.core.Expression=var2065, r3=var2997, freemarker.core.Expression$ReplacemenetState=var1080, r4=var513, java.lang.CloneNotSupportedException=var3035, $r7=var3908, java.lang.RuntimeException=var1541, $r8=var3802, $r9=var2268, $r10=var3895, java.lang.Object=var1965, $r11=var3124, $r12=var3322}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltIn;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: freemarker.core.Expression;	r4 := @parameter2: freemarker.core.Expression$ReplacemenetState;	$r7 := @caughtexception;	$r8 = new java.lang.RuntimeException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Internal error: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.RuntimeException: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2