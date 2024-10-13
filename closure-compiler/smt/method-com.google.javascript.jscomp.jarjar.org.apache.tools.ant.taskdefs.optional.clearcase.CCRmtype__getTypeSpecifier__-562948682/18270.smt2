(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3418 0)
(declare-sort var1082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypeKind/-1529551854 (var3418) String)
(declare-fun getTypeName/903032251 (var3418) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getVOB/1833196209 (var3418) String)
(declare-const null-var3418 var3418)
(declare-const null-String String)
(declare-const var2556 var3418) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype 
(assert (not (= var2556 null-var3418)))
(assert true)
(define-const var2062 String (getTypeKind/-1529551854 var2556)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype: java.lang.String getTypeKind()>() 
(assert true)
(define-const var1452 String (getTypeName/903032251 var2556)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype: java.lang.String getTypeName()>() 
(define-const var3964 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3964)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3964!1 String)
(assert (= var3964!1 ""))
(assert true)
(define-const var2315 String (append/672562846 var3964!1 var2062)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3964!2 String)
(assert (= var3964!2 (str.++ var3964!1 var2062)))
(assert true)
(define-const var995 String (append/672562846 var2315 ":")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2315!1 String)
(assert (= var2315!1 (str.++ var2315 ":")))
(assert true)
(define-const var1350 String (append/672562846 var995 var1452)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var995!1 String)
(assert (= var995!1 (str.++ var995 var1452)))
(assert true)
(define-const var285 String (toString/-2075883882 var1350)) ; Statement: r13 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var932 String (getVOB/1833196209 var2556)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype: java.lang.String getVOB()>() 
 ; Statement: if $r7 == null goto return r13 
(assert (= var932 null-String)) ; Cond: $r7 == null 
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypeKind/-1529551854=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype], java.lang.String), getTypeName/903032251=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getVOB/1833196209=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype], java.lang.String)}
; {var3418=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype, var2556=r0, var2062=r1, var1452=r2, var3964=$r3, var2315=$r4, var995=$r5, var1350=$r6, var285=r13, var932=$r7, var1082=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype=var3418, r0=var2556, r1=var2062, r2=var1452, $r3=var3964, $r4=var2315, $r5=var995, $r6=var1350, r13=var285, $r7=var932, null_type=var1082}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype: java.lang.String getTypeKind()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype: java.lang.String getTypeName()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	r13 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.clearcase.CCRmtype: java.lang.String getVOB()>();	if $r7 == null goto return r13;	return r13
;block_num 2