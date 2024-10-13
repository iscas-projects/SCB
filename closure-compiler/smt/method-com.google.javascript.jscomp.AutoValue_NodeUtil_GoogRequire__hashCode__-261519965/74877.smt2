(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var271 0)
(declare-sort var1363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/-612567068 (var271) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun property/-612567068 (var271) String)
(declare-const null-var271 var271)
(declare-const null-String String)
(declare-const var2822 var271) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire 
(assert (not (= var2822 null-var271)))
(define-const var3504 String (namespace/-612567068 var2822)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String namespace> 
(assert true)
(define-const var1418 Int (hashCode/-467973558 var3504)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var122 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1418)))) ; Statement: i2 = 1000003 ^ $i0 
(define-const var1392 Int (* var122 1000003)) ; Statement: i3 = i2 * 1000003 
(define-const var3763 String (property/-612567068 var2822)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property> 
(assert (not (not (= var3763 null-String)))) ; Negate: Cond: $r2 != null  
(define-const var1322 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= $i1 = i3 ^ $i4] 
(assert true) ; Non Conditional
(define-const var3027 Int (bv2nat (bvxor ((_ int2bv 64) var1392) ((_ int2bv 64) var1322)))) ; Statement: $i1 = i3 ^ $i4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/-612567068=([com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire], java.lang.String), hashCode/-467973558=([java.lang.String], int), property/-612567068=([com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire], java.lang.String)}
; {var271=com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire, var2822=r0, var3504=$r1, var1418=$i0, var122=i2, var1392=i3, var3763=$r2, var1363=null_type, var1322=$i4, var3027=$i1}
; {com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire=var271, r0=var2822, $r1=var3504, $i0=var1418, i2=var122, i3=var1392, $r2=var3763, null_type=var1363, $i4=var1322, $i1=var3027}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String namespace>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i2 = 1000003 ^ $i0;	i3 = i2 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.AutoValue_NodeUtil_GoogRequire: java.lang.String property>;	$i4 = 0;	goto [?= $i1 = i3 ^ $i4];	$i1 = i3 ^ $i4;	return $i1
;block_num 3