(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort var534 0)
(declare-sort var1625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1625) void)
(declare-fun cast-from-var122-to-var1625 (var122) var1625)
(declare-fun componentOne/-1937951927 (var122) String)
(declare-fun componentTwo/-1937951927 (var122) String)
(declare-fun hashCode/-1937951927 (var122) Int)
(declare-const null-var122 var122)
(declare-const null-String String)
(declare-const var2064 var122) ; Statement: r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey 
(assert (not (= var2064 null-var122)))
(declare-const var3273 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3273 null-String)))
(declare-const var3511 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3511 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var122-to-var1625 var2064))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2064!1 var122)
(declare-const var2064!2 var122)
(assert (not (= var2064!2 null-var122)))
(assert (= (componentOne/-1937951927 var2064!2) var3273)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1 
(declare-const var2064!3 var122)
(assert (not (= var2064!3 null-var122)))
(assert (= (componentTwo/-1937951927 var2064!3) var3511)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2 
(define-const var3481 String (componentOne/-1937951927 var2064!3)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> 
 ; Statement: if $r3 == null goto $i3 = 0 
(assert (= var3481 null-String)) ; Cond: $r3 == null 
(define-const var693 Int 0) ; Statement: $i3 = 0 
(assert true) ; Non Conditional
(define-const var2303 Int (+ 527 var693)) ; Statement: $i2 = 527 + $i3 
(define-const var2108 Int (* 31 var2303)) ; Statement: $i0 = 31 * $i2 
(define-const var2162 String (componentTwo/-1937951927 var2064!3)) ; Statement: $r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> 
 ; Statement: if $r4 == null goto $i4 = 0 
(assert (= var2162 null-String)) ; Cond: $r4 == null 
(define-const var2037 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var1112 Int (+ var2108 var2037)) ; Statement: $i1 = $i0 + $i4 
(declare-const var2064!4 var122)
(assert (not (= var2064!4 null-var122)))
(assert (= (hashCode/-1937951927 var2064!4) var1112)) ; Statement: r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var122-to-var1625=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.Object), componentOne/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), componentTwo/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], java.lang.String), hashCode/-1937951927=([com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey], int)}
; {var122=com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey, var2064=r0, var3273=r1, var534=null_type, var3511=r2, var1625=java.lang.Object, var3481=$r3, var693=$i3, var2303=$i2, var2108=$i0, var2162=$r4, var2037=$i4, var1112=$i1}
; {com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey=var122, r0=var2064, r1=var3273, null_type=var534, r2=var3511, java.lang.Object=var1625, $r3=var3481, $i3=var693, $i2=var2303, $i0=var2108, $r4=var2162, $i4=var2037, $i1=var1112}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne> = r1;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo> = r2;	$r3 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentOne>;	if $r3 == null goto $i3 = 0;	$i3 = 0;	$i2 = 527 + $i3;	$i0 = 31 * $i2;	$r4 = r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: java.lang.String componentTwo>;	if $r4 == null goto $i4 = 0;	$i4 = 0;	$i1 = $i0 + $i4;	r0.<com.mysql.cj.jdbc.ConnectionImpl$CompoundCacheKey: int hashCode> = $i1;	return
;block_num 5