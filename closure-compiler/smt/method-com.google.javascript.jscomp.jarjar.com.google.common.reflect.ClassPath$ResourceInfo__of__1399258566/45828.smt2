(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2375 0)
(declare-sort var2074 0)
(declare-sort var1095 0)
(declare-sort var1350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1350-init () var1350)
(declare-fun <init>/-1197809235 (var1350 var2375 String var1095) void)
(declare-const null-var2375 var2375)
(declare-const null-String String)
(declare-const null-var1095 var1095)
(declare-const var1003 var2375) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var1003 null-var2375)))
(declare-const var1652 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1652 null-String)))
(declare-const var700 var1095) ; Statement: r3 := @parameter2: java.lang.ClassLoader 
(assert (not (= var700 null-var1095)))
(assert true)
(define-const var2129 Bool (endsWith/985337093 var1652 ".class")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo 
(assert (= (ite var2129 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3623 var1350 var1350-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo 
(assert true)
;(assert (<init>/-1197809235 var3623 var1003 var1652 var700)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo: void <init>(java.io.File,java.lang.String,java.lang.ClassLoader)>(r2, r0, r3) 

(declare-const var3623!1 var1350)
(declare-const var1003!1 var2375)
(declare-const var1652!1 String)
(declare-const var700!1 var1095)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1350-init=([], com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo), <init>/-1197809235=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo, java.io.File, java.lang.String, java.lang.ClassLoader], void)}
; {var2375=java.io.File, var1003=r2, var1652=r0, var2074=null_type, var1095=java.lang.ClassLoader, var700=r3, var2129=$z0, var1350=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo, var3623=$r1}
; {java.io.File=var2375, r2=var1003, r0=var1652, null_type=var2074, java.lang.ClassLoader=var1095, r3=var700, $z0=var2129, com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo=var1350, $r1=var3623}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.ClassLoader;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo;	$r1 = new com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo;	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo: void <init>(java.io.File,java.lang.String,java.lang.ClassLoader)>(r2, r0, r3);	return $r1
;block_num 2