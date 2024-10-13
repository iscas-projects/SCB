(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2451 0)
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
(declare-const var2980 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2980 null-String)))
(assert true)
(define-const var209 Int (indexOf/-1037706067 var2980 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var758 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var209 var758))) ; Cond: i5 != $i8 
(assert true)
(define-const var3636 Int (length/-134980193 var2980)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3232 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var2841 Int (- var3636 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var3232 var2841)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3232!1 String)
(declare-const var2841!1 Int)
(define-const var2442 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var3232!1 (cast-from-String-to-String var2980) var2442 var209)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var3232!2 String)
(assert (str.prefixof var3232!1 var3232!2))
(define-const var591 Int (+ var209 1)) ; Statement: $i4 = i5 + 1 
(define-const var2442!1 Int var591) ; Statement: i6 = $i4 
(define-const var1585 Int (+ var591 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var1376 Int (indexOf/1426977840 var2980 92 var1585)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var209!1 Int var1376) ; Statement: i5 = $i3 
(define-const var1233 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (= var1376 var1233))) ; Cond: $i3 != $i10 
(assert true)
;(assert (append/50905802 var3232!2 (cast-from-String-to-String var2980) var2442!1 var209!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var3232!3 String)
(assert (str.prefixof var3232!2 var3232!3))
(define-const var591!1 Int (+ var209!1 1)) ; Statement: $i4 = i5 + 1 
(define-const var2442!2 Int var591!1) ; Statement: i6 = $i4 
(define-const var1585!1 Int (+ var591!1 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var1376!1 Int (indexOf/1426977840 var2980 92 var1585!1)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var209!2 Int var1376!1) ; Statement: i5 = $i3 
(define-const var1233!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var1376!1 var1233!1)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var591!1 var3636))) ; Negate: Cond: $i4 >= i0  
(assert true)
;(assert (append/50905802 var3232!3 (cast-from-String-to-String var2980) var591!1 var3636)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0) 
(declare-const var3232!4 String)
(assert (str.prefixof var3232!3 var3232!4))
(assert true) ; Non Conditional
(assert true)
(define-const var1960 String (toString/-2075883882 var3232!4)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2980=r0, var2451=null_type, var209=i5, var758=$i8, var3636=i0, var3232=$r3, var2841=$i1, var2442=i6, var591=$i4, var1585=$i2, var1376=$i3, var1233=$i10, var1960=$r2}
; {r0=var2980, null_type=var2451, i5=var209, $i8=var758, i0=var3636, $r3=var3232, $i1=var2841, i6=var2442, $i4=var591, $i2=var1585, $i3=var1376, $i10=var1233, $r2=var1960}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 3,"<java.lang.String: int indexOf(int,int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 7