(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var594 0)
(declare-sort var130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContent/416250021 (var594) String)
(declare-fun String_valueOf/-333372740 (var130) String)
(declare-fun cast-from-String-to-var130 (String) var130)
(declare-const null-var594 var594)
(declare-const var764 var594) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource 
(assert (not (= var764 null-var594)))
(assert true)
(define-const var1195 String (getContent/416250021 var764)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getContent()>() 
(define-const var2580 String (String_valueOf/-333372740 (cast-from-String-to-var130 var1195))) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getContent/416250021=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource], java.lang.String), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var130=([java.lang.String], java.lang.Object)}
; {var594=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource, var764=r0, var1195=$r1, var130=java.lang.Object, var2580=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource=var594, r0=var764, $r1=var1195, java.lang.Object=var130, $r2=var2580}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getContent()>();	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1