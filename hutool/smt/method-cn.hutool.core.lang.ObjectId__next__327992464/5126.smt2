(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1393_nextBytes/1805153960 () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const var3217 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3217 null-Bool)))
(define-const var3695 (Array Int Int) var1393_nextBytes/1805153960) ; Statement: r0 = staticinvoke <cn.hutool.core.lang.ObjectId: byte[] nextBytes()>() 
(define-const var95 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
 ; Statement: if z0 == 0 goto $b1 = 24 
(assert (= (ite var3217 1 0) 0)) ; Cond: z0 == 0 
(define-const var3443 Int 24) ; Statement: $b1 = 24 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543593434 var95 var3443)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($b1) 

(declare-const var95!1 String)
(declare-const var3443!1 Int)
(define-const var3233 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var433 Int (getLength-Arr-Int-1 var3695)) ; Statement: $i3 = lengthof r0 
 ; Statement: if i2 >= $i3 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3233 var433)) ; Cond: i2 >= $i3 
(assert true)
(define-const var3558 String (toString/-2075883882 var95!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1393_nextBytes/1805153960=([], byte[]), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3217=z0, var1393=cn.hutool.core.lang.ObjectId, var3695=r0, var95=$r4, var3443=$b1, var3233=i2, var433=$i3, var3558=$r2}
; {z0=var3217, cn.hutool.core.lang.ObjectId=var1393, r0=var3695, $r4=var95, $b1=var3443, i2=var3233, $i3=var433, $r2=var3558}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	r0 = staticinvoke <cn.hutool.core.lang.ObjectId: byte[] nextBytes()>();	$r4 = new java.lang.StringBuilder;	if z0 == 0 goto $b1 = 24;	$b1 = 24;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($b1);	i2 = 0;	$i3 = lengthof r0;	if i2 >= $i3 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 5