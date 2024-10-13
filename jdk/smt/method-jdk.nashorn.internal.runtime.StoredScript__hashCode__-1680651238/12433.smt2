(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3388 0)
(declare-sort var3014 0)
(declare-sort var3939 0)
(declare-sort var2584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mainClassName/152874893 (var3388) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun classBytes/152874893 (var3388) var3014)
(declare-fun var3014_hashCode/1768810987 (var3014) Int)
(declare-fun constants/152874893 (var3388) (Array Int var3939))
(declare-fun var2584_hashCode/1826207050 ((Array Int var3939)) Int)
(declare-const null-var3388 var3388)
(declare-const var1735 var3388) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.StoredScript 
(assert (not (= var1735 null-var3388)))
(define-const var2429 String (mainClassName/152874893 var1735)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.StoredScript: java.lang.String mainClassName> 
(assert true)
(define-const var2826 Int (hashCode/-467973558 var2429)) ; Statement: i4 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var947 Int (* 31 var2826)) ; Statement: $i1 = 31 * i4 
(define-const var3674 var3014 (classBytes/152874893 var1735)) ; Statement: $r2 = r0.<jdk.nashorn.internal.runtime.StoredScript: java.util.Map classBytes> 
(define-const var576 Int (var3014_hashCode/1768810987 var3674)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int hashCode()>() 
(define-const var936 Int (+ var947 var576)) ; Statement: i5 = $i1 + $i0 
(define-const var1500 Int (* 31 var936)) ; Statement: $i3 = 31 * i5 
(define-const var2412 (Array Int var3939) (constants/152874893 var1735)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.StoredScript: java.lang.Object[] constants> 
(define-const var687 Int (var2584_hashCode/1826207050 var2412)) ; Statement: $i2 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r3) 
(define-const var3059 Int (+ var1500 var687)) ; Statement: i6 = $i3 + $i2 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {mainClassName/152874893=([jdk.nashorn.internal.runtime.StoredScript], java.lang.String), hashCode/-467973558=([java.lang.String], int), classBytes/152874893=([jdk.nashorn.internal.runtime.StoredScript], java.util.Map), var3014_hashCode/1768810987=([java.util.Map], int), constants/152874893=([jdk.nashorn.internal.runtime.StoredScript], java.lang.Object[]), var2584_hashCode/1826207050=([java.lang.Object[]], int)}
; {var3388=jdk.nashorn.internal.runtime.StoredScript, var1735=r0, var2429=$r1, var2826=i4, var947=$i1, var3014=java.util.Map, var3674=$r2, var576=$i0, var936=i5, var1500=$i3, var3939=java.lang.Object, var2412=$r3, var2584=java.util.Arrays, var687=$i2, var3059=i6}
; {jdk.nashorn.internal.runtime.StoredScript=var3388, r0=var1735, $r1=var2429, i4=var2826, $i1=var947, java.util.Map=var3014, $r2=var3674, $i0=var576, i5=var936, $i3=var1500, java.lang.Object=var3939, $r3=var2412, java.util.Arrays=var2584, $i2=var687, i6=var3059}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.StoredScript;	$r1 = r0.<jdk.nashorn.internal.runtime.StoredScript: java.lang.String mainClassName>;	i4 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i1 = 31 * i4;	$r2 = r0.<jdk.nashorn.internal.runtime.StoredScript: java.util.Map classBytes>;	$i0 = interfaceinvoke $r2.<java.util.Map: int hashCode()>();	i5 = $i1 + $i0;	$i3 = 31 * i5;	$r3 = r0.<jdk.nashorn.internal.runtime.StoredScript: java.lang.Object[] constants>;	$i2 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r3);	i6 = $i3 + $i2;	return i6
;block_num 1