(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1785 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1785 null-String)))
(define-const var3158 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
(define-const var2275 Int (length/-134980193 var1785)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1693 Int (* 2 var2275)) ; Statement: $i1 = 2 * $i0 
(assert true)
;(assert (<init>/543593434 var3158 var1693)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3158!1 String)
(declare-const var1693!1 Int)
(define-const var3363 Int 0) ; Statement: i5 = 0 
(assert true)
(define-const var2383 Int (length/-134980193 var1785)) ; Statement: i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i2 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3363 var2383)) ; Cond: i5 >= i2 
(assert true)
(define-const var2634 String (toString/-2075883882 var3158!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1785=r1, var2537=null_type, var3158=$r4, var2275=$i0, var1693=$i1, var3363=i5, var2383=i2, var2634=$r2}
; {r1=var1785, null_type=var2537, $r4=var3158, $i0=var2275, $i1=var1693, i5=var3363, i2=var2383, $r2=var2634}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r4 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 2 * $i0;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i1);	i5 = 0;	i2 = virtualinvoke r1.<java.lang.String: int length()>();	if i5 >= i2 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3