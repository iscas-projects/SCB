(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var3205) (Array Int Int))
(declare-fun pos/1477480286 (var3205) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/1477480286 (var3205) Int)
(declare-fun fillBuffer/548664799 (var3205 Int) Bool)
(declare-fun peeked/1477480286 (var3205) Int)
(declare-const null-var3205 var3205)
(declare-const var1945 var3205) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var1945 null-var3205)))
(define-const var3978 (Array Int Int) (buffer/1477480286 var1945)) ; Statement: $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var1315 Int (pos/1477480286 var1945)) ; Statement: $i0 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var1886 Int (select var3978 var1315)) ; Statement: c19 = $r1[$i0] 
(define-const var2807 Int (cast-from-Int-to-Int var1886)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var2807 116)) ; Cond: $i25 == 116 
(define-const var3701 String "true") ; Statement: r4 = "true" 
(define-const var3329 String "true") ; Statement: r7 = "true" 
(define-const var3711 String "true") ; Statement: r6 = "true" 
(define-const var2350 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var381 Int 5) ; Statement: b20 = 5 
(define-const var1261 Int 5) ; Statement: b24 = 5 
(define-const var2927 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3003 Int (length/-134980193 var3329)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var345 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (>= var345 var3003)) ; Cond: i22 >= $i21 
(define-const var3855 Int (pos/1477480286 var1945)) ; Statement: $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var6 Int (+ var3855 var3003)) ; Statement: $i3 = $i1 + $i21 
(define-const var394 Int (limit/1477480286 var1945)) ; Statement: $i2 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 < $i2 goto $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (< var6 var394))) ; Negate: Cond: $i3 < $i2  
(define-const var34 Int (+ var3003 1)) ; Statement: $i9 = $i21 + 1 
(assert true)
(define-const var1705 Bool (fillBuffer/548664799 var1945 var34)) ; Statement: $z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9) 
 ; Statement: if $z1 == 0 goto $i7 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (= (ite var1705 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3323 Int (pos/1477480286 var1945)) ; Statement: $i7 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var939 Int (+ var3323 var3003)) ; Statement: $i8 = $i7 + $i21 
(declare-const var1945!1 var3205)
(assert (not (= var1945!1 null-var3205)))
(assert (= (pos/1477480286 var1945!1) var939)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = $i8 
(declare-const var1945!2 var3205)
(assert (not (= var1945!2 null-var3205)))
(assert (= (peeked/1477480286 var1945!2) var2927)) ; Statement: r0.<com.google.gson.stream.JsonReader: int peeked> = b23 
 ; Statement: return b24 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean), peeked/1477480286=([com.google.gson.stream.JsonReader], int)}
; {var3205=com.google.gson.stream.JsonReader, var1945=r0, var3978=$r1, var1315=$i0, var1886=c19, var2807=$i25, var3701=r4, var3329=r7, var3711=r6, var2350=r5, var381=b20, var1261=b24, var2927=b23, var3003=$i21, var345=i22, var3855=$i1, var6=$i3, var394=$i2, var34=$i9, var1705=$z1, var3323=$i7, var939=$i8}
; {com.google.gson.stream.JsonReader=var3205, r0=var1945, $r1=var3978, $i0=var1315, c19=var1886, $i25=var2807, r4=var3701, r7=var3329, r6=var3711, r5=var2350, b20=var381, b24=var1261, b23=var2927, $i21=var3003, i22=var345, $i1=var3855, $i3=var6, $i2=var394, $i9=var34, $z1=var1705, $i7=var3323, $i8=var939}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + $i21;	$i2 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i3 < $i2 goto $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i9 = $i21 + 1;	$z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9);	if $z1 == 0 goto $i7 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i7 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i8 = $i7 + $i21;	r0.<com.google.gson.stream.JsonReader: int pos> = $i8;	r0.<com.google.gson.stream.JsonReader: int peeked> = b23;	return b24
;block_num 7