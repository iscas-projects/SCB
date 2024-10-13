(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var2271 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2271 null-Int)))
(declare-const var1742 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var1742 null-Int)))
 ; Statement: if i0 >= 1 goto i8 = 1 
(assert (>= var2271 1)) ; Cond: i0 >= 1 
(define-const var2880 Int 1) ; Statement: i8 = 1 
(define-const var909 Int 1) ; Statement: i9 = 1 
(assert true) ; Non Conditional
(define-const var223 Int (* var909 26)) ; Statement: $i6 = i9 * 26 
(define-const var2483 Int (+ var2880 var223)) ; Statement: $i7 = i8 + $i6 
 ; Statement: if $i7 > i0 goto $r9 = new java.lang.StringBuilder 
(assert (> var2483 var2271)) ; Cond: $i7 > i0 
(define-const var3370 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3370)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3370!1 String)
(assert (= var3370!1 ""))
(assert true) ; Non Conditional
 ; Statement: if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var909 0))) ; Negate: Cond: i9 == 0  
(define-const var1973 Int (- var2271 var2880)) ; Statement: $i1 = i0 - i8 
(define-const var2472 Int (div var1973 var909)) ; Statement: i10 = $i1 / i9 
(define-const var2840 Int (cast-from-Int-to-Int var1742)) ; Statement: $i11 = (int) c2 
(define-const var3372 Int (+ var2840 var2472)) ; Statement: $i3 = $i11 + i10 
(define-const var2173 Int (cast-from-Int-to-Int var3372)) ; Statement: $c4 = (char) $i3 
(assert true)
;(assert (append/-1166366385 var3370!1 var2173)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4) 
(declare-const var3370!2 String)
(assert (str.prefixof var3370!1 var3370!2))
(define-const var1780 Int (* var2472 var909)) ; Statement: $i5 = i10 * i9 
(define-const var2880!1 Int (+ var2880 var1780)) ; Statement: i8 = i8 + $i5 
(define-const var909!1 Int (div var909 26)) ; Statement: i9 = i9 / 26 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var909!1 0)) ; Cond: i9 == 0 
(assert true)
(define-const var841 String (toString/-2075883882 var3370!2)) ; Statement: $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2271=i0, var1742=c2, var2880=i8, var909=i9, var223=$i6, var2483=$i7, var3370=$r9, var1973=$i1, var2472=i10, var2840=$i11, var3372=$i3, var2173=$c4, var1780=$i5, var841=$r1}
; {i0=var2271, c2=var1742, i8=var2880, i9=var909, $i6=var223, $i7=var2483, $r9=var3370, $i1=var1973, i10=var2472, $i11=var2840, $i3=var3372, $c4=var2173, $i5=var1780, $r1=var841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	c2 := @parameter1: char;	if i0 >= 1 goto i8 = 1;	i8 = 1;	i9 = 1;	$i6 = i9 * 26;	$i7 = i8 + $i6;	if $i7 > i0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$i1 = i0 - i8;	i10 = $i1 / i9;	$i11 = (int) c2;	$i3 = $i11 + i10;	$c4 = (char) $i3;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4);	$i5 = i10 * i9;	i8 = i8 + $i5;	i9 = i9 / 26;	goto [?= (branch)];	if i9 == 0 goto $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 8