(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3415 0)
(declare-sort var193 0)
(declare-sort var3435 0)
(declare-sort var3335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getAuthor/1730541326 (var3415) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDate/-1623787486 (var3415) var193)
(declare-fun append/-1031950772 (String var3435) String)
(declare-fun cast-from-var193-to-var3435 (var193) var3435)
(declare-fun getFiles/-878927736 (var3415) var3335)
(declare-fun cast-from-var3335-to-var3435 (var3335) var3435)
(declare-fun getComment/214029058 (var3415) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3415 var3415)
(declare-const var519 var3415) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry 
(assert (not (= var519 null-var3415)))
(define-const var2778 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2778)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2778!1 String)
(assert (= var2778!1 ""))
(assert true)
(define-const var3786 String (getAuthor/1730541326 var519)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.lang.String getAuthor()>() 
(assert true)
(define-const var1666 String (append/672562846 var2778!1 var3786)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2778!2 String)
(assert (= var2778!2 (str.++ var2778!1 var3786)))
(assert true)
(define-const var2827 String (append/672562846 var1666 "\n")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1666!1 String)
(assert (= var1666!1 (str.++ var1666 "\n")))
(assert true)
(define-const var195 var193 (getDate/-1623787486 var519)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.util.Date getDate()>() 
(assert true)
(define-const var3009 String (append/-1031950772 var2827 (cast-from-var193-to-var3435 var195))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2827!1 String)
(assert (str.prefixof var2827 var2827!1))
(assert true)
(define-const var1056 String (append/672562846 var3009 "\n")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3009!1 String)
(assert (= var3009!1 (str.++ var3009 "\n")))
(assert true)
(define-const var1440 var3335 (getFiles/-878927736 var519)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.util.Vector getFiles()>() 
(assert true)
(define-const var1793 String (append/-1031950772 var1056 (cast-from-var3335-to-var3435 var1440))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1056!1 String)
(assert (str.prefixof var1056 var1056!1))
(assert true)
(define-const var1719 String (append/672562846 var1793 "\n")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1793!1 String)
(assert (= var1793!1 (str.++ var1793 "\n")))
(assert true)
(define-const var52 String (getComment/214029058 var519)) ; Statement: $r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.lang.String getComment()>() 
(assert true)
(define-const var368 String (append/672562846 var1719 var52)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1719!1 String)
(assert (= var1719!1 (str.++ var1719 var52)))
(assert true)
(define-const var3582 String (toString/-2075883882 var368)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getAuthor/1730541326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDate/-1623787486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry], java.util.Date), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var193-to-var3435=([java.util.Date], java.lang.Object), getFiles/-878927736=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry], java.util.Vector), cast-from-var3335-to-var3435=([java.util.Vector], java.lang.Object), getComment/214029058=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3415=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry, var519=r1, var2778=$r0, var3786=$r2, var1666=$r3, var2827=$r5, var193=java.util.Date, var195=$r4, var3435=java.lang.Object, var3009=$r6, var1056=$r8, var3335=java.util.Vector, var1440=$r7, var1793=$r9, var1719=$r11, var52=$r10, var368=$r12, var3582=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry=var3415, r1=var519, $r0=var2778, $r2=var3786, $r3=var1666, $r5=var2827, java.util.Date=var193, $r4=var195, java.lang.Object=var3435, $r6=var3009, $r8=var1056, java.util.Vector=var3335, $r7=var1440, $r9=var1793, $r11=var1719, $r10=var52, $r12=var368, $r13=var3582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.lang.String getAuthor()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.util.Date getDate()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.util.Vector getFiles()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: java.lang.String getComment()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1