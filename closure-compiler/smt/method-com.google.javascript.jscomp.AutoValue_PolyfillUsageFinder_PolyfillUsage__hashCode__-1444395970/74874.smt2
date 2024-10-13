(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var238 0)
(declare-sort var3802 0)
(declare-sort var2732 0)
(declare-sort var360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun polyfill/617523697 (var238) var3802)
(declare-fun hashCode/1739917532 (var2732) Int)
(declare-fun cast-from-var3802-to-var2732 (var3802) var2732)
(declare-fun node/617523697 (var238) var360)
(declare-fun cast-from-var360-to-var2732 (var360) var2732)
(declare-fun name/617523697 (var238) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isExplicitGlobal/617523697 (var238) Bool)
(declare-const null-var238 var238)
(declare-const var264 var238) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage 
(assert (not (= var264 null-var238)))
(define-const var2795 var3802 (polyfill/617523697 var264)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill polyfill> 
(assert true)
(define-const var1040 Int (hashCode/1739917532 (cast-from-var3802-to-var2732 var2795))) ; Statement: $i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3296 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1040)))) ; Statement: i4 = 1000003 ^ $i0 
(define-const var1173 Int (* var3296 1000003)) ; Statement: i5 = i4 * 1000003 
(define-const var2978 var360 (node/617523697 var264)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.rhino.Node node> 
(assert true)
(define-const var2633 Int (hashCode/1739917532 (cast-from-var360-to-var2732 var2978))) ; Statement: $i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var1364 Int (bv2nat (bvxor ((_ int2bv 64) var1173) ((_ int2bv 64) var2633)))) ; Statement: i6 = i5 ^ $i1 
(define-const var2385 Int (* var1364 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var1992 String (name/617523697 var264)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: java.lang.String name> 
(assert true)
(define-const var108 Int (hashCode/-467973558 var1992)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var484 Int (bv2nat (bvxor ((_ int2bv 64) var2385) ((_ int2bv 64) var108)))) ; Statement: i8 = i7 ^ $i2 
(define-const var3708 Int (* var484 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var510 Bool (isExplicitGlobal/617523697 var264)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: boolean isExplicitGlobal> 
 ; Statement: if $z0 == 0 goto $s10 = 1237 
(assert (not (= (ite var510 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3812 Int 1231) ; Statement: $s10 = 1231 
 ; Statement: goto [?= $i3 = i9 ^ $s10] 
(assert true) ; Non Conditional
(define-const var2535 Int (bv2nat (bvxor ((_ int2bv 64) var3708) ((_ int2bv 64) var3812)))) ; Statement: $i3 = i9 ^ $s10 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {polyfill/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill), hashCode/1739917532=([java.lang.Object], int), cast-from-var3802-to-var2732=([com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill], java.lang.Object), node/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], com.google.javascript.rhino.Node), cast-from-var360-to-var2732=([com.google.javascript.rhino.Node], java.lang.Object), name/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isExplicitGlobal/617523697=([com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage], boolean)}
; {var238=com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage, var264=r0, var3802=com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill, var2795=$r1, var2732=java.lang.Object, var1040=$i0, var3296=i4, var1173=i5, var360=com.google.javascript.rhino.Node, var2978=$r2, var2633=$i1, var1364=i6, var2385=i7, var1992=$r3, var108=$i2, var484=i8, var3708=i9, var510=$z0, var3812=$s10, var2535=$i3}
; {com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage=var238, r0=var264, com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill=var3802, $r1=var2795, java.lang.Object=var2732, $i0=var1040, i4=var3296, i5=var1173, com.google.javascript.rhino.Node=var360, $r2=var2978, $i1=var2633, i6=var1364, i7=var2385, $r3=var1992, $i2=var108, i8=var484, i9=var3708, $z0=var510, $s10=var3812, $i3=var2535}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.jscomp.PolyfillUsageFinder$Polyfill polyfill>;	$i0 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i4 = 1000003 ^ $i0;	i5 = i4 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: com.google.javascript.rhino.Node node>;	$i1 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	i6 = i5 ^ $i1;	i7 = i6 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: java.lang.String name>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i8 = i7 ^ $i2;	i9 = i8 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_PolyfillUsageFinder_PolyfillUsage: boolean isExplicitGlobal>;	if $z0 == 0 goto $s10 = 1237;	$s10 = 1231;	goto [?= $i3 = i9 ^ $s10];	$i3 = i9 ^ $s10;	return $i3
;block_num 3