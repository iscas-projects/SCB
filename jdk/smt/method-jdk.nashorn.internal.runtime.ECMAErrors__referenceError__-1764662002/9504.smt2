(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1655 0)
(declare-sort var530 0)
(declare-sort var1867 0)
(declare-sort var3175 0)
(declare-sort var950 0)
(declare-sort var913 0)
(declare-sort var2189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3175_getMessage/90889441 (String (Array Int String)) String)
(declare-fun newReferenceError/-1980522228 (var1655 String) var950)
(declare-fun var3175_error/1194267908 (var2189 var530) var913)
(declare-fun cast-from-var950-to-var2189 (var950) var2189)
(declare-const null-var1655 var1655)
(declare-const null-var530 var530)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1406 var1655) ; Statement: r7 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var1406 null-var1655)))
(declare-const var544 var530) ; Statement: r8 := @parameter1: java.lang.Throwable 
(assert (not (= var544 null-var530)))
(declare-const var2374 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2374 null-String)))
(declare-const var270 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var270 null-__Array__Int__String__)))
(define-const var942 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var942)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var942!1 String)
(assert (= var942!1 ""))
(assert true)
(define-const var2754 String (append/672562846 var942!1 "reference.error.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reference.error.") 
(declare-const var942!2 String)
(assert (= var942!2 (str.++ var942!1 "reference.error.")))
(assert true)
(define-const var853 String (append/672562846 var2754 var2374)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2754!1 String)
(assert (= var2754!1 (str.++ var2754 var2374)))
(assert true)
(define-const var1824 String (toString/-2075883882 var853)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2764 String (var3175_getMessage/90889441 var1824 var270)) ; Statement: r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4) 
(assert true)
(define-const var2212 var950 (newReferenceError/-1980522228 var1406 var2764)) ; Statement: $r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>(r6) 
(define-const var1202 var913 (var3175_error/1194267908 (cast-from-var950-to-var2189 var2212) var544)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3175_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String), newReferenceError/-1980522228=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var3175_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var950-to-var2189=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var1655=jdk.nashorn.internal.objects.Global, var1406=r7, var530=java.lang.Throwable, var544=r8, var2374=r1, var1867=null_type, var270=r4, var942=$r0, var2754=$r2, var853=$r3, var1824=$r5, var3175=jdk.nashorn.internal.runtime.ECMAErrors, var2764=r6, var950=jdk.nashorn.internal.runtime.ScriptObject, var2212=$r9, var913=jdk.nashorn.internal.runtime.ECMAException, var2189=java.lang.Object, var1202=$r10}
; {jdk.nashorn.internal.objects.Global=var1655, r7=var1406, java.lang.Throwable=var530, r8=var544, r1=var2374, null_type=var1867, r4=var270, $r0=var942, $r2=var2754, $r3=var853, $r5=var1824, jdk.nashorn.internal.runtime.ECMAErrors=var3175, r6=var2764, jdk.nashorn.internal.runtime.ScriptObject=var950, $r9=var2212, jdk.nashorn.internal.runtime.ECMAException=var913, java.lang.Object=var2189, $r10=var1202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: jdk.nashorn.internal.objects.Global;	r8 := @parameter1: java.lang.Throwable;	r1 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reference.error.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4);	$r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newReferenceError(java.lang.String)>(r6);	$r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8);	return $r10
;block_num 1