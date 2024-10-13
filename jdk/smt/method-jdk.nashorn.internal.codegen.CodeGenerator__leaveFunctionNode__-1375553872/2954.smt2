(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var228 0)
(declare-sort var76 0)
(declare-sort var3065 0)
(declare-sort var87 0)
(declare-sort var700 0)
(declare-sort var1323 0)
(declare-sort var2880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var87_printStackTrace/-447071351 (var3065) void)
(declare-fun var700-init () var700)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1714936033 (var76) String)
(declare-fun append/-1031950772 (String var1323) String)
(declare-fun cast-from-var3065-to-var1323 (var3065) var1323)
(declare-fun getSource/118611882 (var76) var2880)
(declare-fun getName/-243293101 (var2880) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/244322921 (var700 String) void)
(declare-fun initCause/2003336360 (var3065 var3065) var3065)
(declare-fun cast-from-var700-to-var3065 (var700) var3065)
(declare-const null-var228 var228)
(declare-const null-var76 var76)
(declare-const null-var3065 var3065)
(declare-const var3462 var228) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator 
(assert (not (= var3462 null-var228)))
(declare-const var2272 var76) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var2272 null-var76)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var25 var3065) ; Statement: $r13 := @caughtexception 
(assert (not (= var25 null-var3065)))
;(assert (var87_printStackTrace/-447071351 var25)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.Context: void printStackTrace(java.lang.Throwable)>($r13) 

(declare-const var25!1 var3065)
(define-const var2468 var700 var700-init) ; Statement: $r14 = new java.lang.VerifyError 
(define-const var2362 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2362)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2362!1 String)
(assert (= var2362!1 ""))
(assert true)
(define-const var1511 String (append/672562846 var2362!1 "Code generation bug in \u0022")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Code generation bug in \"") 
(declare-const var2362!2 String)
(assert (= var2362!2 (str.++ var2362!1 "Code generation bug in \u0022")))
(assert true)
(define-const var3529 String (getName/-1714936033 var2272)) ; Statement: $r16 = virtualinvoke r1.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(assert true)
(define-const var2359 String (append/672562846 var1511 var3529)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1511!1 String)
(assert (= var1511!1 (str.++ var1511 var3529)))
(assert true)
(define-const var2899 String (append/672562846 var2359 "\u0022: likely stack misaligned: ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": likely stack misaligned: ") 
(declare-const var2359!1 String)
(assert (= var2359!1 (str.++ var2359 "\u0022: likely stack misaligned: ")))
(assert true)
(define-const var3903 String (append/-1031950772 var2899 (cast-from-var3065-to-var1323 var25!1))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var2899!1 String)
(assert (str.prefixof var2899 var2899!1))
(assert true)
(define-const var147 String (append/672562846 var3903 " ")) ; Statement: $r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3903!1 String)
(assert (= var3903!1 (str.++ var3903 " ")))
(assert true)
(define-const var1155 var2880 (getSource/118611882 var2272)) ; Statement: $r21 = virtualinvoke r1.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.runtime.Source getSource()>() 
(assert true)
(define-const var1686 String (getName/-243293101 var1155)) ; Statement: $r22 = virtualinvoke $r21.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert true)
(define-const var808 String (append/672562846 var147 var1686)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var147!1 String)
(assert (= var147!1 (str.++ var147 var1686)))
(assert true)
(define-const var3932 String (toString/-2075883882 var808)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/244322921 var2468 var3932)) ; Statement: specialinvoke $r14.<java.lang.VerifyError: void <init>(java.lang.String)>($r25) 

(declare-const var2468!1 var700)
(declare-const var3932!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var700-to-var3065 var2468!1) var25!1)) ; Statement: virtualinvoke $r14.<java.lang.VerifyError: java.lang.Throwable initCause(java.lang.Throwable)>($r13) 

(declare-const var2468!2 var700)
(declare-const var25!2 var3065)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var87_printStackTrace/-447071351=([java.lang.Throwable], void), var700-init=([], java.lang.VerifyError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3065-to-var1323=([java.lang.Throwable], java.lang.Object), getSource/118611882=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.runtime.Source), getName/-243293101=([jdk.nashorn.internal.runtime.Source], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/244322921=([java.lang.VerifyError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var700-to-var3065=([java.lang.VerifyError], java.lang.Throwable)}
; {var228=jdk.nashorn.internal.codegen.CodeGenerator, var3462=r0, var76=jdk.nashorn.internal.ir.FunctionNode, var2272=r1, var3065=java.lang.Throwable, var25=$r13, var87=jdk.nashorn.internal.runtime.Context, var700=java.lang.VerifyError, var2468=$r14, var2362=$r15, var1511=$r17, var3529=$r16, var2359=$r18, var2899=$r19, var1323=java.lang.Object, var3903=$r20, var147=$r23, var2880=jdk.nashorn.internal.runtime.Source, var1155=$r21, var1686=$r22, var808=$r24, var3932=$r25}
; {jdk.nashorn.internal.codegen.CodeGenerator=var228, r0=var3462, jdk.nashorn.internal.ir.FunctionNode=var76, r1=var2272, java.lang.Throwable=var3065, $r13=var25, jdk.nashorn.internal.runtime.Context=var87, java.lang.VerifyError=var700, $r14=var2468, $r15=var2362, $r17=var1511, $r16=var3529, $r18=var2359, $r19=var2899, java.lang.Object=var1323, $r20=var3903, $r23=var147, jdk.nashorn.internal.runtime.Source=var2880, $r21=var1155, $r22=var1686, $r24=var808, $r25=var3932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator;	r1 := @parameter0: jdk.nashorn.internal.ir.FunctionNode;	$r13 := @caughtexception;	staticinvoke <jdk.nashorn.internal.runtime.Context: void printStackTrace(java.lang.Throwable)>($r13);	$r14 = new java.lang.VerifyError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Code generation bug in \"");	$r16 = virtualinvoke r1.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": likely stack misaligned: ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r21 = virtualinvoke r1.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.runtime.Source getSource()>();	$r22 = virtualinvoke $r21.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.VerifyError: void <init>(java.lang.String)>($r25);	virtualinvoke $r14.<java.lang.VerifyError: java.lang.Throwable initCause(java.lang.Throwable)>($r13);	throw $r14
;block_num 2