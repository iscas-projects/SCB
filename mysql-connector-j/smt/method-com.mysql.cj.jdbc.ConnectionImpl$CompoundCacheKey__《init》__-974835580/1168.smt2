(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3961 0)
(declare-sort var1520 0)
(declare-sort var3488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3488) void)
(declare-fun cast-from-var3961-to-var3488 (var3961) var3488)
(declare-fun componentOne/-1937951927 (var3961) String)
(declare-fun componentTwo/-1937951927 (var3961) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCode/-1937951927 (var3961) Int)
(declare-const null-var3961 var3961)
(declare-const null-String String)
(declare-const var1279 var3961) ; Statement: r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey 
(assert (not (= var1279 null-var3961)))
(declare-const var2128 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2128 null-String)))
(declare-const var3843 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3843 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3961-to-var3488 var1279))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1279!1 var3961)
(declare-const var1279!2 var3961)
(assert (not (= var1279!2 null-var3961)))
(assert (= (componentOne/-1937951927 var1279!2) var2128)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1 
(declare-const var1279!3 var3961)
(assert (not (= var1279!3 null-var3961)))
(assert (= (componentTwo/-1937951927 var1279!3) var3843)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2 
(define-const var3155 String (componentOne/-1937951927 var1279!3)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> 
 ; Statement: if $r3 == null goto $i3 = 0 
(assert (not (= var3155 null-String))) ; Negate: Cond: $r3 == null  
(define-const var3872 String (componentOne/-1937951927 var1279!3)) ; Statement: $r6 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> 
(assert true)
(define-const var258 Int (hashCode/-467973558 var3872)) ; Statement: $i3 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = 527 + $i3] 
(assert true) ; Non Conditional
(define-const var3827 Int (+ 527 var258)) ; Statement: $i2 = 527 + $i3 
(define-const var3838 Int (* 31 var3827)) ; Statement: $i0 = 31 * $i2 
(define-const var2842 String (componentTwo/-1937951927 var1279!3)) ; Statement: $r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> 
 ; Statement: if $r4 == null goto $i4 = 0 
(assert (not (= var2842 null-String))) ; Negate: Cond: $r4 == null  
(define-const var2974 String (componentTwo/-1937951927 var1279!3)) ; Statement: $r5 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> 
(assert true)
(define-const var2409 Int (hashCode/-467973558 var2974)) ; Statement: $i4 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = $i0 + $i4] 
(assert true) ; Non Conditional
(define-const var1092 Int (+ var3838 var2409)) ; Statement: $i1 = $i0 + $i4 
(declare-const var1279!4 var3961)
(assert (not (= var1279!4 null-var3961)))
(assert (= (hashCode/-1937951927 var1279!4) var1092)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3961-to-var3488=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.Object), componentOne/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), componentTwo/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCode/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], int)}
; {var3961=com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey, var1279=r0, var2128=r1, var1520=null_type, var3843=r2, var3488=java.lang.Object, var3155=$r3, var3872=$r6, var258=$i3, var3827=$i2, var3838=$i0, var2842=$r4, var2974=$r5, var2409=$i4, var1092=$i1}
; {com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey=var3961, r0=var1279, r1=var2128, null_type=var1520, r2=var3843, java.lang.Object=var3488, $r3=var3155, $r6=var3872, $i3=var258, $i2=var3827, $i0=var3838, $r4=var2842, $r5=var2974, $i4=var2409, $i1=var1092}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2;	$r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne>;	if $r3 == null goto $i3 = 0;	$r6 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne>;	$i3 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i2 = 527 + $i3];	$i2 = 527 + $i3;	$i0 = 31 * $i2;	$r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo>;	if $r4 == null goto $i4 = 0;	$r5 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo>;	$i4 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i1 = $i0 + $i4];	$i1 = $i0 + $i4;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1;	return
;block_num 5