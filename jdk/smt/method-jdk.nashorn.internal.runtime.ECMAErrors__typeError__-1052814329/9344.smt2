(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2163 0)
(declare-sort var2694 0)
(declare-sort var2341 0)
(declare-sort var1854 0)
(declare-sort var1378 0)
(declare-sort var2855 0)
(declare-sort var2167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1854_getMessage/90889441 (String (Array Int String)) String)
(declare-fun newTypeError/1878676813 (var2163 String) var1378)
(declare-fun var1854_error/1194267908 (var2167 var2694) var2855)
(declare-fun cast-from-var1378-to-var2167 (var1378) var2167)
(declare-const null-var2163 var2163)
(declare-const null-var2694 var2694)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var902 var2163) ; Statement: r7 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var902 null-var2163)))
(declare-const var1807 var2694) ; Statement: r8 := @parameter1: java.lang.Throwable 
(assert (not (= var1807 null-var2694)))
(declare-const var3920 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3920 null-String)))
(declare-const var1144 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var1144 null-__Array__Int__String__)))
(define-const var2661 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2661)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2661!1 String)
(assert (= var2661!1 ""))
(assert true)
(define-const var253 String (append/672562846 var2661!1 "type.error.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("type.error.") 
(declare-const var2661!2 String)
(assert (= var2661!2 (str.++ var2661!1 "type.error.")))
(assert true)
(define-const var812 String (append/672562846 var253 var3920)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var253!1 String)
(assert (= var253!1 (str.++ var253 var3920)))
(assert true)
(define-const var1413 String (toString/-2075883882 var812)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var921 String (var1854_getMessage/90889441 var1413 var1144)) ; Statement: r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4) 
(assert true)
(define-const var2835 var1378 (newTypeError/1878676813 var902 var921)) ; Statement: $r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>(r6) 
(define-const var11 var2855 (var1854_error/1194267908 (cast-from-var1378-to-var2167 var2835) var1807)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1854_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String), newTypeError/1878676813=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var1854_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var1378-to-var2167=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var2163=jdk.nashorn.internal.objects.Global, var902=r7, var2694=java.lang.Throwable, var1807=r8, var3920=r1, var2341=null_type, var1144=r4, var2661=$r0, var253=$r2, var812=$r3, var1413=$r5, var1854=jdk.nashorn.internal.runtime.ECMAErrors, var921=r6, var1378=jdk.nashorn.internal.runtime.ScriptObject, var2835=$r9, var2855=jdk.nashorn.internal.runtime.ECMAException, var2167=java.lang.Object, var11=$r10}
; {jdk.nashorn.internal.objects.Global=var2163, r7=var902, java.lang.Throwable=var2694, r8=var1807, r1=var3920, null_type=var2341, r4=var1144, $r0=var2661, $r2=var253, $r3=var812, $r5=var1413, jdk.nashorn.internal.runtime.ECMAErrors=var1854, r6=var921, jdk.nashorn.internal.runtime.ScriptObject=var1378, $r9=var2835, jdk.nashorn.internal.runtime.ECMAException=var2855, java.lang.Object=var2167, $r10=var11}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: jdk.nashorn.internal.objects.Global;	r8 := @parameter1: java.lang.Throwable;	r1 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("type.error.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4);	$r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newTypeError(java.lang.String)>(r6);	$r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8);	return $r10
;block_num 1