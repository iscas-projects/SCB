(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var1848 0)
(declare-sort var118 0)
(declare-sort var3385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var118) String)
(declare-fun cast-from-var1848-to-var118 (var1848) var118)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3385 String Int) void)
(declare-fun cast-from-var1386-to-var3385 (var1386) var3385)
(declare-fun file/1983560174 (var1386) var1848)
(declare-const null-var1386 var1386)
(declare-const null-var1848 var1848)
(declare-const var2078 var1386) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck 
(assert (not (= var2078 null-var1386)))
(declare-const var3662 var1848) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var3662 null-var1848)))
(define-const var1812 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1812)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1812!1 String)
(assert (= var1812!1 ""))
(assert true)
(define-const var2127 String (append/672562846 var1812!1 "working file ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("working file ") 
(declare-const var1812!2 String)
(assert (= var1812!2 (str.++ var1812!1 "working file ")))
(assert true)
(define-const var3034 String (append/-1031950772 var2127 (cast-from-var1848-to-var118 var3662))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2127!1 String)
(assert (str.prefixof var2127 var2127!1))
(assert true)
(define-const var2972 String (toString/-2075883882 var3034)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1386-to-var3385 var2078) var2972 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void log(java.lang.String,int)>($r5, 3) 

(declare-const var2078!1 var1386)
(declare-const var2972!1 String)
(declare-const var913 Int)
(declare-const var2078!2 var1386)
(assert (not (= var2078!2 null-var1386)))
(assert (= (file/1983560174 var2078!2) var3662)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.io.File file> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1848-to-var118=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1386-to-var3385=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), file/1983560174=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck], java.io.File)}
; {var1386=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck, var2078=r0, var1848=java.io.File, var3662=r2, var1812=$r1, var2127=$r3, var118=java.lang.Object, var3034=$r4, var2972=$r5, var3385=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var913=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck=var1386, r0=var2078, java.io.File=var1848, r2=var3662, $r1=var1812, $r3=var2127, java.lang.Object=var118, $r4=var3034, $r5=var2972, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3385, 3=var913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck;	r2 := @parameter0: java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("working file ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: void log(java.lang.String,int)>($r5, 3);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ccm.CCMCheck: java.io.File file> = r2;	return
;block_num 1