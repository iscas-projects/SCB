(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3689 0)
(declare-sort var3536 0)
(declare-sort var1587 0)
(declare-sort var2017 0)
(declare-sort var2773 0)
(declare-sort var1697 0)
(declare-sort var1022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2017_getMessage/90889441 (String (Array Int String)) String)
(declare-fun newURIError/-580929171 (var3689 String) var2773)
(declare-fun var2017_error/1194267908 (var1022 var3536) var1697)
(declare-fun cast-from-var2773-to-var1022 (var2773) var1022)
(declare-const null-var3689 var3689)
(declare-const null-var3536 var3536)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3698 var3689) ; Statement: r7 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var3698 null-var3689)))
(declare-const var2712 var3536) ; Statement: r8 := @parameter1: java.lang.Throwable 
(assert (not (= var2712 null-var3536)))
(declare-const var3863 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3863 null-String)))
(declare-const var1277 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var1277 null-__Array__Int__String__)))
(define-const var2347 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2347)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2347!1 String)
(assert (= var2347!1 ""))
(assert true)
(define-const var3820 String (append/672562846 var2347!1 "uri.error.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("uri.error.") 
(declare-const var2347!2 String)
(assert (= var2347!2 (str.++ var2347!1 "uri.error.")))
(assert true)
(define-const var3782 String (append/672562846 var3820 var3863)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3820!1 String)
(assert (= var3820!1 (str.++ var3820 var3863)))
(assert true)
(define-const var1426 String (toString/-2075883882 var3782)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3308 String (var2017_getMessage/90889441 var1426 var1277)) ; Statement: r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4) 
(assert true)
(define-const var1146 var2773 (newURIError/-580929171 var3698 var3308)) ; Statement: $r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>(r6) 
(define-const var2829 var1697 (var2017_error/1194267908 (cast-from-var2773-to-var1022 var1146) var2712)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2017_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String), newURIError/-580929171=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var2017_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var2773-to-var1022=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var3689=jdk.nashorn.internal.objects.Global, var3698=r7, var3536=java.lang.Throwable, var2712=r8, var3863=r1, var1587=null_type, var1277=r4, var2347=$r0, var3820=$r2, var3782=$r3, var1426=$r5, var2017=jdk.nashorn.internal.runtime.ECMAErrors, var3308=r6, var2773=jdk.nashorn.internal.runtime.ScriptObject, var1146=$r9, var1697=jdk.nashorn.internal.runtime.ECMAException, var1022=java.lang.Object, var2829=$r10}
; {jdk.nashorn.internal.objects.Global=var3689, r7=var3698, java.lang.Throwable=var3536, r8=var2712, r1=var3863, null_type=var1587, r4=var1277, $r0=var2347, $r2=var3820, $r3=var3782, $r5=var1426, jdk.nashorn.internal.runtime.ECMAErrors=var2017, r6=var3308, jdk.nashorn.internal.runtime.ScriptObject=var2773, $r9=var1146, jdk.nashorn.internal.runtime.ECMAException=var1697, java.lang.Object=var1022, $r10=var2829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: jdk.nashorn.internal.objects.Global;	r8 := @parameter1: java.lang.Throwable;	r1 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("uri.error.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4);	$r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newURIError(java.lang.String)>(r6);	$r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8);	return $r10
;block_num 1