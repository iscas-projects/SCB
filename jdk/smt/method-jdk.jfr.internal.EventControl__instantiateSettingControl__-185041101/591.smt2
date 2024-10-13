(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3059 0)
(declare-sort var3371 0)
(declare-sort var2921 0)
(declare-sort var768 0)
(declare-sort var1996 0)
(declare-sort var2333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3371_makeVisibleToJFR/256285439 (ClassObject) void)
(declare-fun var768-init () var768)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1247810213 (var768 String) void)
(declare-fun initCause/2003336360 (var1996 var1996) var1996)
(declare-fun cast-from-var768-to-var1996 (var768) var1996)
(declare-fun cast-from-var2921-to-var1996 (var2921) var1996)
(declare-fun cast-from-var1996-to-var2333 (var1996) var2333)
(declare-const null-var3059 var3059)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2921 var2921)
(declare-const var1048 var3059) ; Statement: r22 := @this: jdk.jfr.internal.EventControl 
(assert (not (= var1048 null-var3059)))
(declare-const var2121 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2121 null-ClassObject)))
;(assert (var3371_makeVisibleToJFR/256285439 var2121)) ; Statement: staticinvoke <jdk.jfr.internal.SecuritySupport: void makeVisibleToJFR(java.lang.Class)>(r0) 

(declare-const var2121!1 ClassObject)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1426 var2921) ; Statement: $r13 := @caughtexception 
(assert (not (= var1426 null-var2921)))
(define-const var3769 var768 var768-init) ; Statement: $r14 = new java.lang.InternalError 
(define-const var504 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var504)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var504!1 String)
(assert (= var504!1 ""))
(assert true)
(define-const var1009 String (append/672562846 var504!1 "Could not get constructor for ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get constructor for ") 
(declare-const var504!2 String)
(assert (= var504!2 (str.++ var504!1 "Could not get constructor for ")))
(assert true)
(define-const var1819 String (getName/-1958580599 var2121!1)) ; Statement: $r16 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1895 String (append/672562846 var1009 var1819)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1009!1 String)
(assert (= var1009!1 (str.++ var1009 var1819)))
(assert true)
(define-const var3454 String (toString/-2075883882 var1895)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1247810213 var3769 var3454)) ; Statement: specialinvoke $r14.<java.lang.InternalError: void <init>(java.lang.String)>($r19) 

(declare-const var3769!1 var768)
(declare-const var3454!1 String)
(assert true)
(define-const var3464 var1996 (initCause/2003336360 (cast-from-var768-to-var1996 var3769!1) (cast-from-var2921-to-var1996 var1426))) ; Statement: $r20 = virtualinvoke $r14.<java.lang.InternalError: java.lang.Throwable initCause(java.lang.Throwable)>($r13) 
(define-const var1421 var2333 (cast-from-var1996-to-var2333 var3464)) ; Statement: $r21 = (java.lang.Error) $r20 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var3371_makeVisibleToJFR/256285439=([java.lang.Class], void), var768-init=([], java.lang.InternalError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1247810213=([java.lang.InternalError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var768-to-var1996=([java.lang.InternalError], java.lang.Throwable), cast-from-var2921-to-var1996=([java.lang.Exception], java.lang.Throwable), cast-from-var1996-to-var2333=([java.lang.Throwable], java.lang.Error)}
; {var3059=jdk.jfr.internal.EventControl, var1048=r22, var2121=r0, var3371=jdk.jfr.internal.SecuritySupport, var2921=java.lang.Exception, var1426=$r13, var768=java.lang.InternalError, var3769=$r14, var504=$r15, var1009=$r17, var1819=$r16, var1895=$r18, var3454=$r19, var1996=java.lang.Throwable, var3464=$r20, var2333=java.lang.Error, var1421=$r21}
; {jdk.jfr.internal.EventControl=var3059, r22=var1048, r0=var2121, jdk.jfr.internal.SecuritySupport=var3371, java.lang.Exception=var2921, $r13=var1426, java.lang.InternalError=var768, $r14=var3769, $r15=var504, $r17=var1009, $r16=var1819, $r18=var1895, $r19=var3454, java.lang.Throwable=var1996, $r20=var3464, java.lang.Error=var2333, $r21=var1421}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r22 := @this: jdk.jfr.internal.EventControl;	r0 := @parameter0: java.lang.Class;	staticinvoke <jdk.jfr.internal.SecuritySupport: void makeVisibleToJFR(java.lang.Class)>(r0);	$r13 := @caughtexception;	$r14 = new java.lang.InternalError;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get constructor for ");	$r16 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.InternalError: void <init>(java.lang.String)>($r19);	$r20 = virtualinvoke $r14.<java.lang.InternalError: java.lang.Throwable initCause(java.lang.Throwable)>($r13);	$r21 = (java.lang.Error) $r20;	throw $r21
;block_num 2