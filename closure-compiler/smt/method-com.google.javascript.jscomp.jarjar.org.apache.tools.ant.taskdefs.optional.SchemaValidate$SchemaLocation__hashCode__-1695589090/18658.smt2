(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var584 0)
(declare-sort var2933 0)
(declare-sort var3558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/374023441 (var584) String)
(declare-fun file/374023441 (var584) var3558)
(declare-fun hashCode/-1143252617 (var3558) Int)
(declare-fun url/374023441 (var584) String)
(declare-const null-var584 var584)
(declare-const null-String String)
(declare-const null-var3558 var3558)
(declare-const var3682 var584) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var3682 null-var584)))
(define-const var3776 String (namespace/374023441 var3682)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (not (= var3776 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3234 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= $i0 = 29 * $i4] 
(assert true) ; Non Conditional
(define-const var1642 Int (* 29 var3234)) ; Statement: $i0 = 29 * $i4 
(define-const var560 var3558 (file/374023441 var3682)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert (not (= var560 null-var3558))) ; Cond: $r3 != null 
(define-const var1667 var3558 (file/374023441 var3682)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert true)
(define-const var2552 Int (hashCode/-1143252617 var1667)) ; Statement: $i5 = virtualinvoke $r4.<java.io.File: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2859 Int (+ var1642 var2552)) ; Statement: $i3 = $i0 + $i5 
(define-const var2431 Int (* 29 var2859)) ; Statement: $i1 = 29 * $i3 
(define-const var3019 String (url/374023441 var3682)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert (not (not (= var3019 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var1843 Int 0) ; Statement: $i6 = 0 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var1465 Int (+ var2431 var1843)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), hashCode/-1143252617=([java.io.File], int), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String)}
; {var584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var3682=r0, var3776=$r1, var2933=null_type, var3234=$i4, var1642=$i0, var3558=java.io.File, var560=$r3, var1667=$r4, var2552=$i5, var2859=$i3, var2431=$i1, var3019=$r5, var1843=$i6, var1465=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var584, r0=var3682, $r1=var3776, null_type=var2933, $i4=var3234, $i0=var1642, java.io.File=var3558, $r3=var560, $r4=var1667, $i5=var2552, $i3=var2859, $i1=var2431, $r5=var3019, $i6=var1843, $i2=var1465}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$i4 = 0;	goto [?= $i0 = 29 * $i4];	$i0 = 29 * $i4;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$i5 = virtualinvoke $r4.<java.io.File: int hashCode()>();	$i3 = $i0 + $i5;	$i1 = 29 * $i3;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$i6 = 0;	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7