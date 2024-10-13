(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2223 0)
(declare-sort var2917 0)
(declare-sort var1806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/374023441 (var2223) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun file/374023441 (var2223) var1806)
(declare-fun hashCode/-1143252617 (var1806) Int)
(declare-fun url/374023441 (var2223) String)
(declare-const null-var2223 var2223)
(declare-const null-String String)
(declare-const null-var1806 var1806)
(declare-const var1705 var2223) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var1705 null-var2223)))
(define-const var3076 String (namespace/374023441 var1705)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (= var3076 null-String))) ; Cond: $r1 != null 
(define-const var942 String (namespace/374023441 var1705)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert true)
(define-const var3670 Int (hashCode/-467973558 var942)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var707 Int (* 29 var3670)) ; Statement: $i0 = 29 * $i4 
(define-const var3454 var1806 (file/374023441 var1705)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert (not (= var3454 null-var1806))) ; Cond: $r3 != null 
(define-const var1263 var1806 (file/374023441 var1705)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert true)
(define-const var2704 Int (hashCode/-1143252617 var1263)) ; Statement: $i5 = virtualinvoke $r4.<java.io.File: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2636 Int (+ var707 var2704)) ; Statement: $i3 = $i0 + $i5 
(define-const var2204 Int (* 29 var2636)) ; Statement: $i1 = 29 * $i3 
(define-const var3925 String (url/374023441 var1705)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert (not (= var3925 null-String))) ; Cond: $r5 != null 
(define-const var80 String (url/374023441 var1705)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert true)
(define-const var3029 Int (hashCode/-467973558 var80)) ; Statement: $i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2777 Int (+ var2204 var3029)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), hashCode/-467973558=([java.lang.String], int), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), hashCode/-1143252617=([java.io.File], int), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String)}
; {var2223=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var1705=r0, var3076=$r1, var2917=null_type, var942=$r2, var3670=$i4, var707=$i0, var1806=java.io.File, var3454=$r3, var1263=$r4, var2704=$i5, var2636=$i3, var2204=$i1, var3925=$r5, var80=$r6, var3029=$i6, var2777=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var2223, r0=var1705, $r1=var3076, null_type=var2917, $r2=var942, $i4=var3670, $i0=var707, java.io.File=var1806, $r3=var3454, $r4=var1263, $i5=var2704, $i3=var2636, $i1=var2204, $r5=var3925, $r6=var80, $i6=var3029, $i2=var2777}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i0 = 29 * $i4;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$i5 = virtualinvoke $r4.<java.io.File: int hashCode()>();	$i3 = $i0 + $i5;	$i1 = 29 * $i3;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	$i2 = $i1 + $i6;	return $i2
;block_num 7