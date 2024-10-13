(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1350 0)
(declare-sort var2762 0)
(declare-sort var3638 0)
(declare-sort var3389 0)
(declare-sort var3172 0)
(declare-sort var925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-795098227 (var3638) String)
(declare-fun var925-init () var925)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/619340002 (var925 String var3389) void)
(declare-const null-var1350 var1350)
(declare-const null-String String)
(declare-const null-var3638 var3638)
(declare-const null-var3389 var3389)
(declare-const null-var3172 var3172)
(declare-const var2727 var1350) ; Statement: r2 := @this: org.apache.ibatis.javassist.compiler.MemberResolver 
(assert (not (= var2727 null-var1350)))
(declare-const var3093 String) ; Statement: r21 := @parameter0: java.lang.String 
(assert (not (= var3093 null-String)))
(declare-const var2516 var3638) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.compiler.ast.Symbol 
(assert (not (= var2516 null-var3638)))
(declare-const var915 var3389) ; Statement: r12 := @parameter2: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var915 null-var3389)))
(assert true)
(define-const var2116 String (get/-795098227 var2516)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1214 var3172) ; Statement: $r14 := @caughtexception 
(assert (not (= var1214 null-var3172)))
(define-const var3547 var925 var925-init) ; Statement: $r15 = new org.apache.ibatis.javassist.compiler.NoFieldException 
(define-const var245 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var245)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var245!1 String)
(assert (= var245!1 ""))
(assert true)
(define-const var858 String (append/672562846 var245!1 var3093)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var245!2 String)
(assert (= var245!2 (str.++ var245!1 var3093)))
(assert true)
(define-const var3234 String (append/672562846 var858 "/")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var858!1 String)
(assert (= var858!1 (str.++ var858 "/")))
(assert true)
(define-const var3435 String (append/672562846 var3234 var2116)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3234!1 String)
(assert (= var3234!1 (str.++ var3234 var2116)))
(assert true)
(define-const var1726 String (toString/-2075883882 var3435)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/619340002 var3547 var1726 var915)) ; Statement: specialinvoke $r15.<org.apache.ibatis.javassist.compiler.NoFieldException: void <init>(java.lang.String,org.apache.ibatis.javassist.compiler.ast.ASTree)>($r20, r12) 

(declare-const var3547!1 var925)
(declare-const var1726!1 String)
(declare-const var915!1 var3389)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-795098227=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), var925-init=([], org.apache.ibatis.javassist.compiler.NoFieldException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/619340002=([org.apache.ibatis.javassist.compiler.NoFieldException, java.lang.String, org.apache.ibatis.javassist.compiler.ast.ASTree], void)}
; {var1350=org.apache.ibatis.javassist.compiler.MemberResolver, var2727=r2, var3093=r21, var2762=null_type, var3638=org.apache.ibatis.javassist.compiler.ast.Symbol, var2516=r0, var3389=org.apache.ibatis.javassist.compiler.ast.ASTree, var915=r12, var2116=r1, var3172=org.apache.ibatis.javassist.compiler.CompileError, var1214=$r14, var925=org.apache.ibatis.javassist.compiler.NoFieldException, var3547=$r15, var245=$r16, var858=$r17, var3234=$r18, var3435=$r19, var1726=$r20}
; {org.apache.ibatis.javassist.compiler.MemberResolver=var1350, r2=var2727, r21=var3093, null_type=var2762, org.apache.ibatis.javassist.compiler.ast.Symbol=var3638, r0=var2516, org.apache.ibatis.javassist.compiler.ast.ASTree=var3389, r12=var915, r1=var2116, org.apache.ibatis.javassist.compiler.CompileError=var3172, $r14=var1214, org.apache.ibatis.javassist.compiler.NoFieldException=var925, $r15=var3547, $r16=var245, $r17=var858, $r18=var3234, $r19=var3435, $r20=var1726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.compiler.MemberResolver;	r21 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.compiler.ast.Symbol;	r12 := @parameter2: org.apache.ibatis.javassist.compiler.ast.ASTree;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Symbol: java.lang.String get()>();	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.javassist.compiler.NoFieldException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.apache.ibatis.javassist.compiler.NoFieldException: void <init>(java.lang.String,org.apache.ibatis.javassist.compiler.ast.ASTree)>($r20, r12);	throw $r15
;block_num 2