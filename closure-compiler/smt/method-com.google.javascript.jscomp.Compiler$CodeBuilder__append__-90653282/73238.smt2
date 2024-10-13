(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2144 0)
(declare-sort var2947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-1774502042 (var2144) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun colCount/-1774502042 (var2144) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2144 var2144)
(declare-const null-String String)
(declare-const var20 var2144) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var20 null-var2144)))
(declare-const var1588 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1588 null-String)))
(define-const var2567 String (sb/-1774502042 var20)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var2567 var1588)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2567!1 String)
(assert (= var2567!1 (str.++ var2567 var1588)))
(define-const var3432 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var760 Int var3432) ; Statement: i10 = $i13 
(define-const var1548 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
(define-const var1457 Int var1548) ; Statement: i11 = $i15 
(assert true) ; Non Conditional
(define-const var505 Int (+ var760 1)) ; Statement: $i0 = i10 + 1 
(assert true)
(define-const var2740 Int (indexOf/1426977840 var1588 10 var505)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(10, $i0) 
(define-const var760!1 Int var2740) ; Statement: i10 = $i1 
 ; Statement: if $i1 < 0 goto $i17 = (int) -1 
(assert (< var2740 0)) ; Cond: $i1 < 0 
(define-const var1819 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i17 = (int) -1 
 ; Statement: if i11 != $i17 goto $i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= var1457 var1819)))) ; Negate: Cond: i11 != $i17  
(define-const var1972 Int (colCount/-1774502042 var20)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount> 
(assert true)
(define-const var3392 Int (length/-134980193 var1588)) ; Statement: $i6 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3390 Int (+ var1972 var3392)) ; Statement: $i7 = $i5 + $i6 
(declare-const var20!1 var2144)
(assert (not (= var20!1 null-var2144)))
(assert (= (colCount/-1774502042 var20!1) var3390)) ; Statement: r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount> = $i7 
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], int), indexOf/1426977840=([java.lang.String, int, int], int), colCount/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], int), length/-134980193=([java.lang.String], int)}
; {var2144=com.google.javascript.jscomp.Compiler$CodeBuilder, var20=r0, var1588=r1, var2947=null_type, var2567=$r2, var3432=$i13, var760=i10, var1548=$i15, var1457=i11, var505=$i0, var2740=$i1, var1819=$i17, var1972=$i5, var3392=$i6, var3390=$i7}
; {com.google.javascript.jscomp.Compiler$CodeBuilder=var2144, r0=var20, r1=var1588, null_type=var2947, $r2=var2567, $i13=var3432, i10=var760, $i15=var1548, i11=var1457, $i0=var505, $i1=var2740, $i17=var1819, $i5=var1972, $i6=var3392, $i7=var3390}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$i13 = (int) -1;	i10 = $i13;	$i15 = (int) -1;	i11 = $i15;	$i0 = i10 + 1;	$i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(10, $i0);	i10 = $i1;	if $i1 < 0 goto $i17 = (int) -1;	$i17 = (int) -1;	if i11 != $i17 goto $i3 = virtualinvoke r1.<java.lang.String: int length()>();	$i5 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount>;	$i6 = virtualinvoke r1.<java.lang.String: int length()>();	$i7 = $i5 + $i6;	r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: int colCount> = $i7;	goto [?= return r0];	return r0
;block_num 5