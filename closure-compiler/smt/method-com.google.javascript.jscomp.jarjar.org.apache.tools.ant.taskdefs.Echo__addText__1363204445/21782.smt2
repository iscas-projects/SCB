(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2490 0)
(declare-sort var1145 0)
(declare-sort var1725 0)
(declare-sort var1594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun message/-952046207 (var2490) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProject/416672769 (var1594) var1725)
(declare-fun cast-from-var2490-to-var1594 (var2490) var1594)
(declare-fun replaceProperties/-453140326 (var1725 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2490 var2490)
(declare-const null-String String)
(declare-const var2843 var2490) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo 
(assert (not (= var2843 null-var2490)))
(declare-const var1583 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1583 null-String)))
(define-const var3255 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3255)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3255!1 String)
(assert (= var3255!1 ""))
(define-const var1214 String (message/-952046207 var2843)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo: java.lang.String message> 
(assert true)
(define-const var1368 String (append/672562846 var3255!1 var1214)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3255!2 String)
(assert (= var3255!2 (str.++ var3255!1 var1214)))
(assert true)
(define-const var1156 var1725 (getProject/416672769 (cast-from-var2490-to-var1594 var2843))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var1866 String (replaceProperties/-453140326 var1156 var1583)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r3) 
(assert true)
(define-const var3229 String (append/672562846 var1368 var1866)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1368!1 String)
(assert (= var1368!1 (str.++ var1368 var1866)))
(assert true)
(define-const var3767 String (toString/-2075883882 var3229)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2843!1 var2490)
(assert (not (= var2843!1 null-var2490)))
(assert (= (message/-952046207 var2843!1) var3767)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo: java.lang.String message> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), message/-952046207=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var2490-to-var1594=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2490=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo, var2843=r1, var1583=r3, var1145=null_type, var3255=$r0, var1214=$r2, var1368=$r6, var1725=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1594=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1156=$r4, var1866=$r5, var3229=$r7, var3767=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo=var2490, r1=var2843, r3=var1583, null_type=var1145, $r0=var3255, $r2=var1214, $r6=var1368, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1725, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1594, $r4=var1156, $r5=var1866, $r7=var3229, $r8=var3767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo: java.lang.String message>;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Echo: java.lang.String message> = $r8;	return
;block_num 1