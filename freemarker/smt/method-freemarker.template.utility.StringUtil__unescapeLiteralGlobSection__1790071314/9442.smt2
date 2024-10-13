(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var344 0)
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
(declare-const var381 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var381 null-String)))
(assert true)
(define-const var3431 Int (indexOf/-1037706067 var381 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var18 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3431 var18))) ; Cond: i5 != $i8 
(assert true)
(define-const var2456 Int (length/-134980193 var381)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1296 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var1825 Int (- var2456 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var1296 var1825)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1296!1 String)
(declare-const var1825!1 Int)
(define-const var262 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var1296!1 (cast-from-String-to-String var381) var262 var3431)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1296!2 String)
(assert (str.prefixof var1296!1 var1296!2))
(define-const var352 Int (+ var3431 1)) ; Statement: $i4 = i5 + 1 
(define-const var262!1 Int var352) ; Statement: i6 = $i4 
(define-const var2628 Int (+ var352 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3344 Int (indexOf/1426977840 var381 92 var2628)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var3431!1 Int var3344) ; Statement: i5 = $i3 
(define-const var2664 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3344 var2664))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1296!2 (cast-from-String-to-String var381) var262!1 var3431!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1296!3 String)
(assert (str.prefixof var1296!2 var1296!3))
(define-const var352!1 Int (+ var3431!1 1)) ; Statement: $i4 = i5 + 1 
(define-const var262!2 Int var352!1) ; Statement: i6 = $i4 
(define-const var2628!1 Int (+ var352!1 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3344!1 Int (indexOf/1426977840 var381 92 var2628!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var3431!2 Int var3344!1) ; Statement: i5 = $i3 
(define-const var2664!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3344!1 var2664!1))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1296!3 (cast-from-String-to-String var381) var262!2 var3431!2)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1296!4 String)
(assert (str.prefixof var1296!3 var1296!4))
(define-const var352!2 Int (+ var3431!2 1)) ; Statement: $i4 = i5 + 1 
(define-const var262!3 Int var352!2) ; Statement: i6 = $i4 
(define-const var2628!2 Int (+ var352!2 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3344!2 Int (indexOf/1426977840 var381 92 var2628!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var3431!3 Int var3344!2) ; Statement: i5 = $i3 
(define-const var2664!2 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3344!2 var2664!2))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1296!4 (cast-from-String-to-String var381) var262!3 var3431!3)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1296!5 String)
(assert (str.prefixof var1296!4 var1296!5))
(define-const var352!3 Int (+ var3431!3 1)) ; Statement: $i4 = i5 + 1 
(define-const var262!4 Int var352!3) ; Statement: i6 = $i4 
(define-const var2628!3 Int (+ var352!3 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3344!3 Int (indexOf/1426977840 var381 92 var2628!3)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var3431!4 Int var3344!3) ; Statement: i5 = $i3 
(define-const var2664!3 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3344!3 var2664!3))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1296!5 (cast-from-String-to-String var381) var262!4 var3431!4)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1296!6 String)
(assert (str.prefixof var1296!5 var1296!6))
(define-const var352!4 Int (+ var3431!4 1)) ; Statement: $i4 = i5 + 1 
(define-const var262!5 Int var352!4) ; Statement: i6 = $i4 
(define-const var2628!4 Int (+ var352!4 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3344!4 Int (indexOf/1426977840 var381 92 var2628!4)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var3431!5 Int var3344!4) ; Statement: i5 = $i3 
(define-const var2664!4 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3344!4 var2664!4))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1296!6 (cast-from-String-to-String var381) var262!5 var3431!5)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1296!7 String)
(assert (str.prefixof var1296!6 var1296!7))
(define-const var352!5 Int (+ var3431!5 1)) ; Statement: $i4 = i5 + 1 
(define-const var262!6 Int var352!5) ; Statement: i6 = $i4 
(define-const var2628!5 Int (+ var352!5 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3344!5 Int (indexOf/1426977840 var381 92 var2628!5)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var3431!6 Int var3344!5) ; Statement: i5 = $i3 
(define-const var2664!5 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var3344!5 var2664!5)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var352!5 var2456)) ; Cond: $i4 >= i0 
(assert true)
(define-const var2963 String (toString/-2075883882 var1296!7)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var381=r0, var344=null_type, var3431=i5, var18=$i8, var2456=i0, var1296=$r3, var1825=$i1, var262=i6, var352=$i4, var2628=$i2, var3344=$i3, var2664=$i10, var2963=$r2}
; {r0=var381, null_type=var344, i5=var3431, $i8=var18, i0=var2456, $r3=var1296, $i1=var1825, i6=var262, $i4=var352, $i2=var2628, $i3=var3344, $i10=var2664, $r2=var2963}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 6,"<java.lang.String: int indexOf(int,int)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 10