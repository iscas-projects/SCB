(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var345_getPackage/-528553797 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-ClassObject ClassObject)
(declare-const var3740 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3740 null-ClassObject)))
(define-const var471 String (var345_getPackage/-528553797 var3740)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.ClassUtil: java.lang.String getPackage(java.lang.Class)>(r0) 
(assert true)
(define-const var235 String (replace/1524665721 var471 46 47)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var345_getPackage/-528553797=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3740=r0, var345=cn.hutool.core.util.ClassUtil, var471=$r1, var235=$r2}
; {r0=var3740, cn.hutool.core.util.ClassUtil=var345, $r1=var471, $r2=var235}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = staticinvoke <cn.hutool.core.util.ClassUtil: java.lang.String getPackage(java.lang.Class)>(r0);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	return $r2
;block_num 1