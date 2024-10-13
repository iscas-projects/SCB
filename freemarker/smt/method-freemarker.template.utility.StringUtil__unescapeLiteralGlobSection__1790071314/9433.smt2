(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1213 0)
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
(declare-const var1538 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1538 null-String)))
(assert true)
(define-const var3089 Int (indexOf/-1037706067 var1538 92)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var3215 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3089 var3215))) ; Cond: i5 != $i8 
(assert true)
(define-const var1356 Int (length/-134980193 var1538)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3598 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var639 Int (- var1356 1)) ; Statement: $i1 = i0 - 1 
(assert true)
;(assert (<init>/543593434 var3598 var639)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3598!1 String)
(declare-const var639!1 Int)
(define-const var330 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var3598!1 (cast-from-String-to-String var1538) var330 var3089)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(declare-const var3598!2 String)
(assert (str.prefixof var3598!1 var3598!2))
(define-const var2919 Int (+ var3089 1)) ; Statement: $i4 = i5 + 1 
(define-const var330!1 Int var2919) ; Statement: i6 = $i4 
(define-const var1424 Int (+ var2919 1)) ; Statement: $i2 = $i4 + 1 
(assert true)
(define-const var2338 Int (indexOf/1426977840 var1538 92 var1424)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2) 
(define-const var3089!1 Int var2338) ; Statement: i5 = $i3 
(define-const var3424 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5) 
(assert (not (not (= var2338 var3424)))) ; Negate: Cond: $i3 != $i10  
 ; Statement: if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (>= var2919 var1356))) ; Negate: Cond: $i4 >= i0  
(assert true)
;(assert (append/50905802 var3598!2 (cast-from-String-to-String var1538) var2919 var1356)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0) 
(declare-const var3598!3 String)
(assert (str.prefixof var3598!2 var3598!3))
(assert true) ; Non Conditional
(assert true)
(define-const var3437 String (toString/-2075883882 var3598!3)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/1426977840=([java.lang.String, int, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1538=r0, var1213=null_type, var3089=i5, var3215=$i8, var1356=i0, var3598=$r3, var639=$i1, var330=i6, var2919=$i4, var1424=$i2, var2338=$i3, var3424=$i10, var3437=$r2}
; {r0=var1538, null_type=var1213, i5=var3089, $i8=var3215, i0=var1356, $r3=var3598, $i1=var639, i6=var330, $i4=var2919, $i2=var1424, $i3=var2338, $i10=var3424, $r2=var3437}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 2,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i8 = (int) -1;	if i5 != $i8 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 - 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	i6 = 0;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	$i4 = i5 + 1;	i6 = $i4;	$i2 = $i4 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(92, $i2);	i5 = $i3;	$i10 = (int) -1;	if $i3 != $i10 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, i6, i5);	if $i4 >= i0 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, $i4, i0);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 6