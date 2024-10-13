(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var788 0)
(declare-sort var3181 0)
(declare-sort var239 0)
(declare-sort var2881 0)
(declare-sort var1152 0)
(declare-sort var1225 0)
(declare-sort var1272 0)
(declare-sort var3851 0)
(declare-sort var2580 0)
(declare-sort var348 0)
(declare-sort var3218 0)
(declare-sort var2387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun st/-361780184 (var239) var2881)
(declare-fun var1225-init () var1225)
(declare-fun <init>/358169345 (var1225) void)
(declare-fun var1272-init () var1272)
(declare-fun <init>/-1864438596 (var1272 var3851) void)
(declare-fun cast-from-var1225-to-var3851 (var1225) var3851)
(declare-fun printStackTrace/652371045 (var2580 var1272) void)
(declare-fun cast-from-var1152-to-var2580 (var1152) var2580)
(declare-fun flush/-1073200041 (var1272) void)
(declare-fun errMgr/397531683 (var788) var348)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/138175384 (var1225) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun runTimeError/1005957290 (var348 var788 var239 var3218 var2387) void)
(declare-fun cast-from-String-to-var2387 (String) var2387)
(declare-const null-var788 var788)
(declare-const null-var3181 var3181)
(declare-const null-var239 var239)
(declare-const var788-trace Bool)
(declare-const null-var1152 var1152)
(declare-const var3218-INTERNAL_ERROR var3218)
(declare-const var2153 var788) ; Statement: r2 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var2153 null-var788)))
(declare-const var1117 var3181) ; Statement: r3 := @parameter0: org.stringtemplate.v4.STWriter 
(assert (not (= var1117 null-var3181)))
(declare-const var2136 var239) ; Statement: r0 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var2136 null-var239)))
(define-const var680 var2881 (st/-361780184 var2136)) ; Statement: r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(define-const var466 Bool var788-trace) ; Statement: $z0 = <org.stringtemplate.v4.Interpreter: boolean trace> 
 ; Statement: if $z0 == 0 goto virtualinvoke r2.<org.stringtemplate.v4.Interpreter: void setDefaultArguments(org.stringtemplate.v4.STWriter,org.stringtemplate.v4.InstanceScope)>(r3, r0) 
(assert (not (= (ite var466 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var789 var1152) ; Statement: $r11 := @caughtexception 
(assert (not (= var789 null-var1152)))
(define-const var1720 var1225 var1225-init) ; Statement: $r12 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var1720)) ; Statement: specialinvoke $r12.<java.io.StringWriter: void <init>()>() 

(declare-const var1720!1 var1225)
(define-const var1738 var1272 var1272-init) ; Statement: $r13 = new java.io.PrintWriter 
(assert true)
;(assert (<init>/-1864438596 var1738 (cast-from-var1225-to-var3851 var1720!1))) ; Statement: specialinvoke $r13.<java.io.PrintWriter: void <init>(java.io.Writer)>($r12) 

(declare-const var1738!1 var1272)
(declare-const var1720!2 var1225)
(assert true)
;(assert (printStackTrace/652371045 (cast-from-var1152-to-var2580 var789) var1738!1)) ; Statement: virtualinvoke $r11.<java.lang.Exception: void printStackTrace(java.io.PrintWriter)>($r13) 

(declare-const var789!1 var1152)
(declare-const var1738!2 var1272)
(assert true)
;(assert (flush/-1073200041 var1738!2)) ; Statement: virtualinvoke $r13.<java.io.PrintWriter: void flush()>() 

(declare-const var1738!3 var1272)
(define-const var2807 var348 (errMgr/397531683 var2153)) ; Statement: $r15 = r2.<org.stringtemplate.v4.Interpreter: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3541 var3218 var3218-INTERNAL_ERROR) ; Statement: $r16 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType INTERNAL_ERROR> 
(define-const var918 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var918)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var918!1 String)
(assert (= var918!1 ""))
(assert true)
(define-const var377 String (append/672562846 var918!1 "internal error: ")) ; Statement: $r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("internal error: ") 
(declare-const var918!2 String)
(assert (= var918!2 (str.++ var918!1 "internal error: ")))
(assert true)
(define-const var3565 String (toString/138175384 var1720!2)) ; Statement: $r17 = virtualinvoke $r12.<java.io.StringWriter: java.lang.String toString()>() 
(assert true)
(define-const var961 String (append/672562846 var377 var3565)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var377!1 String)
(assert (= var377!1 (str.++ var377 var3565)))
(assert true)
(define-const var734 String (toString/-2075883882 var961)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (runTimeError/1005957290 var2807 var2153 var2136 var3541 (cast-from-String-to-var2387 var734))) ; Statement: virtualinvoke $r15.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Object)>(r2, r0, $r16, $r20) 

