(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2866 0)
(declare-sort var978 0)
(declare-sort var3769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/374023441 (var2866) String)
(declare-fun file/374023441 (var2866) var3769)
(declare-fun hashCode/-1143252617 (var3769) Int)
(declare-fun url/374023441 (var2866) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2866 var2866)
(declare-const null-String String)
(declare-const null-var3769 var3769)
(declare-const var302 var2866) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var302 null-var2866)))
(define-const var2842 String (namespace/374023441 var302)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (not (= var2842 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1697 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= $i0 = 29 * $i4] 
(assert true) ; Non Conditional
(define-const var2871 Int (* 29 var1697)) ; Statement: $i0 = 29 * $i4 
(define-const var3476 var3769 (file/374023441 var302)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert (not (= var3476 null-var3769))) ; Cond: $r3 != null 
(define-const var3834 var3769 (file/374023441 var302)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert true)
(define-const var2997 Int (hashCode/-1143252617 var3834)) ; Statement: $i5 = virtualinvoke $r4.<java.io.File: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2068 Int (+ var2871 var2997)) ; Statement: $i3 = $i0 + $i5 
(define-const var827 Int (* 29 var2068)) ; Statement: $i1 = 29 * $i3 
(define-const var3009 String (url/374023441 var302)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert (not (= var3009 null-String))) ; Cond: $r5 != null 
(define-const var1463 String (url/374023441 var302)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert true)
(define-const var3671 Int (hashCode/-467973558 var1463)) ; Statement: $i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1536 Int (+ var827 var3671)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), hashCode/-1143252617=([java.io.File], int), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2866=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var302=r0, var2842=$r1, var978=null_type, var1697=$i4, var2871=$i0, var3769=java.io.File, var3476=$r3, var3834=$r4, var2997=$i5, var2068=$i3, var827=$i1, var3009=$r5, var1463=$r6, var3671=$i6, var1536=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var2866, r0=var302, $r1=var2842, null_type=var978, $i4=var1697, $i0=var2871, java.io.File=var3769, $r3=var3476, $r4=var3834, $i5=var2997, $i3=var2068, $i1=var827, $r5=var3009, $r6=var1463, $i6=var3671, $i2=var1536}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$i4 = 0;	goto [?= $i0 = 29 * $i4];	$i0 = 29 * $i4;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$i5 = virtualinvoke $r4.<java.io.File: int hashCode()>();	$i3 = $i0 + $i5;	$i1 = 29 * $i3;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	$i2 = $i1 + $i6;	return $i2
;block_num 7