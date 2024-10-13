(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var1948 0)
(declare-sort var946 0)
(declare-sort var3202 0)
(declare-sort var578 0)
(declare-sort var698 0)
(declare-sort var1586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var307) var3202)
(declare-fun var698-init () var698)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var307_methodDescription/283838376 (ClassObject String var946) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2016723416 (var698 String) void)
(declare-fun initCause/2003336360 (var1586 var1586) var1586)
(declare-fun cast-from-var698-to-var1586 (var698) var1586)
(declare-fun cast-from-var578-to-var1586 (var578) var1586)
(declare-const null-var307 var307)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var946 var946)
(declare-const null-var578 var578)
(declare-const var924 var307) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var924 null-var307)))
(declare-const var2535 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2535 null-ClassObject)))
(declare-const var2154 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2154 null-String)))
(declare-const var2666 var946) ; Statement: r3 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var2666 null-var946)))
(define-const var2995 var3202 (lookup/-920752463 var924)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var288 var578) ; Statement: $r13 := @caughtexception 
(assert (not (= var288 null-var578)))
(define-const var3804 var698 var698-init) ; Statement: $r14 = new java.lang.IllegalAccessError 
(define-const var1213 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1213)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1213!1 String)
(assert (= var1213!1 ""))
(assert true)
(define-const var93 String (append/672562846 var1213!1 "Failed to access special method ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access special method ") 
(declare-const var1213!2 String)
(assert (= var1213!2 (str.++ var1213!1 "Failed to access special method ")))
(define-const var1017 String (var307_methodDescription/283838376 var2535 var2154 var2666)) ; Statement: $r16 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3) 
(assert true)
(define-const var3569 String (append/672562846 var93 var1017)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var93!1 String)
(assert (= var93!1 (str.++ var93 var1017)))
(assert true)
(define-const var377 String (toString/-2075883882 var3569)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2016723416 var3804 var377)) ; Statement: specialinvoke $r14.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r19) 

(declare-const var3804!1 var698)
(declare-const var377!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var698-to-var1586 var3804!1) (cast-from-var578-to-var1586 var288))) ; Statement: virtualinvoke $r14.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r13) 

(declare-const var3804!2 var698)
(declare-const var288!1 var578)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var698-init=([], java.lang.IllegalAccessError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var307_methodDescription/283838376=([java.lang.Class, java.lang.String, java.lang.invoke.MethodType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2016723416=([java.lang.IllegalAccessError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var698-to-var1586=([java.lang.IllegalAccessError], java.lang.Throwable), cast-from-var578-to-var1586=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var307=jdk.internal.dynalink.support.Lookup, var924=r0, var2535=r1, var2154=r2, var1948=null_type, var946=java.lang.invoke.MethodType, var2666=r3, var3202=java.lang.invoke.MethodHandles$Lookup, var2995=$r4, var578=java.lang.IllegalAccessException, var288=$r13, var698=java.lang.IllegalAccessError, var3804=$r14, var1213=$r15, var93=$r17, var1017=$r16, var3569=$r18, var377=$r19, var1586=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var307, r0=var924, r1=var2535, r2=var2154, null_type=var1948, java.lang.invoke.MethodType=var946, r3=var2666, java.lang.invoke.MethodHandles$Lookup=var3202, $r4=var2995, java.lang.IllegalAccessException=var578, $r13=var288, java.lang.IllegalAccessError=var698, $r14=var3804, $r15=var1213, $r17=var93, $r16=var1017, $r18=var3569, $r19=var377, java.lang.Throwable=var1586}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.invoke.MethodType;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r13 := @caughtexception;	$r14 = new java.lang.IllegalAccessError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to access special method ");	$r16 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalAccessError: void <init>(java.lang.String)>($r19);	virtualinvoke $r14.<java.lang.IllegalAccessError: java.lang.Throwable initCause(java.lang.Throwable)>($r13);	throw $r14
;block_num 2