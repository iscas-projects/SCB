(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var590_min/-1112089438 (Int Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2487 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2487 null-__Array__Int__Int__)))
(declare-const var2076 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var2076 null-Int)))
(define-const var1608 Int (getLength-Arr-Int-1 var2487)) ; Statement: $i0 = lengthof r0 
(define-const var1051 Int (var590_min/-1112089438 var2076 var1608)) ; Statement: i6 = staticinvoke <java.lang.Math: int min(int,int)>(i5, $i0) 
(define-const var281 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(define-const var2838 Int (* var1051 4)) ; Statement: $i1 = i6 * 4 
(assert true)
;(assert (<init>/543593434 var281 var2838)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var281!1 String)
(declare-const var2838!1 Int)
(define-const var1375 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1375 16)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>(int)>(16) 

(declare-const var1375!1 String)
(declare-const var3750 Int)
(define-const var2951 Int 0) ; Statement: i7 = 0 
(define-const var3267 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i6 goto $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2951 var1051)) ; Cond: i7 >= i6 
(assert true)
(define-const var270 String (toString/-2075883882 var281!1)) ; Statement: $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), var590_min/-1112089438=([int, int], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2487=r0, var2076=i5, var1608=$i0, var590=java.lang.Math, var1051=i6, var281=$r11, var2838=$i1, var1375=$r12, var3750=16, var2951=i7, var3267=i8, var270=$r3}
; {r0=var2487, i5=var2076, $i0=var1608, java.lang.Math=var590, i6=var1051, $r11=var281, $i1=var2838, $r12=var1375, 16=var3750, i7=var2951, i8=var3267, $r3=var270}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i5 := @parameter1: int;	$i0 = lengthof r0;	i6 = staticinvoke <java.lang.Math: int min(int,int)>(i5, $i0);	$r11 = new java.lang.StringBuilder;	$i1 = i6 * 4;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>($i1);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>(int)>(16);	i7 = 0;	i8 = 0;	if i7 >= i6 goto $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3