(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1727 0)
(declare-sort var3166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun SELF_BASE_LENGTH/1139179338 (var1727) Int)
(declare-const null-var1727 var1727)
(declare-const null-String String)
(declare-const var548 var1727) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var548 null-var1727)))
(declare-const var317 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var317 null-String)))
(declare-const var871 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var871 null-String)))
 ; Statement: if r0 != null goto $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var317 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2741 Int (length/-134980193 var317)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3712 Int (SELF_BASE_LENGTH/1139179338 var548)) ; Statement: $i0 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> 
(assert true)
(define-const var2843 Int (length/-134980193 var871)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2043 Int (+ var3712 var2843)) ; Statement: $i2 = $i0 + $i1 
 ; Statement: if $i3 != $i2 goto return 0 
(assert (not (= var2741 var2043))) ; Cond: $i3 != $i2 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), SELF_BASE_LENGTH/1139179338=([lombok.launch.ShadowClassLoader], int)}
; {var1727=lombok.launch.ShadowClassLoader, var548=r1, var317=r0, var3166=null_type, var871=r2, var2741=$i3, var3712=$i0, var2843=$i1, var2043=$i2}
; {lombok.launch.ShadowClassLoader=var1727, r1=var548, r0=var317, null_type=var3166, r2=var871, $i3=var2741, $i0=var3712, $i1=var2843, $i2=var2043}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	if r0 != null goto $i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH>;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	if $i3 != $i2 goto return 0;	return 0
;block_num 3