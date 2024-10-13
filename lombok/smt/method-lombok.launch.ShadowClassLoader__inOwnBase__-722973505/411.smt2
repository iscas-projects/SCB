(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1011 0)
(declare-sort var1547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun SELF_BASE_LENGTH/1139179338 (var1011) Int)
(declare-fun SELF_BASE/1139179338 (var1011) String)
(declare-fun regionMatches/25727589 (String Int String Int Int) Bool)
(declare-const null-var1011 var1011)
(declare-const null-String String)
(declare-const var643 var1011) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var643 null-var1011)))
(declare-const var1161 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1161 null-String)))
(declare-const var1816 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1816 null-String)))
 ; Statement: if r0 != null goto $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1161 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var174 Int (length/-134980193 var1161)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var732 Int (SELF_BASE_LENGTH/1139179338 var643)) ; Statement: $i0 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> 
(assert true)
(define-const var562 Int (length/-134980193 var1816)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1383 Int (+ var732 var562)) ; Statement: $i2 = $i0 + $i1 
 ; Statement: if $i3 != $i2 goto return 0 
(assert (not (not (= var174 var1383)))) ; Negate: Cond: $i3 != $i2  
(define-const var3176 String (SELF_BASE/1139179338 var643)) ; Statement: $r3 = r1.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(define-const var2401 Int (SELF_BASE_LENGTH/1139179338 var643)) ; Statement: $i4 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> 
(assert true)
(define-const var117 Bool (regionMatches/25727589 var3176 0 var1161 0 var2401)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>(0, r0, 0, $i4) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var117 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), SELF_BASE_LENGTH/1139179338=([lombok.launch.ShadowClassLoader], int), SELF_BASE/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), regionMatches/25727589=([java.lang.String, int, java.lang.String, int, int], boolean)}
; {var1011=lombok.launch.ShadowClassLoader, var643=r1, var1161=r0, var1547=null_type, var1816=r2, var174=$i3, var732=$i0, var562=$i1, var1383=$i2, var3176=$r3, var2401=$i4, var117=$z0}
; {lombok.launch.ShadowClassLoader=var1011, r1=var643, r0=var1161, null_type=var1547, r2=var1816, $i3=var174, $i0=var732, $i1=var562, $i2=var1383, $r3=var3176, $i4=var2401, $z0=var117}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	if r0 != null goto $i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH>;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	if $i3 != $i2 goto return 0;	$r3 = r1.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$i4 = r1.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean regionMatches(int,java.lang.String,int,int)>(0, r0, 0, $i4);	if $z0 == 0 goto return 0;	return 0
;block_num 4