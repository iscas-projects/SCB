(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort var356 0)
(declare-sort var2918 0)
(declare-sort var1360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createLink/899127532 (var667) var2918)
(declare-fun setOffline/-919321345 (var2918 Bool) void)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1360-init () var1360)
(declare-fun <init>/1864341934 (var1360 String) void)
(declare-const null-var667 var667)
(declare-const null-String String)
(declare-const var3048 var667) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var3048 null-var667)))
(declare-const var1739 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1739 null-String)))
(assert true)
(define-const var1886 var2918 (createLink/899127532 var3048)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument createLink()>() 
(assert true)
;(assert (setOffline/-919321345 var1886 (ite (= 1 1) true false))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument: void setOffline(boolean)>(1) 

(declare-const var1886!1 var2918)
(declare-const var3789 Int)
(assert true)
(define-const var3567 String (trim/-847153721 var1739)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2552 Bool (isEmpty/-1285796103 var3567)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = new java.util.StringTokenizer 
(assert (not (= (ite var2552 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3021 var1360 var1360-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3021 "The linkoffline attribute must include a URL and a package-list file location separated by a space")) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("The linkoffline attribute must include a URL and a package-list file location separated by a space") 

(declare-const var3021!1 var1360)
(declare-const var369 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {createLink/899127532=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument), setOffline/-919321345=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument, boolean], void), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1360-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var667=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var3048=r0, var1739=r2, var356=null_type, var2918=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument, var1886=r1, var3789=1, var3567=$r3, var2552=$z0, var1360=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3021=$r10, var369="The linkoffline attribute must include a URL and a package-list file location separated by a space"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var667, r0=var3048, r2=var1739, null_type=var356, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument=var2918, r1=var1886, 1=var3789, $r3=var3567, $z0=var2552, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1360, $r10=var3021, "The linkoffline attribute must include a URL and a package-list file location separated by a space"=var369}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r2 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument createLink()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$LinkArgument: void setOffline(boolean)>(1);	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = new java.util.StringTokenizer;	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("The linkoffline attribute must include a URL and a package-list file location separated by a space");	throw $r10
;block_num 2