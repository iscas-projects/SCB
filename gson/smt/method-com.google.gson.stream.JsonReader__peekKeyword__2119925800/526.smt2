(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var2408) (Array Int Int))
(declare-fun pos/1477480286 (var2408) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/1477480286 (var2408) Int)
(declare-fun fillBuffer/548664799 (var2408 Int) Bool)
(declare-const null-var2408 var2408)
(declare-const var571 var2408) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var571 null-var2408)))
(define-const var2562 (Array Int Int) (buffer/1477480286 var571)) ; Statement: $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var3566 Int (pos/1477480286 var571)) ; Statement: $i0 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var553 Int (select var2562 var3566)) ; Statement: c19 = $r1[$i0] 
(define-const var649 Int (cast-from-Int-to-Int var553)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var649 116)) ; Cond: $i25 == 116 
(define-const var2788 String "true") ; Statement: r4 = "true" 
(define-const var366 String "true") ; Statement: r7 = "true" 
(define-const var2435 String "true") ; Statement: r6 = "true" 
(define-const var3610 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var1475 Int 5) ; Statement: b20 = 5 
(define-const var1301 Int 5) ; Statement: b24 = 5 
(define-const var3233 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2604 Int (length/-134980193 var366)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var2685 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (not (>= var2685 var2604))) ; Negate: Cond: i22 >= $i21  
(define-const var3958 Int (pos/1477480286 var571)) ; Statement: $i10 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var2295 Int (+ var3958 var2685)) ; Statement: $i12 = $i10 + i22 
(define-const var2471 Int (limit/1477480286 var571)) ; Statement: $i11 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i12 < $i11 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (< var2295 var2471))) ; Negate: Cond: $i12 < $i11  
(define-const var1233 Int (+ var2685 1)) ; Statement: $i17 = i22 + 1 
(assert true)
(define-const var3109 Bool (fillBuffer/548664799 var571 var1233)) ; Statement: $z2 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i17) 
 ; Statement: if $z2 != 0 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (not (= (ite var3109 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean)}
; {var2408=com.google.gson.stream.JsonReader, var571=r0, var2562=$r1, var3566=$i0, var553=c19, var649=$i25, var2788=r4, var366=r7, var2435=r6, var3610=r5, var1475=b20, var1301=b24, var3233=b23, var2604=$i21, var2685=i22, var3958=$i10, var2295=$i12, var2471=$i11, var1233=$i17, var3109=$z2}
; {com.google.gson.stream.JsonReader=var2408, r0=var571, $r1=var2562, $i0=var3566, c19=var553, $i25=var649, r4=var2788, r7=var366, r6=var2435, r5=var3610, b20=var1475, b24=var1301, b23=var3233, $i21=var2604, i22=var2685, $i10=var3958, $i12=var2295, $i11=var2471, $i17=var1233, $z2=var3109}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i10 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i12 = $i10 + i22;	$i11 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i12 < $i11 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i17 = i22 + 1;	$z2 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i17);	if $z2 != 0 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	return 0
;block_num 7