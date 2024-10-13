(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3121 0)
(declare-sort var3754 0)
(declare-sort var723 0)
(declare-sort var3198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var723-init () var723)
(declare-fun <init>/995032529 (var723) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun isEmpty/633059479 (var3198) Bool)
(declare-fun cast-from-var723-to-var3198 (var723) var3198)
(declare-const null-var3121 var3121)
(declare-const null-String String)
(declare-const var2009 var3121) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer 
(assert (not (= var2009 null-var3121)))
(declare-const var766 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var766 null-String)))
(define-const var3954 var723 var723-init) ; Statement: $r9 = new java.util.Stack 
(assert true)
;(assert (<init>/995032529 var3954)) ; Statement: specialinvoke $r9.<java.util.Stack: void <init>()>() 

(declare-const var3954!1 var723)
(define-const var2763 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1473 Int (length/-134980193 var766)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto $z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>() 
(assert (>= var2763 var1473)) ; Cond: i5 >= $i0 
(assert true)
(define-const var1306 Bool (isEmpty/633059479 (cast-from-var723-to-var3198 var3954!1))) ; Statement: $z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1306 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1897 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {var723-init=([], java.util.Stack), <init>/995032529=([java.util.Stack], void), length/-134980193=([java.lang.String], int), isEmpty/633059479=([java.util.Vector], boolean), cast-from-var723-to-var3198=([java.util.Stack], java.util.Vector)}
; {var3121=jdk.nashorn.internal.runtime.QuotedStringTokenizer, var2009=r2, var766=r1, var3754=null_type, var723=java.util.Stack, var3954=$r9, var2763=i5, var1473=$i0, var3198=java.util.Vector, var1306=$z0, var1897=$z2}
; {jdk.nashorn.internal.runtime.QuotedStringTokenizer=var3121, r2=var2009, r1=var766, null_type=var3754, java.util.Stack=var723, $r9=var3954, i5=var2763, $i0=var1473, java.util.Vector=var3198, $z0=var1306, $z2=var1897}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer;	r1 := @parameter0: java.lang.String;	$r9 = new java.util.Stack;	specialinvoke $r9.<java.util.Stack: void <init>()>();	i5 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i5 >= $i0 goto $z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>();	$z0 = virtualinvoke $r9.<java.util.Stack: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 5