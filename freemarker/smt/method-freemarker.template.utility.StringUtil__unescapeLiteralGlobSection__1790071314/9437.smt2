(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3138 0)
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
(declare-const var1797 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1797 null-String)))
(assert true)
(define-const var1033 Int (indexOf/-1037706067 var1797 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var2289 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1033 var2289))) ; Cond: i5 != $i8 
(assert true)
(define-const var1269 Int (length/-134980193 var1797)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1578 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var3070 Int (- var1269 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var1578 var3070)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1578!1 String)
(declare-const var3070!1 Int)
(define-const var3512 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var1578!1 (cast-from-String-to-String var1797) var3512 var1033)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1578!2 String)
(assert (str.prefixof var1578!1 var1578!2))
(define-const var364 Int (+ var1033 1)) ; Statement: $i4 = i5 + 1 
(define-const var3512!1 Int var364) ; Statement: i6 = $i4 
(define-const var2375 Int (+ var364 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var1897 Int (indexOf/1426977840 var1797 92 var2375)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var1033!1 Int var1897) ; Statement: i5 = $i3 
(define-const var1049 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var1897 var1049))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1578!2 (cast-from-String-to-String var1797) var3512!1 var1033!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1578!3 String)
(assert (str.prefixof var1578!2 var1578!3))
(define-const var364!1 Int (+ var1033!1 1)) ; Statement: $i4 = i5 + 1 
(define-const var3512!2 Int var364!1) ; Statement: i6 = $i4 
(define-const var2375!1 Int (+ var364!1 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var1897!1 Int (indexOf/1426977840 var1797 92 var2375!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var1033!2 Int var1897!1) ; Statement: i5 = $i3 
(define-const var1049!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var1897!1 var1049!1))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var1578!3 (cast-from-String-to-String var1797) var3512!2 var1033!2)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var1578!4 String)
(assert (str.prefixof var1578!3 var1578!4))
(define-const var364!2 Int (+ var1033!2 1)) ; Statement: $i4 = i5 + 1 
(define-const var3512!3 Int var364!2) ; Statement: i6 = $i4 
(define-const var2375!2 Int (+ var364!2 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var1897!2 Int (indexOf/1426977840 var1797 92 var2375!2)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var1033!3 Int var1897!2) ; Statement: i5 = $i3 
(define-const var1049!2 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var1897!2 var1049!2)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var364!2 var1269))) ; Negate: Cond: $i4 >= i0  
(assert true)
;(assert (append/50905802 var1578!4 (cast-from-String-to-String var1797) var364!2 var1269)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0) 
(declare-const var1578!5 String)
(assert (str.prefixof var1578!4 var1578!5))
(assert true) ; Non Conditional
(assert true)
(define-const var239 String (toString/-2075883882 var1578!5)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1797=r0, var3138=null_type, var1033=i5, var2289=$i8, var1269=i0, var1578=$r3, var3070=$i1, var3512=i6, var364=$i4, var2375=$i2, var1897=$i3, var1049=$i10, var239=$r2}
; {r0=var1797, null_type=var3138, i5=var1033, $i8=var2289, i0=var1269, $r3=var1578, $i1=var3070, i6=var3512, $i4=var364, $i2=var2375, $i3=var1897, $i10=var1049, $r2=var239}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 4,"<java.lang.String: int indexOf(int,int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 8