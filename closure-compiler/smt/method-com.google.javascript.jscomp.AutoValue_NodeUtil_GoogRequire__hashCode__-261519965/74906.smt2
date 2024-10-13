(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2465 0)
(declare-sort var2611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/-612567068 (var2465) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun property/-612567068 (var2465) String)
(declare-const null-var2465 var2465)
(declare-const null-String String)
(declare-const var3422 var2465) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire 
(assert (not (= var3422 null-var2465)))
(define-const var2471 String (namespace/-612567068 var3422)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String namespace> 
(assert true)
(define-const var78 Int (hashCode/-467973558 var2471)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1211 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var78)))) ; Statement: i2 = 1000003 ^ $i0 
(define-const var2380 Int (* var1211 1000003)) ; Statement: i3 = i2 * 1000003 
(define-const var1574 String (property/-612567068 var3422)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property> 
(assert (not (= var1574 null-String))) ; Cond: $r2 != null 
(define-const var3267 String (property/-612567068 var3422)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property> 
(assert true)
(define-const var347 Int (hashCode/-467973558 var3267)) ; Statement: $i4 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1959 Int (bv2nat (bvxor ((_ int2bv 64) var2380) ((_ int2bv 64) var347)))) ; Statement: $i1 = i3 ^ $i4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/-612567068=([com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire], java.lang.String), hashCode/-467973558=([java.lang.String], int), property/-612567068=([com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire], java.lang.String)}
; {var2465=com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire, var3422=r0, var2471=$r1, var78=$i0, var1211=i2, var2380=i3, var1574=$r2, var2611=null_type, var3267=$r3, var347=$i4, var1959=$i1}
; {com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire=var2465, r0=var3422, $r1=var2471, $i0=var78, i2=var1211, i3=var2380, $r2=var1574, null_type=var2611, $r3=var3267, $i4=var347, $i1=var1959}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String namespace>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i2 = 1000003 ^ $i0;	i3 = i2 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property>;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property>;	$i4 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i1 = i3 ^ $i4;	return $i1
;block_num 3