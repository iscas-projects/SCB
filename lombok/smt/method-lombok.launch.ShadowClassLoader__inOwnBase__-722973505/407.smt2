(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3084 0)
(declare-sort var1413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun SELF_BASE_LENGTH/1139179338 (var3084) Int)
(declare-fun SELF_BASE/1139179338 (var3084) String)
(declare-fun regionMatches/25727589 (String Int String Int Int) Bool)
(declare-const null-var3084 var3084)
(declare-const null-String String)
(declare-const var269 var3084) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var269 null-var3084)))
(declare-const var2137 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2137 null-String)))
(declare-const var585 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var585 null-String)))
 ; Statement: if r0 != null goto $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2137 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var378 Int (length/-134980193 var2137)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3202 Int (SELF_BASE_LENGTH/1139179338 var269)) ; Statement: $i0 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> 
(assert true)
(define-const var3301 Int (length/-134980193 var585)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2780 Int (+ var3202 var3301)) ; Statement: $i2 = $i0 + $i1 
 ; Statement: if $i3 != $i2 goto return 0 
(assert (not (not (= var378 var2780)))) ; Negate: Cond: $i3 != $i2  
(define-const var3404 String (SELF_BASE/1139179338 var269)) ; Statement: $r3 = r1.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(define-const var3501 Int (SELF_BASE_LENGTH/1139179338 var269)) ; Statement: $i4 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> 
(assert true)
(define-const var2724 Bool (regionMatches/25727589 var3404 0 var2137 0 var3501)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>(0, r0, 0, $i4) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2724 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), SELF_BASE_LENGTH/1139179338=([lombok.launch.ShadowClassLoader], int), SELF_BASE/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), regionMatches/25727589=([java.lang.String, int, java.lang.String, int, int], boolean)}
; {var3084=lombok.launch.ShadowClassLoader, var269=r1, var2137=r0, var1413=null_type, var585=r2, var378=$i3, var3202=$i0, var3301=$i1, var2780=$i2, var3404=$r3, var3501=$i4, var2724=$z0}
; {lombok.launch.ShadowClassLoader=var3084, r1=var269, r0=var2137, null_type=var1413, r2=var585, $i3=var378, $i0=var3202, $i1=var3301, $i2=var2780, $r3=var3404, $i4=var3501, $z0=var2724}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	if r0 != null goto $i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH>;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	if $i3 != $i2 goto return 0;	$r3 = r1.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$i4 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>(0, r0, 0, $i4);	if $z0 == 0 goto return 0;	return 1
;block_num 4