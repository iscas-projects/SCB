(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1604 0)
(declare-sort var3003 0)
(declare-sort var3310 0)
(declare-sort var4 0)
(declare-sort var2915 0)
(declare-sort var1547 0)
(declare-sort var1976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var4_getMessage/90889441 (String (Array Int String)) String)
(declare-fun newRangeError/-924381058 (var1604 String) var2915)
(declare-fun var4_error/1194267908 (var1976 var3003) var1547)
(declare-fun cast-from-var2915-to-var1976 (var2915) var1976)
(declare-const null-var1604 var1604)
(declare-const null-var3003 var3003)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var263 var1604) ; Statement: r7 := @parameter0: jdk.nashorn.internal.objects.Global 
(assert (not (= var263 null-var1604)))
(declare-const var3609 var3003) ; Statement: r8 := @parameter1: java.lang.Throwable 
(assert (not (= var3609 null-var3003)))
(declare-const var3885 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3885 null-String)))
(declare-const var3004 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var3004 null-__Array__Int__String__)))
(define-const var2032 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2032)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2032!1 String)
(assert (= var2032!1 ""))
(assert true)
(define-const var1723 String (append/672562846 var2032!1 "range.error.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("range.error.") 
(declare-const var2032!2 String)
(assert (= var2032!2 (str.++ var2032!1 "range.error.")))
(assert true)
(define-const var988 String (append/672562846 var1723 var3885)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1723!1 String)
(assert (= var1723!1 (str.++ var1723 var3885)))
(assert true)
(define-const var2266 String (toString/-2075883882 var988)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1616 String (var4_getMessage/90889441 var2266 var3004)) ; Statement: r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4) 
(assert true)
(define-const var1689 var2915 (newRangeError/-924381058 var263 var1616)) ; Statement: $r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>(r6) 
(define-const var3603 var1547 (var4_error/1194267908 (cast-from-var2915-to-var1976 var1689) var3609)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var4_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String), newRangeError/-924381058=([jdk.nashorn.internal.objects.Global, java.lang.String], jdk.nashorn.internal.runtime.ScriptObject), var4_error/1194267908=([java.lang.Object, java.lang.Throwable], jdk.nashorn.internal.runtime.ECMAException), cast-from-var2915-to-var1976=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object)}
; {var1604=jdk.nashorn.internal.objects.Global, var263=r7, var3003=java.lang.Throwable, var3609=r8, var3885=r1, var3310=null_type, var3004=r4, var2032=$r0, var1723=$r2, var988=$r3, var2266=$r5, var4=jdk.nashorn.internal.runtime.ECMAErrors, var1616=r6, var2915=jdk.nashorn.internal.runtime.ScriptObject, var1689=$r9, var1547=jdk.nashorn.internal.runtime.ECMAException, var1976=java.lang.Object, var3603=$r10}
; {jdk.nashorn.internal.objects.Global=var1604, r7=var263, java.lang.Throwable=var3003, r8=var3609, r1=var3885, null_type=var3310, r4=var3004, $r0=var2032, $r2=var1723, $r3=var988, $r5=var2266, jdk.nashorn.internal.runtime.ECMAErrors=var4, r6=var1616, jdk.nashorn.internal.runtime.ScriptObject=var2915, $r9=var1689, jdk.nashorn.internal.runtime.ECMAException=var1547, java.lang.Object=var1976, $r10=var3603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: jdk.nashorn.internal.objects.Global;	r8 := @parameter1: java.lang.Throwable;	r1 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("range.error.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r5, r4);	$r9 = virtualinvoke r7.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject newRangeError(java.lang.String)>(r6);	$r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException error(java.lang.Object,java.lang.Throwable)>($r9, r8);	return $r10
;block_num 1