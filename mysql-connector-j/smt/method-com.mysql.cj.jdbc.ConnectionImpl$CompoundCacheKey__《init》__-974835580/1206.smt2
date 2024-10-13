(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1816 0)
(declare-sort var3334 0)
(declare-sort var3571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3571) void)
(declare-fun cast-from-var1816-to-var3571 (var1816) var3571)
(declare-fun componentOne/-1937951927 (var1816) String)
(declare-fun componentTwo/-1937951927 (var1816) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-1937951927 (var1816) Int)
(declare-const null-var1816 var1816)
(declare-const null-String String)
(declare-const var2266 var1816) ; Statement: r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey 
(assert (not (= var2266 null-var1816)))
(declare-const var2728 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2728 null-String)))
(declare-const var2851 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2851 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1816-to-var3571 var2266))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2266!1 var1816)
(declare-const var2266!2 var1816)
(assert (not (= var2266!2 null-var1816)))
(assert (= (componentOne/-1937951927 var2266!2) var2728)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1 
(declare-const var2266!3 var1816)
(assert (not (= var2266!3 null-var1816)))
(assert (= (componentTwo/-1937951927 var2266!3) var2851)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2 
(define-const var2213 String (componentOne/-1937951927 var2266!3)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> 
 ; Statement: if $r3 == null goto $i3 = 0 
(assert (= var2213 null-String)) ; Cond: $r3 == null 
(define-const var3061 Int 0) ; Statement: $i3 = 0 
(assert true) ; Non Conditional
(define-const var148 Int (+ 527 var3061)) ; Statement: $i2 = 527 + $i3 
(define-const var3567 Int (* 31 var148)) ; Statement: $i0 = 31 * $i2 
(define-const var3432 String (componentTwo/-1937951927 var2266!3)) ; Statement: $r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> 
 ; Statement: if $r4 == null goto $i4 = 0 
(assert (not (= var3432 null-String))) ; Negate: Cond: $r4 == null  
(define-const var1157 String (componentTwo/-1937951927 var2266!3)) ; Statement: $r5 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> 
(assert true)
(define-const var2217 Int (hashCode/-467973558 var1157)) ; Statement: $i4 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = $i0 + $i4] 
(assert true) ; Non Conditional
(define-const var649 Int (+ var3567 var2217)) ; Statement: $i1 = $i0 + $i4 
(declare-const var2266!4 var1816)
(assert (not (= var2266!4 null-var1816)))
(assert (= (hashCode/-1937951927 var2266!4) var649)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1816-to-var3571=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.Object), componentOne/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), componentTwo/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], int)}
; {var1816=com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey, var2266=r0, var2728=r1, var3334=null_type, var2851=r2, var3571=java.lang.Object, var2213=$r3, var3061=$i3, var148=$i2, var3567=$i0, var3432=$r4, var1157=$r5, var2217=$i4, var649=$i1}
; {com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey=var1816, r0=var2266, r1=var2728, null_type=var3334, r2=var2851, java.lang.Object=var3571, $r3=var2213, $i3=var3061, $i2=var148, $i0=var3567, $r4=var3432, $r5=var1157, $i4=var2217, $i1=var649}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2;	$r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne>;	if $r3 == null goto $i3 = 0;	$i3 = 0;	$i2 = 527 + $i3;	$i0 = 31 * $i2;	$r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo>;	if $r4 == null goto $i4 = 0;	$r5 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo>;	$i4 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i1 = $i0 + $i4];	$i1 = $i0 + $i4;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1;	return
;block_num 5