(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3044 0)
(declare-sort var3386 0)
(declare-sort var3554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun var3554_addText/-1420280707 (var3044 var3386 String) void)
(declare-const null-var3044 var3044)
(declare-const null-var3386 var3386)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2593 var3044) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2593 null-var3044)))
(declare-const var2916 var3386) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2916 null-var3386)))
(declare-const var1122 (Array Int Int)) ; Statement: r3 := @parameter2: char[] 
(assert (not (= var1122 null-__Array__Int__Int__)))
(declare-const var660 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var660 null-Int)))
(declare-const var3248 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var3248 null-Int)))
(define-const var2446 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2446 var1122 var660 var3248)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>(r3, i0, i1) 

(declare-const var2446!1 String)
(declare-const var1122!1 (Array Int Int))
(declare-const var660!1 Int)
(declare-const var3248!1 Int)
;(assert (var3554_addText/-1420280707 var2593 var2916 var2446!1)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: void addText(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.Object,java.lang.String)>(r0, r1, $r2) 

(declare-const var2593!1 var3044)
(declare-const var2916!1 var3386)
(declare-const var2446!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), var3554_addText/-1420280707=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.Object, java.lang.String], void)}
; {var3044=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2593=r0, var3386=java.lang.Object, var2916=r1, var1122=r3, var660=i0, var3248=i1, var2446=$r2, var3554=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3044, r0=var2593, java.lang.Object=var3386, r1=var2916, r3=var1122, i0=var660, i1=var3248, $r2=var2446, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var3554}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.Object;	r3 := @parameter2: char[];	i0 := @parameter3: int;	i1 := @parameter4: int;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>(r3, i0, i1);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: void addText(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.Object,java.lang.String)>(r0, r1, $r2);	return
;block_num 1