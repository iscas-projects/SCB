(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var82 0)
(declare-sort var1682 0)
(declare-sort var2536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/374023441 (var82) String)
(declare-fun file/374023441 (var82) var2536)
(declare-fun url/374023441 (var82) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var82 var82)
(declare-const null-String String)
(declare-const null-var2536 var2536)
(declare-const var1283 var82) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var1283 null-var82)))
(define-const var163 String (namespace/374023441 var1283)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (not (= var163 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1378 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= $i0 = 29 * $i4] 
(assert true) ; Non Conditional
(define-const var3298 Int (* 29 var1378)) ; Statement: $i0 = 29 * $i4 
(define-const var1253 var2536 (file/374023441 var1283)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert (not (not (= var1253 null-var2536)))) ; Negate: Cond: $r3 != null  
(define-const var2102 Int 0) ; Statement: $i5 = 0 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var410 Int (+ var3298 var2102)) ; Statement: $i3 = $i0 + $i5 
(define-const var1941 Int (* 29 var410)) ; Statement: $i1 = 29 * $i3 
(define-const var3436 String (url/374023441 var1283)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert (not (= var3436 null-String))) ; Cond: $r5 != null 
(define-const var378 String (url/374023441 var1283)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert true)
(define-const var1813 Int (hashCode/-467973558 var378)) ; Statement: $i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var785 Int (+ var1941 var1813)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var82=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var1283=r0, var163=$r1, var1682=null_type, var1378=$i4, var3298=$i0, var2536=java.io.File, var1253=$r3, var2102=$i5, var410=$i3, var1941=$i1, var3436=$r5, var378=$r6, var1813=$i6, var785=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var82, r0=var1283, $r1=var163, null_type=var1682, $i4=var1378, $i0=var3298, java.io.File=var2536, $r3=var1253, $i5=var2102, $i3=var410, $i1=var1941, $r5=var3436, $r6=var378, $i6=var1813, $i2=var785}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$i4 = 0;	goto [?= $i0 = 29 * $i4];	$i0 = 29 * $i4;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$i5 = 0;	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 29 * $i3;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	$i2 = $i1 + $i6;	return $i2
;block_num 7