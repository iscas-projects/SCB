(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var566 0)
(declare-sort var2503 0)
(declare-sort var576 0)
(declare-sort var3197 0)
(declare-sort var2754 0)
(declare-sort var2334 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filtersFile/-54073388 (var566) var2503)
(declare-fun append/-1031950772 (String var576) String)
(declare-fun cast-from-var2503-to-var576 (var2503) var576)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3197 String Int) void)
(declare-fun cast-from-var566-to-var3197 (var566) var3197)
(declare-fun getProject/416672769 (var2334) var2754)
(declare-fun cast-from-var566-to-var2334 (var566) var2334)
(declare-fun getGlobalFilterSet/-320273090 (var2754) var1386)
(declare-fun readFiltersFromFile/-398222754 (var1386 var2503) void)
(declare-const null-var566 var566)
(declare-const var1595 var566) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter 
(assert (not (= var1595 null-var566)))
(define-const var3306 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3306)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3306!1 String)
(assert (= var3306!1 ""))
(assert true)
(define-const var478 String (append/672562846 var3306!1 "Reading filters from ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reading filters from ") 
(declare-const var3306!2 String)
(assert (= var3306!2 (str.++ var3306!1 "Reading filters from ")))
(define-const var2255 var2503 (filtersFile/-54073388 var1595)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: java.io.File filtersFile> 
(assert true)
(define-const var3630 String (append/-1031950772 var478 (cast-from-var2503-to-var576 var2255))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var478!1 String)
(assert (str.prefixof var478 var478!1))
(assert true)
(define-const var3588 String (toString/-2075883882 var3630)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var566-to-var3197 var1595) var3588 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: void log(java.lang.String,int)>($r5, 3) 

(declare-const var1595!1 var566)
(declare-const var3588!1 String)
(declare-const var3116 Int)
(assert true)
(define-const var3624 var2754 (getProject/416672769 (cast-from-var566-to-var2334 var1595!1))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3859 var1386 (getGlobalFilterSet/-320273090 var3624)) ; Statement: $r8 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet getGlobalFilterSet()>() 
(define-const var2035 var2503 (filtersFile/-54073388 var1595!1)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: java.io.File filtersFile> 
(assert true)
;(assert (readFiltersFromFile/-398222754 var3859 var2035)) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: void readFiltersFromFile(java.io.File)>($r7) 

(declare-const var3859!1 var1386)
(declare-const var2035!1 var2503)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filtersFile/-54073388=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2503-to-var576=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var566-to-var3197=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var566-to-var2334=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), getGlobalFilterSet/-320273090=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet), readFiltersFromFile/-398222754=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet, java.io.File], void)}
; {var566=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter, var1595=r0, var3306=$r1, var478=$r3, var2503=java.io.File, var2255=$r2, var576=java.lang.Object, var3630=$r4, var3588=$r5, var3197=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3116=3, var2754=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2334=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3624=$r6, var1386=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet, var3859=$r8, var2035=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter=var566, r0=var1595, $r1=var3306, $r3=var478, java.io.File=var2503, $r2=var2255, java.lang.Object=var576, $r4=var3630, $r5=var3588, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3197, 3=var3116, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2754, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2334, $r6=var3624, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet=var1386, $r8=var3859, $r7=var2035}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reading filters from ");	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: java.io.File filtersFile>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: void log(java.lang.String,int)>($r5, 3);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r8 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet getGlobalFilterSet()>();	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Filter: java.io.File filtersFile>;	virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: void readFiltersFromFile(java.io.File)>($r7);	return
;block_num 1