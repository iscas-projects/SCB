(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3916 0)
(declare-sort var1470 0)
(declare-sort var73 0)
(declare-sort var192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var192-init () var192)
(declare-fun <init>/114625795 (var192 var3916 String var73) void)
(declare-const null-var3916 var3916)
(declare-const null-String String)
(declare-const null-var73 var73)
(declare-const var991 var3916) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var991 null-var3916)))
(declare-const var3629 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3629 null-String)))
(declare-const var596 var73) ; Statement: r3 := @parameter2: java.lang.ClassLoader 
(assert (not (= var596 null-var73)))
(assert true)
(define-const var702 Bool (endsWith/985337093 var3629 ".class")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo 
(assert (not (= (ite var702 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2520 var192 var192-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo 
(assert true)
;(assert (<init>/114625795 var2520 var991 var3629 var596)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: void <init>(java.io.File,java.lang.String,java.lang.ClassLoader)>(r2, r0, r3) 

(declare-const var2520!1 var192)
(declare-const var991!1 var3916)
(declare-const var3629!1 String)
(declare-const var596!1 var73)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var192-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo), <init>/114625795=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo, java.io.File, java.lang.String, java.lang.ClassLoader], void)}
; {var3916=java.io.File, var991=r2, var3629=r0, var1470=null_type, var73=java.lang.ClassLoader, var596=r3, var702=$z0, var192=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo, var2520=$r4}
; {java.io.File=var3916, r2=var991, r0=var3629, null_type=var1470, java.lang.ClassLoader=var73, r3=var596, $z0=var702, com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo=var192, $r4=var2520}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.ClassLoader;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo;	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ClassInfo: void <init>(java.io.File,java.lang.String,java.lang.ClassLoader)>(r2, r0, r3);	return $r4
;block_num 2