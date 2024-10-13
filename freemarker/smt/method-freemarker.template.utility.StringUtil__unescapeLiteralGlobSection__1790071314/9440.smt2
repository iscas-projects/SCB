(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2749 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2749 null-String)))
(assert true)
(define-const var2913 Int (indexOf/-1037706067 var2749 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var2257 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2913 var2257))) ; Cond: i5 != $i8 
(assert true)
(define-const var1731 Int (length/-134980193 var2749)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1282 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var1378 Int (- var1731 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var1282 var1378)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1282!1 String)
(declare-const var1378!1 Int)
(define-const var232 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var1282!1 (cast-from-String-to-String var2749) var232 var2913)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1282!2 String)
(assert (str.prefixof var1282!1 var1282!2))
(define-const var843 Int (+ var2913 1)) ; Statement: $i4 = i5 + 1 
(define-const var232!1 Int var843) ; Statement: i6 = $i4 
(define-const var1823 Int (+ var843 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3828 Int (indexOf/1426977840 var2749 92 var1823)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2913!1 Int var3828) ; Statement: i5 = $i3 
(define-const var283 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3828 var283))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1282!2 (cast-from-String-to-String var2749) var232!1 var2913!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1282!3 String)
(assert (str.prefixof var1282!2 var1282!3))
(define-const var843!1 Int (+ var2913!1 1)) ; Statement: $i4 = i5 + 1 
(define-const var232!2 Int var843!1) ; Statement: i6 = $i4 
(define-const var1823!1 Int (+ var843!1 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3828!1 Int (indexOf/1426977840 var2749 92 var1823!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2913!2 Int var3828!1) ; Statement: i5 = $i3 
(define-const var283!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3828!1 var283!1))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1282!3 (cast-from-String-to-String var2749) var232!2 var2913!2)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1282!4 String)
(assert (str.prefixof var1282!3 var1282!4))
(define-const var843!2 Int (+ var2913!2 1)) ; Statement: $i4 = i5 + 1 
(define-const var232!3 Int var843!2) ; Statement: i6 = $i4 
(define-const var1823!2 Int (+ var843!2 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3828!2 Int (indexOf/1426977840 var2749 92 var1823!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2913!3 Int var3828!2) ; Statement: i5 = $i3 
(define-const var283!2 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3828!2 var283!2))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1282!4 (cast-from-String-to-String var2749) var232!3 var2913!3)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1282!5 String)
(assert (str.prefixof var1282!4 var1282!5))
(define-const var843!3 Int (+ var2913!3 1)) ; Statement: $i4 = i5 + 1 
(define-const var232!4 Int var843!3) ; Statement: i6 = $i4 
(define-const var1823!3 Int (+ var843!3 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3828!3 Int (indexOf/1426977840 var2749 92 var1823!3)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2913!4 Int var3828!3) ; Statement: i5 = $i3 
(define-const var283!3 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3828!3 var283!3))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1282!5 (cast-from-String-to-String var2749) var232!4 var2913!4)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1282!6 String)
(assert (str.prefixof var1282!5 var1282!6))
(define-const var843!4 Int (+ var2913!4 1)) ; Statement: $i4 = i5 + 1 
(define-const var232!5 Int var843!4) ; Statement: i6 = $i4 
(define-const var1823!4 Int (+ var843!4 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3828!4 Int (indexOf/1426977840 var2749 92 var1823!4)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2913!5 Int var3828!4) ; Statement: i5 = $i3 
(define-const var283!4 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var3828!4 var283!4)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var843!4 var1731)) ; Cond: $i4 >= i0 
(assert true)
(define-const var1484 String (toString/-2075883882 var1282!6)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2749=r0, var460=null_type, var2913=i5, var2257=$i8, var1731=i0, var1282=$r3, var1378=$i1, var232=i6, var843=$i4, var1823=$i2, var3828=$i3, var283=$i10, var1484=$r2}
; {r0=var2749, null_type=var460, i5=var2913, $i8=var2257, i0=var1731, $r3=var1282, $i1=var1378, i6=var232, $i4=var843, $i2=var1823, $i3=var3828, $i10=var283, $r2=var1484}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 5,"<java.lang.String: int indexOf(int,int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 9