(declare-const var2807!1 var348)
(declare-const var2153!1 var788)
(declare-const var2136!1 var239)
(declare-const var3541!1 var3218)
(declare-const var734!1 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), var1225-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var1272-init=([], java.io.PrintWriter), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var1225-to-var3851=([java.io.StringWriter], java.io.Writer), printStackTrace/652371045=([java.lang.Throwable, java.io.PrintWriter], void), cast-from-var1152-to-var2580=([java.lang.Exception], java.lang.Throwable), flush/-1073200041=([java.io.PrintWriter], void), errMgr/397531683=([org.stringtemplate.v4.Interpreter], org.stringtemplate.v4.misc.ErrorManager), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/138175384=([java.io.StringWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), runTimeError/1005957290=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, org.stringtemplate.v4.misc.ErrorType, java.lang.Object], void), cast-from-String-to-var2387=([java.lang.String], java.lang.Object)}
; {var788=org.stringtemplate.v4.Interpreter, var2153=r2, var3181=org.stringtemplate.v4.STWriter, var1117=r3, var239=org.stringtemplate.v4.InstanceScope, var2136=r0, var2881=org.stringtemplate.v4.ST, var680=r1, var466=$z0, var1152=java.lang.Exception, var789=$r11, var1225=java.io.StringWriter, var1720=$r12, var1272=java.io.PrintWriter, var1738=$r13, var3851=java.io.Writer, var2580=java.lang.Throwable, var348=org.stringtemplate.v4.misc.ErrorManager, var2807=$r15, var3218=org.stringtemplate.v4.misc.ErrorType, var3541=$r16, var918=$r14, var377=$r18, var3565=$r17, var961=$r19, var734=$r20, var2387=java.lang.Object}
; {org.stringtemplate.v4.Interpreter=var788, r2=var2153, org.stringtemplate.v4.STWriter=var3181, r3=var1117, org.stringtemplate.v4.InstanceScope=var239, r0=var2136, org.stringtemplate.v4.ST=var2881, r1=var680, $z0=var466, java.lang.Exception=var1152, $r11=var789, java.io.StringWriter=var1225, $r12=var1720, java.io.PrintWriter=var1272, $r13=var1738, java.io.Writer=var3851, java.lang.Throwable=var2580, org.stringtemplate.v4.misc.ErrorManager=var348, $r15=var2807, org.stringtemplate.v4.misc.ErrorType=var3218, $r16=var3541, $r14=var918, $r18=var377, $r17=var3565, $r19=var961, $r20=var734, java.lang.Object=var2387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.io.StringWriter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.stringtemplate.v4.Interpreter;	r3 := @parameter0: org.stringtemplate.v4.STWriter;	r0 := @parameter1: org.stringtemplate.v4.InstanceScope;	r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$z0 = <org.stringtemplate.v4.Interpreter: boolean trace>;	if $z0 == 0 goto virtualinvoke r2.<org.stringtemplate.v4.Interpreter: void setDefaultArguments(org.stringtemplate.v4.STWriter,org.stringtemplate.v4.InstanceScope)>(r3, r0);	$r11 := @caughtexception;	$r12 = new java.io.StringWriter;	specialinvoke $r12.<java.io.StringWriter: void <init>()>();	$r13 = new java.io.PrintWriter;	specialinvoke $r13.<java.io.PrintWriter: void <init>(java.io.Writer)>($r12);	virtualinvoke $r11.<java.lang.Exception: void printStackTrace(java.io.PrintWriter)>($r13);	virtualinvoke $r13.<java.io.PrintWriter: void flush()>();	$r15 = r2.<org.stringtemplate.v4.Interpreter: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r16 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType INTERNAL_ERROR>;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("internal error: ");	$r17 = virtualinvoke $r12.<java.io.StringWriter: java.lang.String toString()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r15.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Object)>(r2, r0, $r16, $r20);	return 0
;block_num 2