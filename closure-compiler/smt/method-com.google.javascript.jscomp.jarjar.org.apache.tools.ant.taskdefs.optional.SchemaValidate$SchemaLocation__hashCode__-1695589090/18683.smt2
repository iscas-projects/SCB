(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var572 0)
(declare-sort var3339 0)
(declare-sort var1984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/374023441 (var572) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun file/374023441 (var572) var1984)
(declare-fun url/374023441 (var572) String)
(declare-const null-var572 var572)
(declare-const null-String String)
(declare-const null-var1984 var1984)
(declare-const var1680 var572) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var1680 null-var572)))
(define-const var1445 String (namespace/374023441 var1680)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (= var1445 null-String))) ; Cond: $r1 != null 
(define-const var341 String (namespace/374023441 var1680)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert true)
(define-const var1174 Int (hashCode/-467973558 var341)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1259 Int (* 29 var1174)) ; Statement: $i0 = 29 * $i4 
(define-const var3021 var1984 (file/374023441 var1680)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert (not (not (= var3021 null-var1984)))) ; Negate: Cond: $r3 != null  
(define-const var2552 Int 0) ; Statement: $i5 = 0 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var3928 Int (+ var1259 var2552)) ; Statement: $i3 = $i0 + $i5 
(define-const var3892 Int (* 29 var3928)) ; Statement: $i1 = 29 * $i3 
(define-const var1008 String (url/374023441 var1680)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert (not (= var1008 null-String))) ; Cond: $r5 != null 
(define-const var849 String (url/374023441 var1680)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert true)
(define-const var1060 Int (hashCode/-467973558 var849)) ; Statement: $i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1617 Int (+ var3892 var1060)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), hashCode/-467973558=([java.lang.String], int), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String)}
; {var572=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var1680=r0, var1445=$r1, var3339=null_type, var341=$r2, var1174=$i4, var1259=$i0, var1984=java.io.File, var3021=$r3, var2552=$i5, var3928=$i3, var3892=$i1, var1008=$r5, var849=$r6, var1060=$i6, var1617=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var572, r0=var1680, $r1=var1445, null_type=var3339, $r2=var341, $i4=var1174, $i0=var1259, java.io.File=var1984, $r3=var3021, $i5=var2552, $i3=var3928, $i1=var3892, $r5=var1008, $r6=var849, $i6=var1060, $i2=var1617}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i0 = 29 * $i4;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$i5 = 0;	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 29 * $i3;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r5 != null goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$i6 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	$i2 = $i1 + $i6;	return $i2
;block_num 7