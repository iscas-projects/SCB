(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var297 0)
(declare-sort var1994 0)
(declare-sort var684 0)
(declare-sort var2774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setFileLastModified/880385920 (var684 var1994 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2774) String)
(declare-fun cast-from-var1994-to-var2774 (var1994) var2774)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var297 String Int) void)
(declare-const null-var297 var297)
(declare-const null-var1994 var1994)
(declare-const null-Int Int)
(declare-const var297-FILE_UTILS var684)
(declare-const var1569 var297) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1569 null-var297)))
(declare-const var904 var1994) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var904 null-var1994)))
(declare-const var2357 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var2357 null-Int)))
(define-const var2674 var684 var297-FILE_UTILS) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> 
(assert true)
;(assert (setFileLastModified/880385920 var2674 var904 var2357)) ; Statement: virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: void setFileLastModified(java.io.File,long)>(r0, l0) 

(declare-const var2674!1 var684)
(declare-const var904!1 var1994)
(declare-const var2357!1 Int)
(define-const var2902 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2902)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2902!1 String)
(assert (= var2902!1 ""))
(assert true)
(define-const var2644 String (append/672562846 var2902!1 "Setting modification time for ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting modification time for ") 
(declare-const var2902!2 String)
(assert (= var2902!2 (str.++ var2902!1 "Setting modification time for ")))
(assert true)
(define-const var445 String (append/-1031950772 var2644 (cast-from-var1994-to-var2774 var904!1))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2644!1 String)
(assert (str.prefixof var2644 var2644!1))
(assert true)
(define-const var315 String (toString/-2075883882 var445)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var1569 var315 3)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r6, 3) 

(declare-const var1569!1 var297)
(declare-const var315!1 String)
(declare-const var600 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {setFileLastModified/880385920=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.io.File, long], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1994-to-var2774=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void)}
; {var297=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1569=r2, var1994=java.io.File, var904=r0, var2357=l0, var684=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var2674=$r1, var2902=$r3, var2644=$r4, var2774=java.lang.Object, var445=$r5, var315=$r6, var600=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var297, r2=var1569, java.io.File=var1994, r0=var904, l0=var2357, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var684, $r1=var2674, $r3=var2902, $r4=var2644, java.lang.Object=var2774, $r5=var445, $r6=var315, 3=var600}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r0 := @parameter0: java.io.File;	l0 := @parameter1: long;	$r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>;	virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: void setFileLastModified(java.io.File,long)>(r0, l0);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting modification time for ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r6, 3);	return
;block_num 1