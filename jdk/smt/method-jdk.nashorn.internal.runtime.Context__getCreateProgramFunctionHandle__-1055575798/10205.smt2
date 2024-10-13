(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort var1135 0)
(declare-sort var3111 0)
(declare-sort var1344 0)
(declare-sort var864 0)
(declare-sort var2324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var864-init () var864)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/42819552 (var864 String var2324) void)
(declare-fun cast-from-var1344-to-var2324 (var1344) var2324)
(declare-const null-ClassObject ClassObject)
(declare-const var1135-LOOKUP var2929)
(declare-const var3111-CREATE_PROGRAM_FUNCTION var3111)
(declare-const null-var1344 var1344)
(declare-const var3321 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3321 null-ClassObject)))
(define-const var1710 var2929 var1135-LOOKUP) ; Statement: $r2 = <jdk.nashorn.internal.runtime.Context: java.lang.invoke.MethodHandles$Lookup LOOKUP> 
(define-const var3374 var3111 var3111-CREATE_PROGRAM_FUNCTION) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants CREATE_PROGRAM_FUNCTION> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3727 var1344) ; Statement: $r6 := @caughtexception 
(assert (not (= var3727 null-var1344)))
(define-const var2530 var864 var864-init) ; Statement: $r7 = new java.lang.AssertionError 
(define-const var2998 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2998)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2998!1 String)
(assert (= var2998!1 ""))
(assert true)
(define-const var2162 String (append/672562846 var2998!1 "Failed to retrieve a handle for the program function for ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to retrieve a handle for the program function for ") 
(declare-const var2998!2 String)
(assert (= var2998!2 (str.++ var2998!1 "Failed to retrieve a handle for the program function for ")))
(assert true)
(define-const var2303 String (getName/-1958580599 var3321)) ; Statement: $r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1846 String (append/672562846 var2162 var2303)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2162!1 String)
(assert (= var2162!1 (str.++ var2162 var2303)))
(assert true)
(define-const var162 String (toString/-2075883882 var1846)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/42819552 var2530 var162 (cast-from-var1344-to-var2324 var3727))) ; Statement: specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var2530!1 var864)
(declare-const var162!1 String)
(declare-const var3727!1 var1344)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var864-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/42819552=([java.lang.AssertionError, java.lang.String, java.lang.Throwable], void), cast-from-var1344-to-var2324=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var3321=r0, var2929=java.lang.invoke.MethodHandles$Lookup, var1135=jdk.nashorn.internal.runtime.Context, var1710=$r2, var3111=jdk.nashorn.internal.codegen.CompilerConstants, var3374=$r1, var1344=java.lang.ReflectiveOperationException, var3727=$r6, var864=java.lang.AssertionError, var2530=$r7, var2998=$r8, var2162=$r10, var2303=$r9, var1846=$r11, var162=$r12, var2324=java.lang.Throwable}
; {r0=var3321, java.lang.invoke.MethodHandles$Lookup=var2929, jdk.nashorn.internal.runtime.Context=var1135, $r2=var1710, jdk.nashorn.internal.codegen.CompilerConstants=var3111, $r1=var3374, java.lang.ReflectiveOperationException=var1344, $r6=var3727, java.lang.AssertionError=var864, $r7=var2530, $r8=var2998, $r10=var2162, $r9=var2303, $r11=var1846, $r12=var162, java.lang.Throwable=var2324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r2 = <jdk.nashorn.internal.runtime.Context: java.lang.invoke.MethodHandles$Lookup LOOKUP>;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants CREATE_PROGRAM_FUNCTION>;	$r6 := @caughtexception;	$r7 = new java.lang.AssertionError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to retrieve a handle for the program function for ");	$r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	throw $r7
;block_num 2