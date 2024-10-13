(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3720 0)
(declare-sort var925 0)
(declare-sort var3463 0)
(declare-sort var2461 0)
(declare-sort var3480 0)
(declare-sort var505 0)
(declare-sort var3181 0)
(declare-sort var2917 0)
(declare-sort var516 0)
(declare-sort var2687 0)
(declare-sort var1200 0)
(declare-sort var3484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3463-init () var3463)
(declare-fun String-init () String)
(declare-fun errMgr/787585255 (var505) var3480)
(declare-fun cast-from-var3720-to-var505 (var3720) var505)
(define-fun <init>/1968657023 () String "")
(declare-fun root/-453937626 (var3720) var2917)
(declare-fun append/-1031950772 (String var516) String)
(declare-fun cast-from-var2917-to-var516 (var2917) var516)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun runTimeError/-1488906518 (var3480 var2687 var1200 var3181 var3484 var516) void)
(declare-fun cast-from-var2461-to-var3484 (var2461) var3484)
(declare-fun cast-from-String-to-var516 (String) var516)
(declare-const null-var3720 var3720)
(declare-const null-String String)
(declare-const var3720-verbose Bool)
(declare-const null-var2461 var2461)
(declare-const var3181-INVALID_TEMPLATE_NAME var3181)
(declare-const null-NullType var925)
(declare-const null-var2687 var2687)
(declare-const null-var1200 var1200)
(declare-const var3002 var3720) ; Statement: r2 := @this: org.stringtemplate.v4.STGroupDir 
(assert (not (= var3002 null-var3720)))
(declare-const var553 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var553 null-String)))
(declare-const var3427 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3427 null-String)))
(define-const var1741 Bool var3720-verbose) ; Statement: $z0 = <org.stringtemplate.v4.STGroupDir: boolean verbose> 
 ; Statement: if $z0 == 0 goto $r45 = new java.net.URI 
(assert (= (ite var1741 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3695 var3463 var3463-init) ; Statement: $r45 = new java.net.URI 
(define-const var1838 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2853 var2461) ; Statement: $r35 := @caughtexception 
(assert (not (= var2853 null-var2461)))
(define-const var185 var3480 (errMgr/787585255 (cast-from-var3720-to-var505 var3002))) ; Statement: $r37 = r2.<org.stringtemplate.v4.STGroupDir: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var2276 var3181 var3181-INVALID_TEMPLATE_NAME) ; Statement: $r38 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType INVALID_TEMPLATE_NAME> 
(define-const var2047 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2047)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2047!1 String)
(assert (= var2047!1 ""))
(define-const var1446 var2917 (root/-453937626 var3002)) ; Statement: $r39 = r2.<org.stringtemplate.v4.STGroupDir: java.net.URL root> 
(assert true)
(define-const var685 String (append/-1031950772 var2047!1 (cast-from-var2917-to-var516 var1446))) ; Statement: $r40 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r39) 
(declare-const var2047!2 String)
(assert (str.prefixof var2047!1 var2047!2))
(assert true)
(define-const var1382 String (append/672562846 var685 var3427)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var685!1 String)
(assert (= var685!1 (str.++ var685 var3427)))
(assert true)
(define-const var2927 String (toString/-2075883882 var1382)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (runTimeError/-1488906518 var185 null-var2687 null-var1200 var2276 (cast-from-var2461-to-var3484 var2853) (cast-from-String-to-var516 var2927))) ; Statement: virtualinvoke $r37.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, null, $r38, $r35, $r42) 

(declare-const var185!1 var3480)
(declare-const var2916 var925)
(declare-const var2916!1 var925)
(declare-const var2276!1 var3181)
(declare-const var2853!1 var2461)
(declare-const var2927!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3463-init=([], java.net.URI), String-init=([], java.lang.StringBuilder), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), cast-from-var3720-to-var505=([org.stringtemplate.v4.STGroupDir], org.stringtemplate.v4.STGroup), <init>/1968657023=([java.lang.StringBuilder], void), root/-453937626=([org.stringtemplate.v4.STGroupDir], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2917-to-var516=([java.net.URL], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), runTimeError/-1488906518=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, org.stringtemplate.v4.misc.ErrorType, java.lang.Throwable, java.lang.Object], void), cast-from-var2461-to-var3484=([java.lang.Exception], java.lang.Throwable), cast-from-String-to-var516=([java.lang.String], java.lang.Object)}
; {var3720=org.stringtemplate.v4.STGroupDir, var3002=r2, var553=r4, var925=null_type, var3427=r6, var1741=$z0, var3463=java.net.URI, var3695=$r45, var1838=$r44, var2461=java.lang.Exception, var2853=$r35, var3480=org.stringtemplate.v4.misc.ErrorManager, var505=org.stringtemplate.v4.STGroup, var185=$r37, var3181=org.stringtemplate.v4.misc.ErrorType, var2276=$r38, var2047=$r46, var2917=java.net.URL, var1446=$r39, var516=java.lang.Object, var685=$r40, var1382=$r41, var2927=$r42, var2687=org.stringtemplate.v4.Interpreter, var1200=org.stringtemplate.v4.InstanceScope, var3484=java.lang.Throwable, var2916=null}
; {org.stringtemplate.v4.STGroupDir=var3720, r2=var3002, r4=var553, null_type=var925, r6=var3427, $z0=var1741, java.net.URI=var3463, $r45=var3695, $r44=var1838, java.lang.Exception=var2461, $r35=var2853, org.stringtemplate.v4.misc.ErrorManager=var3480, org.stringtemplate.v4.STGroup=var505, $r37=var185, org.stringtemplate.v4.misc.ErrorType=var3181, $r38=var2276, $r46=var2047, java.net.URL=var2917, $r39=var1446, java.lang.Object=var516, $r40=var685, $r41=var1382, $r42=var2927, org.stringtemplate.v4.Interpreter=var2687, org.stringtemplate.v4.InstanceScope=var1200, java.lang.Throwable=var3484, null=var2916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.stringtemplate.v4.STGroupDir;	r4 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$z0 = <org.stringtemplate.v4.STGroupDir: boolean verbose>;	if $z0 == 0 goto $r45 = new java.net.URI;	$r45 = new java.net.URI;	$r44 = new java.lang.StringBuilder;	$r35 := @caughtexception;	$r37 = r2.<org.stringtemplate.v4.STGroupDir: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r38 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType INVALID_TEMPLATE_NAME>;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r39 = r2.<org.stringtemplate.v4.STGroupDir: java.net.URL root>;	$r40 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r39);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r37.<org.stringtemplate.v4.misc.ErrorManager: void runTimeError(org.stringtemplate.v4.Interpreter,org.stringtemplate.v4.InstanceScope,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, null, $r38, $r35, $r42);	return null
;block_num 3