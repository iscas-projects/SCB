(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3668 0)
(declare-sort var1617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun projectPath/-1805167282 (var3668) String)
(declare-const null-var3668 var3668)
(declare-const null-String String)
(declare-const var330 var3668) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS 
(assert (not (= var330 null-var3668)))
(declare-const var2228 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2228 null-String)))
(assert true)
(define-const var3613 Bool (startsWith/-1785782452 var2228 "$")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("$") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var3613 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1579 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1579)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1579!1 String)
(assert (= var1579!1 ""))
(assert true)
(define-const var2969 String (append/672562846 var1579!1 "$")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$") 
(declare-const var1579!2 String)
(assert (= var1579!2 (str.++ var1579!1 "$")))
(assert true)
(define-const var3993 String (append/672562846 var2969 var2228)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2969!1 String)
(assert (= var2969!1 (str.++ var2969 var2228)))
(assert true)
(define-const var528 String (toString/-2075883882 var3993)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var330!1 var3668)
(assert (not (= var330!1 null-var3668)))
(assert (= (projectPath/-1805167282 var330!1) var528)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String projectPath> = $r5 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), projectPath/-1805167282=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS], java.lang.String)}
; {var3668=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS, var330=r1, var2228=r0, var1617=null_type, var3613=$z0, var1579=$r2, var2969=$r3, var3993=$r4, var528=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS=var3668, r1=var330, r0=var2228, null_type=var1617, $z0=var3613, $r2=var1579, $r3=var2969, $r4=var3993, $r5=var528}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("$");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.sos.SOS: java.lang.String projectPath> = $r5;	return
;block_num 3