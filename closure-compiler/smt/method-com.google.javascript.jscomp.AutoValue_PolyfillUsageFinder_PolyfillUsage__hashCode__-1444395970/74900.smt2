(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1823 0)
(declare-sort var3055 0)
(declare-sort var1843 0)
(declare-sort var3725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun polyfill/617523697 (var1823) var3055)
(declare-fun hashCode/1739917532 (var1843) Int)
(declare-fun cast-from-var3055-to-var1843 (var3055) var1843)
(declare-fun node/617523697 (var1823) var3725)
(declare-fun cast-from-var3725-to-var1843 (var3725) var1843)
(declare-fun name/617523697 (var1823) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isExplicitGlobal/617523697 (var1823) Bool)
(declare-const null-var1823 var1823)
(declare-const var3767 var1823) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage 
(assert (not (= var3767 null-var1823)))
(define-const var2477 var3055 (polyfill/617523697 var3767)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill polyfill> 
(assert true)
(define-const var62 Int (hashCode/1739917532 (cast-from-var3055-to-var1843 var2477))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var2808 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var62)))) ; Statement: i4 = 1000003 ^ $i0 
(define-const var3719 Int (* var2808 1000003)) ; Statement: i5 = i4 * 1000003 
(define-const var885 var3725 (node/617523697 var3767)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.rhino.Node node> 
(assert true)
(define-const var2370 Int (hashCode/1739917532 (cast-from-var3725-to-var1843 var885))) ; Statement: $i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var1368 Int (bv2nat (bvxor ((_ int2bv 64) var3719) ((_ int2bv 64) var2370)))) ; Statement: i6 = i5 ^ $i1 
(define-const var1722 Int (* var1368 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var1824 String (name/617523697 var3767)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: java.lang.String name> 
(assert true)
(define-const var880 Int (hashCode/-467973558 var1824)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3771 Int (bv2nat (bvxor ((_ int2bv 64) var1722) ((_ int2bv 64) var880)))) ; Statement: i8 = i7 ^ $i2 
(define-const var3002 Int (* var3771 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var2756 Bool (isExplicitGlobal/617523697 var3767)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: boolean isExplicitGlobal> 
 ; Statement: if $z0 == 0 goto $s10 = 1237 
(assert (= (ite var2756 1 0) 0)) ; Cond: $z0 == 0 
(define-const var212 Int 1237) ; Statement: $s10 = 1237 
(assert true) ; Non Conditional
(define-const var641 Int (bv2nat (bvxor ((_ int2bv 64) var3002) ((_ int2bv 64) var212)))) ; Statement: $i3 = i9 ^ $s10 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {polyfill/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill), hashCode/1739917532=([java.lang.Object], int), cast-from-var3055-to-var1843=([com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill], java.lang.Object), node/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], com.google.javascript.rhino.Node), cast-from-var3725-to-var1843=([com.google.javascript.rhino.Node], java.lang.Object), name/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isExplicitGlobal/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], boolean)}
; {var1823=com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage, var3767=r0, var3055=com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill, var2477=$r1, var1843=java.lang.Object, var62=$i0, var2808=i4, var3719=i5, var3725=com.google.javascript.rhino.Node, var885=$r2, var2370=$i1, var1368=i6, var1722=i7, var1824=$r3, var880=$i2, var3771=i8, var3002=i9, var2756=$z0, var212=$s10, var641=$i3}
; {com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage=var1823, r0=var3767, com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill=var3055, $r1=var2477, java.lang.Object=var1843, $i0=var62, i4=var2808, i5=var3719, com.google.javascript.rhino.Node=var3725, $r2=var885, $i1=var2370, i6=var1368, i7=var1722, $r3=var1824, $i2=var880, i8=var3771, i9=var3002, $z0=var2756, $s10=var212, $i3=var641}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill polyfill>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i4 = 1000003 ^ $i0;	i5 = i4 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.rhino.Node node>;	$i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	i6 = i5 ^ $i1;	i7 = i6 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: java.lang.String name>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i8 = i7 ^ $i2;	i9 = i8 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: boolean isExplicitGlobal>;	if $z0 == 0 goto $s10 = 1237;	$s10 = 1237;	$i3 = i9 ^ $s10;	return $i3
;block_num 3