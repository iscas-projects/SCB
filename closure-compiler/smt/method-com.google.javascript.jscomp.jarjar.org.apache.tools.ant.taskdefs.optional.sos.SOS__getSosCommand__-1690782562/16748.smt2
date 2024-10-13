(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3340 0)
(declare-sort var259 0)
(declare-sort var1127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sosCmdDir/-1805167282 (var3340) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3340 var3340)
(declare-const null-String String)
(declare-const var1127-separator String)
(declare-const var854 var3340) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS 
(assert (not (= var854 null-var3340)))
(define-const var2938 String (sosCmdDir/-1805167282 var854)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String sosCmdDir> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var2938 null-String))) ; Cond: $r1 != null 
(define-const var2414 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2414)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2414!1 String)
(assert (= var2414!1 ""))
(define-const var848 String (sosCmdDir/-1805167282 var854)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String sosCmdDir> 
(assert true)
(define-const var1812 String (append/672562846 var2414!1 var848)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2414!2 String)
(assert (= var2414!2 (str.++ var2414!1 var848)))
(define-const var2628 String var1127-separator) ; Statement: $r4 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var821 String (append/672562846 var1812 var2628)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1812!1 String)
(assert (= var1812!1 (str.++ var1812 var2628)))
(assert true)
(define-const var2257 String (append/672562846 var821 "soscmd")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("soscmd") 
(declare-const var821!1 String)
(assert (= var821!1 (str.++ var821 "soscmd")))
(assert true)
(define-const var893 String (toString/-2075883882 var2257)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {sosCmdDir/-1805167282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3340=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS, var854=r0, var2938=$r1, var259=null_type, var2414=$r2, var848=$r3, var1812=$r5, var1127=java.io.File, var2628=$r4, var821=$r6, var2257=$r7, var893=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS=var3340, r0=var854, $r1=var2938, null_type=var259, $r2=var2414, $r3=var848, $r5=var1812, java.io.File=var1127, $r4=var2628, $r6=var821, $r7=var2257, $r8=var893}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String sosCmdDir>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String sosCmdDir>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = <java.io.File: java.lang.String separator>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("soscmd");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2