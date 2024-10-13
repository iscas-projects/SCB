(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2753 0)
(declare-sort var3361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3361_toString/1790204457 (var3361) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var2753 var2753)
(declare-const null-var3361 var3361)
(declare-const var2711 var2753) ; Statement: r3 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var2711 null-var2753)))
(declare-const var1670 var3361) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var1670 null-var3361)))
(define-const var3772 String (var3361_toString/1790204457 var1670)) ; Statement: $r1 = interfaceinvoke r0.<java.nio.file.Path: java.lang.String toString()>() 
(assert true)
(define-const var640 Bool (endsWith/985337093 var3772 ".jfr")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfr") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var640 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3361_toString/1790204457=([java.nio.file.Path], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2753=jdk.jfr.internal.tool.Command, var2711=r3, var3361=java.nio.file.Path, var1670=r0, var3772=$r1, var640=$z0}
; {jdk.jfr.internal.tool.Command=var2753, r3=var2711, java.nio.file.Path=var3361, r0=var1670, $r1=var3772, $z0=var640}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r3 := @this: jdk.jfr.internal.tool.Command;	r0 := @parameter0: java.nio.file.Path;	$r1 = interfaceinvoke r0.<java.nio.file.Path: java.lang.String toString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfr");	if $z0 != 0 goto return;	return
;block_num 2