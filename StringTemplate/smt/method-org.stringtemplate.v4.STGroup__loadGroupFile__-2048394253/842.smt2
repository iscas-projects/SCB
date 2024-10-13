(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1906 0)
(declare-sort var738 0)
(declare-sort var2627 0)
(declare-sort var1042 0)
(declare-sort var1555 0)
(declare-sort var2261 0)
(declare-sort var2478 0)
(declare-sort var1420 0)
(declare-sort var2080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2627-init () var2627)
(declare-fun <init>/-1387535912 (var2627 String) void)
(declare-fun errMgr/787585255 (var1906) var1555)
(declare-fun IOError/-895345567 (var1555 var2478 var2261 var1420 var2080) void)
(declare-fun cast-from-var1042-to-var1420 (var1042) var1420)
(declare-fun cast-from-String-to-var2080 (String) var2080)
(declare-const null-var1906 var1906)
(declare-const null-String String)
(declare-const var1906-verbose Bool)
(declare-const null-var1042 var1042)
(declare-const var2261-CANT_LOAD_GROUP_FILE var2261)
(declare-const null-NullType var738)
(declare-const null-var2478 var2478)
(declare-const var879 var1906) ; Statement: r3 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var879 null-var1906)))
(declare-const var1918 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var1918 null-String)))
(declare-const var1004 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1004 null-String)))
(define-const var3322 Bool var1906-verbose) ; Statement: $z0 = <org.stringtemplate.v4.STGroup: boolean verbose> 
 ; Statement: if $z0 == 0 goto $r25 = new java.net.URL 
(assert (= (ite var3322 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2657 var2627 var2627-init) ; Statement: $r25 = new java.net.URL 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1387535912 var2657 var1004)) ; Statement: specialinvoke $r25.<java.net.URL: void <init>(java.lang.String)>(r1) 

(declare-const var2657!1 var2627)
(declare-const var1004!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3903 var1042) ; Statement: $r21 := @caughtexception 
(assert (not (= var3903 null-var1042)))
(define-const var3782 var1555 (errMgr/787585255 var879)) ; Statement: $r23 = r3.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3555 var2261 var2261-CANT_LOAD_GROUP_FILE) ; Statement: $r22 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType CANT_LOAD_GROUP_FILE> 
(assert true)
;(assert (IOError/-895345567 var3782 null-var2478 var3555 (cast-from-var1042-to-var1420 var3903) (cast-from-String-to-var2080 var1004!1))) ; Statement: virtualinvoke $r23.<org.stringtemplate.v4.misc.ErrorManager: void IOError(org.stringtemplate.v4.ST,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, $r22, $r21, r1) 

(declare-const var3782!1 var1555)
(declare-const var2807 var738)
(declare-const var3555!1 var2261)
(declare-const var3903!1 var1042)
(declare-const var1004!2 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2627-init=([], java.net.URL), <init>/-1387535912=([java.net.URL, java.lang.String], void), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), IOError/-895345567=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.ST, org.stringtemplate.v4.misc.ErrorType, java.lang.Throwable, java.lang.Object], void), cast-from-var1042-to-var1420=([java.lang.Exception], java.lang.Throwable), cast-from-String-to-var2080=([java.lang.String], java.lang.Object)}
; {var1906=org.stringtemplate.v4.STGroup, var879=r3, var1918=r9, var738=null_type, var1004=r1, var3322=$z0, var2627=java.net.URL, var2657=$r25, var1042=java.lang.Exception, var3903=$r21, var1555=org.stringtemplate.v4.misc.ErrorManager, var3782=$r23, var2261=org.stringtemplate.v4.misc.ErrorType, var3555=$r22, var2478=org.stringtemplate.v4.ST, var1420=java.lang.Throwable, var2080=java.lang.Object, var2807=null}
; {org.stringtemplate.v4.STGroup=var1906, r3=var879, r9=var1918, null_type=var738, r1=var1004, $z0=var3322, java.net.URL=var2627, $r25=var2657, java.lang.Exception=var1042, $r21=var3903, org.stringtemplate.v4.misc.ErrorManager=var1555, $r23=var3782, org.stringtemplate.v4.misc.ErrorType=var2261, $r22=var3555, org.stringtemplate.v4.ST=var2478, java.lang.Throwable=var1420, java.lang.Object=var2080, null=var2807}
;seq 
;cnt {}
;stmts r3 := @this: org.stringtemplate.v4.STGroup;	r9 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	if $z0 == 0 goto $r25 = new java.net.URL;	$r25 = new java.net.URL;	specialinvoke $r25.<java.net.URL: void <init>(java.lang.String)>(r1);	$r21 := @caughtexception;	$r23 = r3.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r22 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType CANT_LOAD_GROUP_FILE>;	virtualinvoke $r23.<org.stringtemplate.v4.misc.ErrorManager: void IOError(org.stringtemplate.v4.ST,org.stringtemplate.v4.misc.ErrorType,java.lang.Throwable,java.lang.Object)>(null, $r22, $r21, r1);	return
;block_num 5