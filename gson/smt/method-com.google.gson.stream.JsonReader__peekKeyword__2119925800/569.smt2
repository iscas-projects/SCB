(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var2236) (Array Int Int))
(declare-fun pos/1477480286 (var2236) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/1477480286 (var2236) Int)
(declare-fun isLiteral/-227496018 (var2236 Int) Bool)
(declare-fun peeked/1477480286 (var2236) Int)
(declare-const null-var2236 var2236)
(declare-const var2606 var2236) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2606 null-var2236)))
(define-const var2028 (Array Int Int) (buffer/1477480286 var2606)) ; Statement: $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var3665 Int (pos/1477480286 var2606)) ; Statement: $i0 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var169 Int (select var2028 var3665)) ; Statement: c19 = $r1[$i0] 
(define-const var2157 Int (cast-from-Int-to-Int var169)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var2157 116)) ; Cond: $i25 == 116 
(define-const var3008 String "true") ; Statement: r4 = "true" 
(define-const var3312 String "true") ; Statement: r7 = "true" 
(define-const var300 String "true") ; Statement: r6 = "true" 
(define-const var1332 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var3725 Int 5) ; Statement: b20 = 5 
(define-const var1057 Int 5) ; Statement: b24 = 5 
(define-const var3317 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1039 Int (length/-134980193 var3312)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var3404 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (>= var3404 var1039)) ; Cond: i22 >= $i21 
(define-const var1187 Int (pos/1477480286 var2606)) ; Statement: $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var2964 Int (+ var1187 var1039)) ; Statement: $i3 = $i1 + $i21 
(define-const var2568 Int (limit/1477480286 var2606)) ; Statement: $i2 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 < $i2 goto $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (< var2964 var2568)) ; Cond: $i3 < $i2 
(define-const var3160 (Array Int Int) (buffer/1477480286 var2606)) ; Statement: $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2168 Int (pos/1477480286 var2606)) ; Statement: $i4 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var1387 Int (+ var2168 var1039)) ; Statement: $i5 = $i4 + $i21 
(define-const var3449 Int (select var3160 var1387)) ; Statement: $c6 = $r2[$i5] 
(assert true)
(define-const var3371 Bool (isLiteral/-227496018 var2606 var3449)) ; Statement: $z0 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6) 
 ; Statement: if $z0 == 0 goto $i7 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (= (ite var3371 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2972 Int (pos/1477480286 var2606)) ; Statement: $i7 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var825 Int (+ var2972 var1039)) ; Statement: $i8 = $i7 + $i21 
(declare-const var2606!1 var2236)
(assert (not (= var2606!1 null-var2236)))
(assert (= (pos/1477480286 var2606!1) var825)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = $i8 
(declare-const var2606!2 var2236)
(assert (not (= var2606!2 null-var2236)))
(assert (= (peeked/1477480286 var2606!2) var3317)) ; Statement: r0.<com.google.gson.stream.JsonReader: int peeked> = b23 
 ; Statement: return b24 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), isLiteral/-227496018=([com.google.gson.stream.JsonReader, char], boolean), peeked/1477480286=([com.google.gson.stream.JsonReader], int)}
; {var2236=com.google.gson.stream.JsonReader, var2606=r0, var2028=$r1, var3665=$i0, var169=c19, var2157=$i25, var3008=r4, var3312=r7, var300=r6, var1332=r5, var3725=b20, var1057=b24, var3317=b23, var1039=$i21, var3404=i22, var1187=$i1, var2964=$i3, var2568=$i2, var3160=$r2, var2168=$i4, var1387=$i5, var3449=$c6, var3371=$z0, var2972=$i7, var825=$i8}
; {com.google.gson.stream.JsonReader=var2236, r0=var2606, $r1=var2028, $i0=var3665, c19=var169, $i25=var2157, r4=var3008, r7=var3312, r6=var300, r5=var1332, b20=var3725, b24=var1057, b23=var3317, $i21=var1039, i22=var3404, $i1=var1187, $i3=var2964, $i2=var2568, $r2=var3160, $i4=var2168, $i5=var1387, $c6=var3449, $z0=var3371, $i7=var2972, $i8=var825}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + $i21;	$i2 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i3 < $i2 goto $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i5 = $i4 + $i21;	$c6 = $r2[$i5];	$z0 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6);	if $z0 == 0 goto $i7 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i7 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i8 = $i7 + $i21;	r0.<com.google.gson.stream.JsonReader: int pos> = $i8;	r0.<com.google.gson.stream.JsonReader: int peeked> = b23;	return b24
;block_num 7