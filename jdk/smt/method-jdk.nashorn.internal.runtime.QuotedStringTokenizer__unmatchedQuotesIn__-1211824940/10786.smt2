(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1459 0)
(declare-sort var573 0)
(declare-sort var2780 0)
(declare-sort var3150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2780-init () var2780)
(declare-fun <init>/995032529 (var2780) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun isEmpty/633059479 (var3150) Bool)
(declare-fun cast-from-var2780-to-var3150 (var2780) var3150)
(declare-const null-var1459 var1459)
(declare-const null-String String)
(declare-const var1210 var1459) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer 
(assert (not (= var1210 null-var1459)))
(declare-const var756 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var756 null-String)))
(define-const var3842 var2780 var2780-init) ; Statement: $r9 = new java.util.Stack 
(assert true)
;(assert (<init>/995032529 var3842)) ; Statement: specialinvoke $r9.<java.util.Stack: void <init>()>() 

(declare-const var3842!1 var2780)
(define-const var2952 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3685 Int (length/-134980193 var756)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto $z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>() 
(assert (>= var2952 var3685)) ; Cond: i5 >= $i0 
(assert true)
(define-const var3304 Bool (isEmpty/633059479 (cast-from-var2780-to-var3150 var3842!1))) ; Statement: $z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var3304 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2803 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2780-init=([], java.util.Stack), <init>/995032529=([java.util.Stack], void), length/-134980193=([java.lang.String], int), isEmpty/633059479=([java.util.Vector], boolean), cast-from-var2780-to-var3150=([java.util.Stack], java.util.Vector)}
; {var1459=jdk.nashorn.internal.runtime.QuotedStringTokenizer, var1210=r2, var756=r1, var573=null_type, var2780=java.util.Stack, var3842=$r9, var2952=i5, var3685=$i0, var3150=java.util.Vector, var3304=$z0, var2803=$z2}
; {jdk.nashorn.internal.runtime.QuotedStringTokenizer=var1459, r2=var1210, r1=var756, null_type=var573, java.util.Stack=var2780, $r9=var3842, i5=var2952, $i0=var3685, java.util.Vector=var3150, $z0=var3304, $z2=var2803}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer;	r1 := @parameter0: java.lang.String;	$r9 = new java.util.Stack;	specialinvoke $r9.<java.util.Stack: void <init>()>();	i5 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i5 >= $i0 goto $z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>();	$z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 5