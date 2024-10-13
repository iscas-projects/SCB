(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var927 0)
(declare-sort var2165 0)
(declare-sort var268 0)
(declare-sort var462 0)
(declare-sort var911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun helperImpl/2111030186 (var268) var2165)
(declare-fun cast-from-var927-to-var268 (var927) var268)
(declare-fun var2165_access$200/-477759237 (var2165) var462)
(declare-fun getDescription/715532984 (var462) String)
(declare-fun setDescription/2044772184 (var462 String) void)
(declare-const null-var927 var927)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1106 var927) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler 
(assert (not (= var1106 null-var927)))
(declare-const var3258 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var3258 null-__Array__Int__Int__)))
(declare-const var100 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var100 null-Int)))
(declare-const var3504 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3504 null-Int)))
(define-const var2232 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2232 var3258 var100 var3504)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1) 

(declare-const var2232!1 String)
(declare-const var3258!1 (Array Int Int))
(declare-const var100!1 Int)
(declare-const var3504!1 Int)
(define-const var1453 var2165 (helperImpl/2111030186 (cast-from-var927-to-var268 var1106))) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var3039 var462 (var2165_access$200/-477759237 var1453)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r3) 
(assert true)
(define-const var961 String (getDescription/715532984 var3039)) ; Statement: r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDescription()>() 
 ; Statement: if r5 != null goto $r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(assert (not (not (= var961 null-String)))) ; Negate: Cond: r5 != null  
(define-const var2964 var2165 (helperImpl/2111030186 (cast-from-var927-to-var268 var1106))) ; Statement: $r12 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var2478 var462 (var2165_access$200/-477759237 var2964)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r12) 
(assert true)
;(assert (setDescription/2044772184 var2478 var2232!1)) ; Statement: virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setDescription(java.lang.String)>($r0) 

(declare-const var2478!1 var462)
(declare-const var2232!2 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), helperImpl/2111030186=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl), cast-from-var927-to-var268=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler), var2165_access$200/-477759237=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), getDescription/715532984=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.String), setDescription/2044772184=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void)}
; {var927=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler, var1106=r2, var3258=r1, var100=i0, var3504=i1, var2232=$r0, var2165=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var268=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler, var1453=$r3, var462=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3039=$r4, var961=r5, var911=null_type, var2964=$r12, var2478=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler=var927, r2=var1106, r1=var3258, i0=var100, i1=var3504, $r0=var2232, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var2165, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler=var268, $r3=var1453, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var462, $r4=var3039, r5=var961, null_type=var911, $r12=var2964, $r13=var2478}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1);	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r3);	r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDescription()>();	if r5 != null goto $r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r12 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r13 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r12);	virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setDescription(java.lang.String)>($r0);	goto [?= return];	return
;block_num 3