(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1607 0)
(declare-sort var2136 0)
(declare-sort var926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2136-init () var2136)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var926_getMessage/90889441 (String (Array Int String)) String)
(declare-fun <init>/-1903915657 (var2136 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3225 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3225 null-String)))
(declare-const var288 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var288 null-String)))
(define-const var2376 var2136 var2136-init) ; Statement: $r0 = new jdk.nashorn.internal.runtime.ParserException 
(define-const var2946 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2946)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2946!1 String)
(assert (= var2946!1 ""))
(assert true)
(define-const var238 String (append/672562846 var2946!1 "parser.error.regex.")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parser.error.regex.") 
(declare-const var2946!2 String)
(assert (= var2946!2 (str.++ var2946!1 "parser.error.regex.")))
(assert true)
(define-const var2209 String (append/672562846 var238 var3225)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var238!1 String)
(assert (= var238!1 (str.++ var238 var3225)))
(assert true)
(define-const var1962 String (toString/-2075883882 var2209)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var383 (Array Int String) arr-String-init) ; Statement: $r5 = newarray (java.lang.String)[1] 
(declare-const var383!1 (Array Int String))
(assert (not (= var383!1 null-__Array__Int__String__)))
(assert (= (select var383!1 0) var288)) ; Statement: $r5[0] = r6 
(define-const var1769 String (var926_getMessage/90889441 var1962 var383!1)) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r7, $r5) 
(assert true)
;(assert (<init>/-1903915657 var2376 var1769)) ; Statement: specialinvoke $r0.<jdk.nashorn.internal.runtime.ParserException: void <init>(java.lang.String)>($r8) 

(declare-const var2376!1 var2136)
(declare-const var1769!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2136-init=([], jdk.nashorn.internal.runtime.ParserException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-String-init=([], java.lang.String[]), var926_getMessage/90889441=([java.lang.String, java.lang.String[]], java.lang.String), <init>/-1903915657=([jdk.nashorn.internal.runtime.ParserException, java.lang.String], void)}
; {var3225=r2, var1607=null_type, var288=r6, var2136=jdk.nashorn.internal.runtime.ParserException, var2376=$r0, var2946=$r1, var238=$r3, var2209=$r4, var1962=$r7, var383=$r5, var926=jdk.nashorn.internal.runtime.ECMAErrors, var1769=$r8}
; {r2=var3225, null_type=var1607, r6=var288, jdk.nashorn.internal.runtime.ParserException=var2136, $r0=var2376, $r1=var2946, $r3=var238, $r4=var2209, $r7=var1962, $r5=var383, jdk.nashorn.internal.runtime.ECMAErrors=var926, $r8=var1769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r0 = new jdk.nashorn.internal.runtime.ParserException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parser.error.regex.");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = newarray (java.lang.String)[1];	$r5[0] = r6;	$r8 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: java.lang.String getMessage(java.lang.String,java.lang.String[])>($r7, $r5);	specialinvoke $r0.<jdk.nashorn.internal.runtime.ParserException: void <init>(java.lang.String)>($r8);	throw $r0
;block_num 1