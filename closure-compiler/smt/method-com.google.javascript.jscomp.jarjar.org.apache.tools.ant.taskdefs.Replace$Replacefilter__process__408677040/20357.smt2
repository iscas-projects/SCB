(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2902 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/291154857 (var2902) String)
(declare-fun inputBuffer/-524338880 (var2902) String)
(declare-fun length/-1112840705 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2902 var2902)
(declare-const var2940 var2902) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter 
(assert (not (= var2940 null-var2902)))
(assert true)
(define-const var2633 String (getToken/291154857 var2940)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>() 
(define-const var2173 String (inputBuffer/-524338880 var2940)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer> 
(assert true)
(define-const var1083 Int (length/-1112840705 var2173)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var3351 Int (length/-134980193 var2633)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= $i0 goto return 0 
(assert (<= var1083 var3351)) ; Cond: $i1 <= $i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/291154857=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.String), inputBuffer/-524338880=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int), length/-134980193=([java.lang.String], int)}
; {var2902=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter, var2940=r0, var2633=r1, var2173=$r2, var1083=$i1, var3351=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter=var2902, r0=var2940, r1=var2633, $r2=var2173, $i1=var1083, $i0=var3351}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.StringBuffer inputBuffer>;	$i1 = virtualinvoke $r2.<java.lang.StringBuffer: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 <= $i0 goto return 0;	return 0
;block_num 2