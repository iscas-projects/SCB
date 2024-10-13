(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3381 0)
(declare-sort var360 0)
(declare-sort var1153 0)
(declare-sort var1895 0)
(declare-sort var1744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun helperImpl/2111030186 (var1153) var360)
(declare-fun cast-from-var3381-to-var1153 (var3381) var1153)
(declare-fun var360_access$200/-477759237 (var360) var1895)
(declare-fun getDescription/715532984 (var1895) String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setDescription/2044772184 (var1895 String) void)
(declare-const null-var3381 var3381)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1594 var3381) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler 
(assert (not (= var1594 null-var3381)))
(declare-const var384 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var384 null-__Array__Int__Int__)))
(declare-const var3496 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3496 null-Int)))
(declare-const var1145 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1145 null-Int)))
(define-const var1088 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var1088 var384 var3496 var1145)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1) 

(declare-const var1088!1 String)
(declare-const var384!1 (Array Int Int))
(declare-const var3496!1 Int)
(declare-const var1145!1 Int)
(define-const var2699 var360 (helperImpl/2111030186 (cast-from-var3381-to-var1153 var1594))) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var2017 var1895 (var360_access$200/-477759237 var2699)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r3) 
(assert true)
(define-const var2216 String (getDescription/715532984 var2017)) ; Statement: r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDescription()>() 
 ; Statement: if r5 != null goto $r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(assert (not (= var2216 null-String))) ; Cond: r5 != null 
(define-const var509 var360 (helperImpl/2111030186 (cast-from-var3381-to-var1153 var1594))) ; Statement: $r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var3679 var1895 (var360_access$200/-477759237 var509)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r6) 
(define-const var3050 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3050)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3050!1 String)
(assert (= var3050!1 ""))
(assert true)
(define-const var1830 String (append/672562846 var3050!1 var2216)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3050!2 String)
(assert (= var3050!2 (str.++ var3050!1 var2216)))
(assert true)
(define-const var1118 String (append/672562846 var1830 var1088!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r0) 
(declare-const var1830!1 String)
(assert (= var1830!1 (str.++ var1830 var1088!1)))
(assert true)
(define-const var3645 String (toString/-2075883882 var1118)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setDescription/2044772184 var3679 var3645)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setDescription(java.lang.String)>($r10) 

(declare-const var3679!1 var1895)
(declare-const var3645!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), helperImpl/2111030186=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl), cast-from-var3381-to-var1153=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler), var360_access$200/-477759237=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), getDescription/715532984=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setDescription/2044772184=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void)}
; {var3381=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler, var1594=r2, var384=r1, var3496=i0, var1145=i1, var1088=$r0, var360=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var1153=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler, var2699=$r3, var1895=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2017=$r4, var2216=r5, var1744=null_type, var509=$r6, var3679=$r11, var3050=$r7, var1830=$r8, var1118=$r9, var3645=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler=var3381, r2=var1594, r1=var384, i0=var3496, i1=var1145, $r0=var1088, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var360, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler=var1153, $r3=var2699, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1895, $r4=var2017, r5=var2216, null_type=var1744, $r6=var509, $r11=var3679, $r7=var3050, $r8=var1830, $r9=var1118, $r10=var3645}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1);	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r3);	r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getDescription()>();	if r5 != null goto $r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$DescriptionHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project access$200(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r6);	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setDescription(java.lang.String)>($r10);	return
;block_num 3