(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var251 0)
(declare-sort var1745 0)
(declare-sort var1453 0)
(declare-sort var1806 0)
(declare-sort var702 0)
(declare-sort var589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1453-init () var1453)
(declare-fun var702-init () var702)
(declare-fun toString/-1112415476 (var589) String)
(declare-fun cast-from-var1806-to-var589 (var1806) var589)
(declare-fun <init>/-1208695669 (var702 String) void)
(declare-const null-var251 var251)
(declare-const null-String String)
(declare-const null-var1806 var1806)
(declare-const var1324 var251) ; Statement: r2 := @this: org.javacc.jjtree.IO 
(assert (not (= var1324 null-var251)))
(declare-const var610 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var610 null-String)))
(define-const var3121 var1453 var1453-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var853 var1806) ; Statement: $r25 := @caughtexception 
(assert (not (= var853 null-var1806)))
(define-const var1643 var702 var702-init) ; Statement: $r26 = new org.javacc.jjtree.JJTreeIOException 
(assert true)
(define-const var2378 String (toString/-1112415476 (cast-from-var1806-to-var589 var853))) ; Statement: $r27 = virtualinvoke $r25.<java.io.IOException: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1208695669 var1643 var2378)) ; Statement: specialinvoke $r26.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r27) 

(declare-const var1643!1 var702)
(declare-const var2378!1 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var1453-init=([], java.io.File), var702-init=([], org.javacc.jjtree.JJTreeIOException), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1806-to-var589=([java.io.IOException], java.lang.Throwable), <init>/-1208695669=([org.javacc.jjtree.JJTreeIOException, java.lang.String], void)}
; {var251=org.javacc.jjtree.IO, var1324=r2, var610=r1, var1745=null_type, var1453=java.io.File, var3121=$r0, var1806=java.io.IOException, var853=$r25, var702=org.javacc.jjtree.JJTreeIOException, var1643=$r26, var589=java.lang.Throwable, var2378=$r27}
; {org.javacc.jjtree.IO=var251, r2=var1324, r1=var610, null_type=var1745, java.io.File=var1453, $r0=var3121, java.io.IOException=var1806, $r25=var853, org.javacc.jjtree.JJTreeIOException=var702, $r26=var1643, java.lang.Throwable=var589, $r27=var2378}
;seq <java.lang.Throwable: java.lang.String toString()>
;cnt {}
;stmts r2 := @this: org.javacc.jjtree.IO;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r25 := @caughtexception;	$r26 = new org.javacc.jjtree.JJTreeIOException;	$r27 = virtualinvoke $r25.<java.io.IOException: java.lang.String toString()>();	specialinvoke $r26.<org.javacc.jjtree.JJTreeIOException: void <init>(java.lang.String)>($r27);	throw $r26
;block_num 2