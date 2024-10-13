(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2936 0)
(declare-sort var409 0)
(declare-sort var349 0)
(declare-sort var2051 0)
(declare-sort var1414 0)
(declare-sort var2491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookupClass/308365170 (var2936 String Bool) var2051)
(declare-fun var2491-init () var2491)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun get/-795098227 (var349) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var2491 String) void)
(declare-const null-var2936 var2936)
(declare-const null-String String)
(declare-const null-var349 var349)
(declare-const null-var1414 var1414)
(declare-const var807 var2936) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.MemberResolver 
(assert (not (= var807 null-var2936)))
(declare-const var896 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var896 null-String)))
(declare-const var1659 var349) ; Statement: r3 := @parameter1: org.apache.ibatis.javassist.compiler.ast.Symbol 
(assert (not (= var1659 null-var349)))
(assert true)
(define-const var2823 var2051 (lookupClass/308365170 var807 var896 (ite (= 1 0) true false))) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.MemberResolver: org.apache.ibatis.javassist.CtClass lookupClass(java.lang.String,boolean)>(r1, 0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var78 var1414) ; Statement: $r6 := @caughtexception 
(assert (not (= var78 null-var1414)))
(define-const var3517 var2491 var2491-init) ; Statement: $r7 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var2612 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2612)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2612!1 String)
(assert (= var2612!1 ""))
(assert true)
(define-const var3276 String (append/672562846 var2612!1 "no such field: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such field: ") 
(declare-const var2612!2 String)
(assert (= var2612!2 (str.++ var2612!1 "no such field: ")))
(assert true)
(define-const var1308 String (get/-795098227 var1659)) ; Statement: $r9 = virtualinvoke r3.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>() 
(assert true)
(define-const var861 String (append/672562846 var3276 var1308)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3276!1 String)
(assert (= var3276!1 (str.++ var3276 var1308)))
(assert true)
(define-const var277 String (toString/-2075883882 var861)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var3517 var277)) ; Statement: specialinvoke $r7.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12) 

(declare-const var3517!1 var2491)
(declare-const var277!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {lookupClass/308365170=([org.apache.ibatis.javassist.compiler.MemberResolver, java.lang.String, boolean], org.apache.ibatis.javassist.CtClass), var2491-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var2936=org.apache.ibatis.javassist.compiler.MemberResolver, var807=r0, var896=r1, var409=null_type, var349=org.apache.ibatis.javassist.compiler.ast.Symbol, var1659=r3, var2051=org.apache.ibatis.javassist.CtClass, var2823=r2, var1414=org.apache.ibatis.javassist.NotFoundException, var78=$r6, var2491=org.apache.ibatis.javassist.compiler.CompileError, var3517=$r7, var2612=$r8, var3276=$r10, var1308=$r9, var861=$r11, var277=$r12}
; {org.apache.ibatis.javassist.compiler.MemberResolver=var2936, r0=var807, r1=var896, null_type=var409, org.apache.ibatis.javassist.compiler.ast.Symbol=var349, r3=var1659, org.apache.ibatis.javassist.CtClass=var2051, r2=var2823, org.apache.ibatis.javassist.NotFoundException=var1414, $r6=var78, org.apache.ibatis.javassist.compiler.CompileError=var2491, $r7=var3517, $r8=var2612, $r10=var3276, $r9=var1308, $r11=var861, $r12=var277}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.MemberResolver;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.apache.ibatis.javassist.compiler.ast.Symbol;	r2 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.MemberResolver: org.apache.ibatis.javassist.CtClass lookupClass(java.lang.String,boolean)>(r1, 0);	$r6 := @caughtexception;	$r7 = new org.apache.ibatis.javassist.compiler.CompileError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such field: ");	$r9 = virtualinvoke r3.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2