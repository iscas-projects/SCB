(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort var867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReference/-1089173962 (var867) Bool)
(declare-fun cast-from-var1990-to-var867 (var1990) var867)
(declare-fun getContent/416250021 (var1990) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1990 var1990)
(declare-const var1016 var1990) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource 
(assert (not (= var1016 null-var1990)))
(assert true)
(define-const var1253 Bool (isReference/-1089173962 (cast-from-var1990-to-var867 var1016))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: boolean isReference()>() 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getContent()>() 
(assert (= (ite var1253 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3853 String (getContent/416250021 var1016)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getContent()>() 
(assert true)
(define-const var381 Int (length/-134980193 var3853)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var268 Int (cast-from-Int-to-Int var381)) ; Statement: $l1 = (long) $i0 
(assert true) ; Non Conditional
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {isReference/-1089173962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], boolean), cast-from-var1990-to-var867=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), getContent/416250021=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long)}
; {var1990=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource, var1016=r0, var867=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var1253=$z0, var3853=$r1, var381=$i0, var268=$l1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource=var1990, r0=var1016, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var867, $z0=var1253, $r1=var3853, $i0=var381, $l1=var268}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: boolean isReference()>();	if $z0 == 0 goto $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getContent()>();	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: java.lang.String getContent()>();	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$l1 = (long) $i0;	return $l1
;block_num 3