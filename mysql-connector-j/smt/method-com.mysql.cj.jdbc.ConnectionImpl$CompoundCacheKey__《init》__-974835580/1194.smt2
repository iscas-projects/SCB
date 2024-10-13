(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1505 0)
(declare-sort var2457 0)
(declare-sort var2351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2351) void)
(declare-fun cast-from-var1505-to-var2351 (var1505) var2351)
(declare-fun componentOne/-1937951927 (var1505) String)
(declare-fun componentTwo/-1937951927 (var1505) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-1937951927 (var1505) Int)
(declare-const null-var1505 var1505)
(declare-const null-String String)
(declare-const var3685 var1505) ; Statement: r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey 
(assert (not (= var3685 null-var1505)))
(declare-const var3997 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3997 null-String)))
(declare-const var1637 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1637 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1505-to-var2351 var3685))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3685!1 var1505)
(declare-const var3685!2 var1505)
(assert (not (= var3685!2 null-var1505)))
(assert (= (componentOne/-1937951927 var3685!2) var3997)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1 
(declare-const var3685!3 var1505)
(assert (not (= var3685!3 null-var1505)))
(assert (= (componentTwo/-1937951927 var3685!3) var1637)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2 
(define-const var444 String (componentOne/-1937951927 var3685!3)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> 
 ; Statement: if $r3 == null goto $i3 = 0 
(assert (not (= var444 null-String))) ; Negate: Cond: $r3 == null  
(define-const var1932 String (componentOne/-1937951927 var3685!3)) ; Statement: $r6 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> 
(assert true)
(define-const var2670 Int (hashCode/-467973558 var1932)) ; Statement: $i3 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = 527 + $i3] 
(assert true) ; Non Conditional
(define-const var1 Int (+ 527 var2670)) ; Statement: $i2 = 527 + $i3 
(define-const var2342 Int (* 31 var1)) ; Statement: $i0 = 31 * $i2 
(define-const var614 String (componentTwo/-1937951927 var3685!3)) ; Statement: $r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> 
 ; Statement: if $r4 == null goto $i4 = 0 
(assert (= var614 null-String)) ; Cond: $r4 == null 
(define-const var3491 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var255 Int (+ var2342 var3491)) ; Statement: $i1 = $i0 + $i4 
(declare-const var3685!4 var1505)
(assert (not (= var3685!4 null-var1505)))
(assert (= (hashCode/-1937951927 var3685!4) var255)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1505-to-var2351=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.Object), componentOne/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), componentTwo/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], int)}
; {var1505=com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey, var3685=r0, var3997=r1, var2457=null_type, var1637=r2, var2351=java.lang.Object, var444=$r3, var1932=$r6, var2670=$i3, var1=$i2, var2342=$i0, var614=$r4, var3491=$i4, var255=$i1}
; {com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey=var1505, r0=var3685, r1=var3997, null_type=var2457, r2=var1637, java.lang.Object=var2351, $r3=var444, $r6=var1932, $i3=var2670, $i2=var1, $i0=var2342, $r4=var614, $i4=var3491, $i1=var255}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2;	$r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne>;	if $r3 == null goto $i3 = 0;	$r6 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne>;	$i3 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i2 = 527 + $i3];	$i2 = 527 + $i3;	$i0 = 31 * $i2;	$r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo>;	if $r4 == null goto $i4 = 0;	$i4 = 0;	$i1 = $i0 + $i4;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1;	return
;block_num 5