(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var1932) (Array Int Int))
(declare-fun pos/-1654894195 (var1932) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/-1654894195 (var1932) Int)
(declare-fun fillBuffer/945453390 (var1932 Int) Bool)
(declare-fun peeked/-1654894195 (var1932) Int)
(declare-const null-var1932 var1932)
(declare-const var760 var1932) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var760 null-var1932)))
(define-const var504 (Array Int Int) (buffer/-1654894195 var760)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var1145 Int (pos/-1654894195 var760)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3128 Int (select var504 var1145)) ; Statement: c19 = $r1[$i0] 
(define-const var1613 Int (cast-from-Int-to-Int var3128)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var1613 116)) ; Cond: $i25 == 116 
(define-const var3628 String "true") ; Statement: r4 = "true" 
(define-const var89 String "true") ; Statement: r7 = "true" 
(define-const var3473 String "true") ; Statement: r6 = "true" 
(define-const var3148 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var438 Int 5) ; Statement: b20 = 5 
(define-const var2110 Int 5) ; Statement: b24 = 5 
(define-const var2999 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2066 Int (length/-134980193 var89)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var482 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (>= var482 var2066)) ; Cond: i22 >= $i21 
(define-const var3847 Int (pos/-1654894195 var760)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var1194 Int (+ var3847 var2066)) ; Statement: $i3 = $i1 + $i21 
(define-const var3552 Int (limit/-1654894195 var760)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 < $i2 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (< var1194 var3552))) ; Negate: Cond: $i3 < $i2  
(define-const var3899 Int (+ var2066 1)) ; Statement: $i9 = $i21 + 1 
(assert true)
(define-const var817 Bool (fillBuffer/945453390 var760 var3899)) ; Statement: $z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9) 
 ; Statement: if $z1 == 0 goto $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (= (ite var817 1 0) 0)) ; Cond: $z1 == 0 
(define-const var447 Int (pos/-1654894195 var760)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var352 Int (+ var447 var2066)) ; Statement: $i8 = $i7 + $i21 
(declare-const var760!1 var1932)
(assert (not (= var760!1 null-var1932)))
(assert (= (pos/-1654894195 var760!1) var352)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i8 
(declare-const var760!2 var1932)
(assert (not (= var760!2 null-var1932)))
(assert (= (peeked/-1654894195 var760!2) var2999)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = b23 
 ; Statement: return b24 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean), peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int)}
; {var1932=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var760=r0, var504=$r1, var1145=$i0, var3128=c19, var1613=$i25, var3628=r4, var89=r7, var3473=r6, var3148=r5, var438=b20, var2110=b24, var2999=b23, var2066=$i21, var482=i22, var3847=$i1, var1194=$i3, var3552=$i2, var3899=$i9, var817=$z1, var447=$i7, var352=$i8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1932, r0=var760, $r1=var504, $i0=var1145, c19=var3128, $i25=var1613, r4=var3628, r7=var89, r6=var3473, r5=var3148, b20=var438, b24=var2110, b23=var2999, $i21=var2066, i22=var482, $i1=var3847, $i3=var1194, $i2=var3552, $i9=var3899, $z1=var817, $i7=var447, $i8=var352}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + $i21;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i3 < $i2 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i9 = $i21 + 1;	$z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9);	if $z1 == 0 goto $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i8 = $i7 + $i21;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i8;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = b23;	return b24
;block_num 7