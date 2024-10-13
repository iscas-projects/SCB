(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2 0)
(declare-sort var1430 0)
(declare-sort var24 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/374023441 (var2) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun file/374023441 (var2) var24)
(declare-fun hashCode/-1143252617 (var24) Int)
(declare-fun url/374023441 (var2) String)
(declare-const null-var2 var2)
(declare-const null-String String)
(declare-const null-var24 var24)
(declare-const var3185 var2) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var3185 null-var2)))
(define-const var1621 String (namespace/374023441 var3185)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (= var1621 null-String))) ; Cond: $r1 != null 
(define-const var3804 String (namespace/374023441 var3185)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert true)
(define-const var1744 Int (hashCode/-467973558 var3804)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var555 Int (* 29 var1744)) ; Statement: $i0 = 29 * $i4 
(define-const var1070 var24 (file/374023441 var3185)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert (not (= var1070 null-var24))) ; Cond: $r3 != null 
(define-const var3256 var24 (file/374023441 var3185)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert true)
(define-const var2470 Int (hashCode/-1143252617 var3256)) ; Statement: $i5 = virtualinvoke $r4.<java.io.File: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3046 Int (+ var555 var2470)) ; Statement: $i3 = $i0 + $i5 
(define-const var464 Int (* 29 var3046)) ; Statement: $i1 = 29 * $i3 
(define-const var1770 String (url/374023441 var3185)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert (not (not (= var1770 null-String)))) ; Negate: Cond: $r5 != null  
(define-const var2777 Int 0) ; Statement: $i6 = 0 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var2901 Int (+ var464 var2777)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), hashCode/-467973558=([java.lang.String], int), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), hashCode/-1143252617=([java.io.File], int), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String)}
; {var2=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var3185=r0, var1621=$r1, var1430=null_type, var3804=$r2, var1744=$i4, var555=$i0, var24=java.io.File, var1070=$r3, var3256=$r4, var2470=$i5, var3046=$i3, var464=$i1, var1770=$r5, var2777=$i6, var2901=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var2, r0=var3185, $r1=var1621, null_type=var1430, $r2=var3804, $i4=var1744, $i0=var555, java.io.File=var24, $r3=var1070, $r4=var3256, $i5=var2470, $i3=var3046, $i1=var464, $r5=var1770, $i6=var2777, $i2=var2901}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i0 = 29 * $i4;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$i5 = virtualinvoke $r4.<java.io.File: int hashCode()>();	$i3 = $i0 + $i5;	$i1 = 29 * $i3;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$i6 = 0;	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7