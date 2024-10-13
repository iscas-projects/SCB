(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1259 0)
(declare-sort var46 0)
(declare-sort var1374 0)
(declare-sort var1504 0)
(declare-sort var2990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1259_getProperty/258823597 (String) String)
(declare-fun printStackTrace/885456489 (var2990) void)
(declare-fun cast-from-var1504-to-var2990 (var1504) var2990)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var46 var46)
(declare-const null-String String)
(declare-const null-var1504 var1504)
(declare-const var2408 (Array Int String)) ; Statement: r2 := @parameter0: java.lang.String[] 
(assert (not (= var2408 null-__Array__Int__String__)))
(define-const var2516 String (var1259_getProperty/258823597 "mainclass")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass") 
(define-const var1188 var46 null-var46) ; Statement: r34 = null 
(define-const var2369 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1040 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
 ; Statement: if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err> 
(assert (not (= var2516 null-String))) ; Negate: Cond: r0 == null  
(define-const var1975 String "") ; Statement: $r5 = "" 
(assert true)
(define-const var948 Bool (= var1975 var2516)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r35 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r0) 
(assert (not (= (ite var948 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3789 var1504) ; Statement: $r6 := @caughtexception 
(assert (not (= var3789 null-var1504)))
(assert true)
;(assert (printStackTrace/885456489 (cast-from-var1504-to-var2990 var3789))) ; Statement: virtualinvoke $r6.<java.lang.Exception: void printStackTrace()>() 

(declare-const var3789!1 var1504)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1259_getProperty/258823597=([java.lang.String], java.lang.String), printStackTrace/885456489=([java.lang.Throwable], void), cast-from-var1504-to-var2990=([java.lang.Exception], java.lang.Throwable)}
; {var2408=r2, var1259=java.lang.System, var2516=r0, var46=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var1188=r34, var2369=z1, var1040=z2, var1374=null_type, var1975=$r5, var948=$z0, var1504=java.lang.Exception, var3789=$r6, var2990=java.lang.Throwable}
; {r2=var2408, java.lang.System=var1259, r0=var2516, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var46, r34=var1188, z1=var2369, z2=var1040, null_type=var1374, $r5=var1975, $z0=var948, java.lang.Exception=var1504, $r6=var3789, java.lang.Throwable=var2990}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: java.lang.String[];	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("mainclass");	r34 = null;	z1 = 0;	z2 = 0;	if r0 == null goto $r1 = <java.lang.System: java.io.PrintStream err>;	$r5 = "";	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r35 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r0);	$r6 := @caughtexception;	virtualinvoke $r6.<java.lang.Exception: void printStackTrace()>();	return
;block_num 4