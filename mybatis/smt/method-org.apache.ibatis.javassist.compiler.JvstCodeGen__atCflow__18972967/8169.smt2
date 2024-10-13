(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var864 0)
(declare-sort var813 0)
(declare-sort var3525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3525-init () var3525)
(declare-fun <init>/-157978614 (var3525 String) void)
(declare-const null-var864 var864)
(declare-const null-var813 var813)
(declare-const var1476 var864) ; Statement: r6 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen 
(assert (not (= var1476 null-var864)))
(declare-const var300 var813) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTList 
(assert (not (= var300 null-var813)))
(define-const var3446 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3446)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3446!1 String)
(assert (= var3446!1 ""))
 ; Statement: if r1 == null goto $r2 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert (= var300 null-var813)) ; Cond: r1 == null 
(define-const var2143 var3525 var3525-init) ; Statement: $r2 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert true)
;(assert (<init>/-157978614 var2143 "bad $cflow")) ; Statement: specialinvoke $r2.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>("bad $cflow") 

(declare-const var2143!1 var3525)
(declare-const var1840 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3525-init=([], org.apache.ibatis.javassist.compiler.CompileError), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var864=org.apache.ibatis.javassist.compiler.JvstCodeGen, var1476=r6, var813=org.apache.ibatis.javassist.compiler.ast.ASTList, var300=r1, var3446=$r0, var3525=org.apache.ibatis.javassist.compiler.CompileError, var2143=$r2, var1840="bad $cflow"}
; {org.apache.ibatis.javassist.compiler.JvstCodeGen=var864, r6=var1476, org.apache.ibatis.javassist.compiler.ast.ASTList=var813, r1=var300, $r0=var3446, org.apache.ibatis.javassist.compiler.CompileError=var3525, $r2=var2143, "bad $cflow"=var1840}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen;	r1 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r2 = new org.apache.ibatis.javassist.compiler.CompileError;	$r2 = new org.apache.ibatis.javassist.compiler.CompileError;	specialinvoke $r2.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>("bad $cflow");	throw $r2
;block_num 2