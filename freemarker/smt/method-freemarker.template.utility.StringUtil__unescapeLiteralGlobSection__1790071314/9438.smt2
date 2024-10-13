(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3054 0)
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
(declare-const var3228 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3228 null-String)))
(assert true)
(define-const var334 Int (indexOf/-1037706067 var3228 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var2537 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var334 var2537))) ; Cond: i5 != $i8 
(assert true)
(define-const var2383 Int (length/-134980193 var3228)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3523 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var3944 Int (- var2383 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var3523 var3944)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3523!1 String)
(declare-const var3944!1 Int)
(define-const var3471 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var3523!1 (cast-from-String-to-String var3228) var3471 var334)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var3523!2 String)
(assert (str.prefixof var3523!1 var3523!2))
(define-const var817 Int (+ var334 1)) ; Statement: $i4 = i5 + 1 
(define-const var3471!1 Int var817) ; Statement: i6 = $i4 
(define-const var1126 Int (+ var817 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3150 Int (indexOf/1426977840 var3228 92 var1126)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var334!1 Int var3150) ; Statement: i5 = $i3 
(define-const var2930 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3150 var2930))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var3523!2 (cast-from-String-to-String var3228) var3471!1 var334!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var3523!3 String)
(assert (str.prefixof var3523!2 var3523!3))
(define-const var817!1 Int (+ var334!1 1)) ; Statement: $i4 = i5 + 1 
(define-const var3471!2 Int var817!1) ; Statement: i6 = $i4 
(define-const var1126!1 Int (+ var817!1 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3150!1 Int (indexOf/1426977840 var3228 92 var1126!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var334!2 Int var3150!1) ; Statement: i5 = $i3 
(define-const var2930!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3150!1 var2930!1))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var3523!3 (cast-from-String-to-String var3228) var3471!2 var334!2)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var3523!4 String)
(assert (str.prefixof var3523!3 var3523!4))
(define-const var817!2 Int (+ var334!2 1)) ; Statement: $i4 = i5 + 1 
(define-const var3471!3 Int var817!2) ; Statement: i6 = $i4 
(define-const var1126!2 Int (+ var817!2 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3150!2 Int (indexOf/1426977840 var3228 92 var1126!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var334!3 Int var3150!2) ; Statement: i5 = $i3 
(define-const var2930!2 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var3150!2 var2930!2))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var3523!4 (cast-from-String-to-String var3228) var3471!3 var334!3)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var3523!5 String)
(assert (str.prefixof var3523!4 var3523!5))
(define-const var817!3 Int (+ var334!3 1)) ; Statement: $i4 = i5 + 1 
(define-const var3471!4 Int var817!3) ; Statement: i6 = $i4 
(define-const var1126!3 Int (+ var817!3 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var3150!3 Int (indexOf/1426977840 var3228 92 var1126!3)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var334!4 Int var3150!3) ; Statement: i5 = $i3 
(define-const var2930!3 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var3150!3 var2930!3)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var817!3 var2383)) ; Cond: $i4 >= i0 
(assert true)
(define-const var3367 String (toString/-2075883882 var3523!5)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3228=r0, var3054=null_type, var334=i5, var2537=$i8, var2383=i0, var3523=$r3, var3944=$i1, var3471=i6, var817=$i4, var1126=$i2, var3150=$i3, var2930=$i10, var3367=$r2}
; {r0=var3228, null_type=var3054, i5=var334, $i8=var2537, i0=var2383, $r3=var3523, $i1=var3944, i6=var3471, $i4=var817, $i2=var1126, $i3=var3150, $i10=var2930, $r2=var3367}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 4,"<java.lang.String: int indexOf(int,int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 8