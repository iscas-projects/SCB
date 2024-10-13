(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1090 0)
(declare-sort var1769 0)
(declare-sort var338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1993395105 (var1090) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun condition/-1993395105 (var1090) var1769)
(declare-fun hashCode/1739917532 (var338) Int)
(declare-fun cast-from-var1769-to-var338 (var1769) var338)
(declare-fun runInFixedPointLoop/-1993395105 (var1090) Bool)
(declare-fun internalFactory/-1993395105 (var1090) var1769)
(declare-const null-var1090 var1090)
(declare-const var1577 var1090) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_PassFactory 
(assert (not (= var1577 null-var1090)))
(define-const var446 String (name/-1993395105 var1577)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.lang.String name> 
(assert true)
(define-const var324 Int (hashCode/-467973558 var446)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3728 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var324)))) ; Statement: i6 = 1000003 ^ $i0 
(define-const var1250 Int (* var3728 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var3929 var1769 (condition/-1993395105 var1577)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function condition> 
(assert true)
(define-const var700 Int (hashCode/1739917532 (cast-from-var1769-to-var338 var3929))) ; Statement: $i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var1910 Int (bv2nat (bvxor ((_ int2bv 64) var1250) ((_ int2bv 64) var700)))) ; Statement: i8 = i7 ^ $i1 
(define-const var1439 Int (* var1910 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var3586 Bool (runInFixedPointLoop/-1993395105 var1577)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: boolean runInFixedPointLoop> 
 ; Statement: if $z0 == 0 goto $s10 = 1237 
(assert (not (= (ite var3586 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var782 Int 1231) ; Statement: $s10 = 1231 
 ; Statement: goto [?= $i3 = i9 ^ $s10] 
(assert true) ; Non Conditional
(define-const var393 Int (bv2nat (bvxor ((_ int2bv 64) var1439) ((_ int2bv 64) var782)))) ; Statement: $i3 = i9 ^ $s10 
(define-const var3766 Int (* var393 1000003)) ; Statement: $i4 = $i3 * 1000003 
(define-const var1195 var1769 (internalFactory/-1993395105 var1577)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function internalFactory> 
(assert true)
(define-const var3989 Int (hashCode/1739917532 (cast-from-var1769-to-var338 var1195))) ; Statement: $i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>() 
(define-const var2959 Int (bv2nat (bvxor ((_ int2bv 64) var3766) ((_ int2bv 64) var3989)))) ; Statement: $i5 = $i4 ^ $i2 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], java.lang.String), hashCode/-467973558=([java.lang.String], int), condition/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], java.util.function.Function), hashCode/1739917532=([java.lang.Object], int), cast-from-var1769-to-var338=([java.util.function.Function], java.lang.Object), runInFixedPointLoop/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], boolean), internalFactory/-1993395105=([com.google.javascript.jscomp.AutoValue_PassFactory], java.util.function.Function)}
; {var1090=com.google.javascript.jscomp.AutoValue_PassFactory, var1577=r0, var446=$r1, var324=$i0, var3728=i6, var1250=i7, var1769=java.util.function.Function, var3929=$r2, var338=java.lang.Object, var700=$i1, var1910=i8, var1439=i9, var3586=$z0, var782=$s10, var393=$i3, var3766=$i4, var1195=$r3, var3989=$i2, var2959=$i5}
; {com.google.javascript.jscomp.AutoValue_PassFactory=var1090, r0=var1577, $r1=var446, $i0=var324, i6=var3728, i7=var1250, java.util.function.Function=var1769, $r2=var3929, java.lang.Object=var338, $i1=var700, i8=var1910, i9=var1439, $z0=var3586, $s10=var782, $i3=var393, $i4=var3766, $r3=var1195, $i2=var3989, $i5=var2959}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_PassFactory;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i6 = 1000003 ^ $i0;	i7 = i6 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function condition>;	$i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	i8 = i7 ^ $i1;	i9 = i8 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: boolean runInFixedPointLoop>;	if $z0 == 0 goto $s10 = 1237;	$s10 = 1231;	goto [?= $i3 = i9 ^ $s10];	$i3 = i9 ^ $s10;	$i4 = $i3 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_PassFactory: java.util.function.Function internalFactory>;	$i2 = virtualinvoke $r3.<java.lang.Object: int hashCode()>();	$i5 = $i4 ^ $i2;	return $i5
;block_num 3