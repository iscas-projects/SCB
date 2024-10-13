(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2234 0)
(declare-sort var825 0)
(declare-sort var1948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var825_toString/1790204457 (var825) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1948-init () var1948)
(declare-fun <init>/184329998 (var1948 String) void)
(declare-const null-var2234 var2234)
(declare-const null-var825 var825)
(declare-const var1947 var2234) ; Statement: r3 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var1947 null-var2234)))
(declare-const var1307 var825) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var1307 null-var825)))
(define-const var1302 String (var825_toString/1790204457 var1307)) ; Statement: $r1 = interfaceinvoke r0.<java.nio.file.Path: java.lang.String toString()>() 
(assert true)
(define-const var2119 Bool (endsWith/985337093 var1302 ".jfr")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfr") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2119 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2195 var1948 var1948-init) ; Statement: $r2 = new jdk.jfr.internal.tool.UserDataException 
(assert true)
;(assert (<init>/184329998 var2195 "filename must end with \u0027.jfr\u0027")) ; Statement: specialinvoke $r2.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>("filename must end with \'.jfr\'") 

(declare-const var2195!1 var1948)
(declare-const var191 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var825_toString/1790204457=([java.nio.file.Path], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1948-init=([], jdk.jfr.internal.tool.UserDataException), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var2234=jdk.jfr.internal.tool.Command, var1947=r3, var825=java.nio.file.Path, var1307=r0, var1302=$r1, var2119=$z0, var1948=jdk.jfr.internal.tool.UserDataException, var2195=$r2, var191="filename must end with \'.jfr\'"}
; {jdk.jfr.internal.tool.Command=var2234, r3=var1947, java.nio.file.Path=var825, r0=var1307, $r1=var1302, $z0=var2119, jdk.jfr.internal.tool.UserDataException=var1948, $r2=var2195, "filename must end with \'.jfr\'"=var191}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r3 := @this: jdk.jfr.internal.tool.Command;	r0 := @parameter0: java.nio.file.Path;	$r1 = interfaceinvoke r0.<java.nio.file.Path: java.lang.String toString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfr");	if $z0 != 0 goto return;	$r2 = new jdk.jfr.internal.tool.UserDataException;	specialinvoke $r2.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>("filename must end with \'.jfr\'");	throw $r2
;block_num 2