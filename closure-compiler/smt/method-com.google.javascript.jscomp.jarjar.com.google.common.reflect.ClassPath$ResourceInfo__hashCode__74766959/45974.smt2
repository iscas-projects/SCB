(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resourceName/-1538670176 (var1436) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1436 var1436)
(declare-const var3399 var1436) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo 
(assert (not (= var3399 null-var1436)))
(define-const var3964 String (resourceName/-1538670176 var3399)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo: java.lang.String resourceName> 
(assert true)
(define-const var1667 Int (hashCode/-467973558 var3964)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {resourceName/-1538670176=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1436=com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo, var3399=r0, var3964=$r1, var1667=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo=var1436, r0=var3399, $r1=var3964, $i0=var1667}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.ClassPath$ResourceInfo: java.lang.String resourceName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1