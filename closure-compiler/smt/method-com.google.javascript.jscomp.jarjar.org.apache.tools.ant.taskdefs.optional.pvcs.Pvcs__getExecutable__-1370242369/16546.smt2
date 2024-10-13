(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3557 0)
(declare-sort var2385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getPvcsbin/893590021 (var3557) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3557 var3557)
(declare-const null-String String)
(declare-const var677 var3557) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs 
(assert (not (= var677 null-var3557)))
(declare-const var670 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var670 null-String)))
(define-const var3295 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3295)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3295!1 String)
(assert (= var3295!1 ""))
(assert true)
(define-const var2762 String (getPvcsbin/893590021 var677)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: java.lang.String getPvcsbin()>() 
 ; Statement: if $r2 == null goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(assert (= var2762 null-String)) ; Cond: $r2 == null 
(assert true)
(define-const var2972 String (append/672562846 var3295!1 var670)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3295!2 String)
(assert (= var3295!2 (str.++ var3295!1 var670)))
(assert true)
(define-const var985 String (toString/-2075883882 var2972)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getPvcsbin/893590021=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3557=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs, var677=r1, var670=r3, var2385=null_type, var3295=$r0, var2762=$r2, var2972=$r10, var985=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs=var3557, r1=var677, r3=var670, null_type=var2385, $r0=var3295, $r2=var2762, $r10=var2972, $r11=var985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.pvcs.Pvcs: java.lang.String getPvcsbin()>();	if $r2 == null goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2