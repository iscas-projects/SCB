(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3519 0)
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
(declare-const var3058 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3058 null-String)))
(assert true)
(define-const var1312 Int (indexOf/-1037706067 var3058 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var1554 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1312 var1554))) ; Cond: i5 != $i8 
(assert true)
(define-const var1942 Int (length/-134980193 var3058)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2818 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var1863 Int (- var1942 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var2818 var1863)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2818!1 String)
(declare-const var1863!1 Int)
(define-const var2881 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var2818!1 (cast-from-String-to-String var3058) var2881 var1312)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var2818!2 String)
(assert (str.prefixof var2818!1 var2818!2))
(define-const var879 Int (+ var1312 1)) ; Statement: $i4 = i5 + 1 
(define-const var2881!1 Int var879) ; Statement: i6 = $i4 
(define-const var5 Int (+ var879 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var2512 Int (indexOf/1426977840 var3058 92 var5)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var1312!1 Int var2512) ; Statement: i5 = $i3 
(define-const var3440 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var2512 var3440))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var2818!2 (cast-from-String-to-String var3058) var2881!1 var1312!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var2818!3 String)
(assert (str.prefixof var2818!2 var2818!3))
(define-const var879!1 Int (+ var1312!1 1)) ; Statement: $i4 = i5 + 1 
(define-const var2881!2 Int var879!1) ; Statement: i6 = $i4 
(define-const var5!1 Int (+ var879!1 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var2512!1 Int (indexOf/1426977840 var3058 92 var5!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var1312!2 Int var2512!1) ; Statement: i5 = $i3 
(define-const var3440!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var2512!1 var3440!1))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var2818!3 (cast-from-String-to-String var3058) var2881!2 var1312!2)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var2818!4 String)
(assert (str.prefixof var2818!3 var2818!4))
(define-const var879!2 Int (+ var1312!2 1)) ; Statement: $i4 = i5 + 1 
(define-const var2881!3 Int var879!2) ; Statement: i6 = $i4 
(define-const var5!2 Int (+ var879!2 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var2512!2 Int (indexOf/1426977840 var3058 92 var5!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var1312!3 Int var2512!2) ; Statement: i5 = $i3 
(define-const var3440!2 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var2512!2 var3440!2))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var2818!4 (cast-from-String-to-String var3058) var2881!3 var1312!3)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var2818!5 String)
(assert (str.prefixof var2818!4 var2818!5))
(define-const var879!3 Int (+ var1312!3 1)) ; Statement: $i4 = i5 + 1 
(define-const var2881!4 Int var879!3) ; Statement: i6 = $i4 
(define-const var5!3 Int (+ var879!3 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var2512!3 Int (indexOf/1426977840 var3058 92 var5!3)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var1312!4 Int var2512!3) ; Statement: i5 = $i3 
(define-const var3440!3 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var2512!3 var3440!3)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var879!3 var1942))) ; Negate: Cond: $i4 >= i0  
(assert true)
;(assert (append/50905802 var2818!5 (cast-from-String-to-String var3058) var879!3 var1942)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0) 
(declare-const var2818!6 String)
(assert (str.prefixof var2818!5 var2818!6))
(assert true) ; Non Conditional
(assert true)
(define-const var1231 String (toString/-2075883882 var2818!6)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3058=r0, var3519=null_type, var1312=i5, var1554=$i8, var1942=i0, var2818=$r3, var1863=$i1, var2881=i6, var879=$i4, var5=$i2, var2512=$i3, var3440=$i10, var1231=$r2}
; {r0=var3058, null_type=var3519, i5=var1312, $i8=var1554, i0=var1942, $r3=var2818, $i1=var1863, i6=var2881, $i4=var879, $i2=var5, $i3=var2512, $i10=var3440, $r2=var1231}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 5,"<java.lang.String: int indexOf(int,int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 9