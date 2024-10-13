(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2874 0)
(declare-sort var156 0)
(declare-sort var536 0)
(declare-sort var3674 0)
(declare-sort var255 0)
(declare-sort var1360 0)
(declare-sort var2980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3674_getMessage/90889441 (String (Array Int String)) String)
(declare-fun newSyntaxError/1949437110 (var2874 String) var255)
(declare-fun var3674_error/1194267908 (var2980 var156) var1360)
(declare-fun cast-from-var255-to-var2980 (var255) var2980)
(declare-const null-var2874 var2874)
(declare-const null-var156 var156)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var139 var2874) ; Statement: r7 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var139 null-var2874)))
(declare-const var3138 var156) ; Statement: r8 := @parameter1: java.lang.Throwable 
(assert (not (= var3138 null-var156)))
(declare-const var3499 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3499 null-String)))
(declare-const var840 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var840 null-__Array__Int__String__)))
(define-const var2692 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2692)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2692!1 String)
(assert (= var2692!1 ""))
(assert true)
(define-const var2603 String (append/672562846 var2692!1 "syntax.error.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax.error.") 
(declare-const var2692!2 String)
(assert (= var2692!2 (str.++ var2692!1 "syntax.error.")))
(assert true)
(define-const var1341 String (append/672562846 var2603 var3499)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2603!1 String)
(assert (= var2603!1 (str.++ var2603 var3499)))
(assert true)
(define-const var1719 String (toString/-2075883882 var1341)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var980 String (var3674_getMessage/90889441 var1719 var840)) ; Statement: r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4) 
(assert true)
(define-const var2299 var255 (newSyntaxError/1949437110 var139 var980)) ; Statement: $r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>(r6) 
(define-const var1326 var1360 (var3674_error/1194267908 (cast-from-var255-to-var2980 var2299) var3138)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3674_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String), newSyntaxError/1949437110=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var3674_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var255-to-var2980=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var2874=jdk.nashorn.internal.objects.Global, var139=r7, var156=java.lang.Throwable, var3138=r8, var3499=r1, var536=null_type, var840=r4, var2692=$r0, var2603=$r2, var1341=$r3, var1719=$r5, var3674=jdk.nashorn.internal.runtime.ECMAErrors, var980=r6, var255=jdk.nashorn.internal.runtime.ScriptObject, var2299=$r9, var1360=jdk.nashorn.internal.runtime.ECMAException, var2980=java.lang.Object, var1326=$r10}
; {jdk.nashorn.internal.objects.Global=var2874, r7=var139, java.lang.Throwable=var156, r8=var3138, r1=var3499, null_type=var536, r4=var840, $r0=var2692, $r2=var2603, $r3=var1341, $r5=var1719, jdk.nashorn.internal.runtime.ECMAErrors=var3674, r6=var980, jdk.nashorn.internal.runtime.ScriptObject=var255, $r9=var2299, jdk.nashorn.internal.runtime.ECMAException=var1360, java.lang.Object=var2980, $r10=var1326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: jdk.nashorn.internal.objects.Global;	r8 := @parameter1: java.lang.Throwable;	r1 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax.error.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4);	$r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newSyntaxError(java.lang.String)>(r6);	$r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8);	return $r10
;block_num 1