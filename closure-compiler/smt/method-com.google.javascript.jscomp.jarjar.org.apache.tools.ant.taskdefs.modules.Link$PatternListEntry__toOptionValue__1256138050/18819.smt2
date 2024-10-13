(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3758 0)
(declare-sort var82 0)
(declare-sort var2316 0)
(declare-sort var2994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/-1499812533 (var3758) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun file/-1499812533 (var3758) var2316)
(declare-fun append/-1031950772 (String var2994) String)
(declare-fun cast-from-var2316-to-var2994 (var2316) var2994)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3758 var3758)
(declare-const null-String String)
(declare-const var3570 var3758) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry 
(assert (not (= var3570 null-var3758)))
(define-const var942 String (pattern/-1499812533 var3570)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: java.lang.String pattern> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var942 null-String)) ; Cond: $r1 == null 
(define-const var1710 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1710)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1710!1 String)
(assert (= var1710!1 ""))
(assert true)
(define-const var996 String (append/672562846 var1710!1 "@")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var1710!2 String)
(assert (= var1710!2 (str.++ var1710!1 "@")))
(define-const var1876 var2316 (file/-1499812533 var3570)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: java.io.File file> 
(assert true)
(define-const var1119 String (append/-1031950772 var996 (cast-from-var2316-to-var2994 var1876))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var996!1 String)
(assert (str.prefixof var996 var996!1))
(assert true)
(define-const var1954 String (toString/-2075883882 var1119)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/-1499812533=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), file/-1499812533=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2316-to-var2994=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3758=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry, var3570=r0, var942=$r1, var82=null_type, var1710=$r2, var996=$r4, var2316=java.io.File, var1876=$r3, var2994=java.lang.Object, var1119=$r5, var1954=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry=var3758, r0=var3570, $r1=var942, null_type=var82, $r2=var1710, $r4=var996, java.io.File=var2316, $r3=var1876, java.lang.Object=var2994, $r5=var1119, $r6=var1954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: java.lang.String pattern>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$PatternListEntry: java.io.File file>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3