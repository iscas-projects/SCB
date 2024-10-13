(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStringValue/1650698605 (var1855) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1855 var1855)
(declare-const var611 var1855) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var611 null-var1855)))
(assert true)
(define-const var913 String (getStringValue/1650698605 var611)) ; Statement: $r1 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeString: java.lang.String getStringValue()>() 
(assert true)
(define-const var393 Int (hashCode/-467973558 var913)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getStringValue/1650698605=([jdk.nashorn.internal.objects.NativeString], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1855=jdk.nashorn.internal.objects.NativeString, var611=r0, var913=$r1, var393=$i0}
; {jdk.nashorn.internal.objects.NativeString=var1855, r0=var611, $r1=var913, $i0=var393}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeString;	$r1 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeString: java.lang.String getStringValue()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1