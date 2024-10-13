(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2884 0)
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
(declare-const var2873 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2873 null-String)))
(assert true)
(define-const var2968 Int (indexOf/-1037706067 var2873 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var274 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2968 var274))) ; Cond: i5 != $i8 
(assert true)
(define-const var3436 Int (length/-134980193 var2873)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var924 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var3460 Int (- var3436 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var924 var3460)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var924!1 String)
(declare-const var3460!1 Int)
(define-const var831 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var924!1 (cast-from-String-to-String var2873) var831 var2968)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var924!2 String)
(assert (str.prefixof var924!1 var924!2))
(define-const var1326 Int (+ var2968 1)) ; Statement: $i4 = i5 + 1 
(define-const var831!1 Int var1326) ; Statement: i6 = $i4 
(define-const var1685 Int (+ var1326 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var248 Int (indexOf/1426977840 var2873 92 var1685)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2968!1 Int var248) ; Statement: i5 = $i3 
(define-const var1613 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var248 var1613))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var924!2 (cast-from-String-to-String var2873) var831!1 var2968!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var924!3 String)
(assert (str.prefixof var924!2 var924!3))
(define-const var1326!1 Int (+ var2968!1 1)) ; Statement: $i4 = i5 + 1 
(define-const var831!2 Int var1326!1) ; Statement: i6 = $i4 
(define-const var1685!1 Int (+ var1326!1 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var248!1 Int (indexOf/1426977840 var2873 92 var1685!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2968!2 Int var248!1) ; Statement: i5 = $i3 
(define-const var1613!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var248!1 var1613!1))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var924!3 (cast-from-String-to-String var2873) var831!2 var2968!2)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var924!4 String)
(assert (str.prefixof var924!3 var924!4))
(define-const var1326!2 Int (+ var2968!2 1)) ; Statement: $i4 = i5 + 1 
(define-const var831!3 Int var1326!2) ; Statement: i6 = $i4 
(define-const var1685!2 Int (+ var1326!2 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var248!2 Int (indexOf/1426977840 var2873 92 var1685!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2968!3 Int var248!2) ; Statement: i5 = $i3 
(define-const var1613!2 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var248!2 var1613!2))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var924!4 (cast-from-String-to-String var2873) var831!3 var2968!3)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var924!5 String)
(assert (str.prefixof var924!4 var924!5))
(define-const var1326!3 Int (+ var2968!3 1)) ; Statement: $i4 = i5 + 1 
(define-const var831!4 Int var1326!3) ; Statement: i6 = $i4 
(define-const var1685!3 Int (+ var1326!3 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var248!3 Int (indexOf/1426977840 var2873 92 var1685!3)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2968!4 Int var248!3) ; Statement: i5 = $i3 
(define-const var1613!3 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var248!3 var1613!3))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var924!5 (cast-from-String-to-String var2873) var831!4 var2968!4)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var924!6 String)
(assert (str.prefixof var924!5 var924!6))
(define-const var1326!4 Int (+ var2968!4 1)) ; Statement: $i4 = i5 + 1 
(define-const var831!5 Int var1326!4) ; Statement: i6 = $i4 
(define-const var1685!4 Int (+ var1326!4 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var248!4 Int (indexOf/1426977840 var2873 92 var1685!4)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var2968!5 Int var248!4) ; Statement: i5 = $i3 
(define-const var1613!4 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var248!4 var1613!4)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var1326!4 var3436))) ; Negate: Cond: $i4 >= i0  
(assert true)
;(assert (append/50905802 var924!6 (cast-from-String-to-String var2873) var1326!4 var3436)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0) 
(declare-const var924!7 String)
(assert (str.prefixof var924!6 var924!7))
(assert true) ; Non Conditional
(assert true)
(define-const var2914 String (toString/-2075883882 var924!7)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2873=r0, var2884=null_type, var2968=i5, var274=$i8, var3436=i0, var924=$r3, var3460=$i1, var831=i6, var1326=$i4, var1685=$i2, var248=$i3, var1613=$i10, var2914=$r2}
; {r0=var2873, null_type=var2884, i5=var2968, $i8=var274, i0=var3436, $r3=var924, $i1=var3460, i6=var831, $i4=var1326, $i2=var1685, $i3=var248, $i10=var1613, $r2=var2914}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 6,"<java.lang.String: int indexOf(int,int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 10