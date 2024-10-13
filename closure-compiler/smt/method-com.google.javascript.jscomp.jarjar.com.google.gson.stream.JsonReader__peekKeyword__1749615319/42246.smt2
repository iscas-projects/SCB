(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var2637) (Array Int Int))
(declare-fun pos/-1654894195 (var2637) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/-1654894195 (var2637) Int)
(declare-fun isLiteral/169292573 (var2637 Int) Bool)
(declare-fun peeked/-1654894195 (var2637) Int)
(declare-const null-var2637 var2637)
(declare-const var2124 var2637) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2124 null-var2637)))
(define-const var3181 (Array Int Int) (buffer/-1654894195 var2124)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var1134 Int (pos/-1654894195 var2124)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3736 Int (select var3181 var1134)) ; Statement: c19 = $r1[$i0] 
(define-const var2256 Int (cast-from-Int-to-Int var3736)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var2256 116)) ; Cond: $i25 == 116 
(define-const var1672 String "true") ; Statement: r4 = "true" 
(define-const var317 String "true") ; Statement: r7 = "true" 
(define-const var17 String "true") ; Statement: r6 = "true" 
(define-const var1257 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var3641 Int 5) ; Statement: b20 = 5 
(define-const var213 Int 5) ; Statement: b24 = 5 
(define-const var2956 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3386 Int (length/-134980193 var317)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var2294 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (>= var2294 var3386)) ; Cond: i22 >= $i21 
(define-const var3329 Int (pos/-1654894195 var2124)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var1609 Int (+ var3329 var3386)) ; Statement: $i3 = $i1 + $i21 
(define-const var2417 Int (limit/-1654894195 var2124)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 < $i2 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (< var1609 var2417)) ; Cond: $i3 < $i2 
(define-const var2424 (Array Int Int) (buffer/-1654894195 var2124)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2100 Int (pos/-1654894195 var2124)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var2514 Int (+ var2100 var3386)) ; Statement: $i5 = $i4 + $i21 
(define-const var1928 Int (select var2424 var2514)) ; Statement: $c6 = $r2[$i5] 
(assert true)
(define-const var240 Bool (isLiteral/169292573 var2124 var1928)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6) 
 ; Statement: if $z0 == 0 goto $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (= (ite var240 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1227 Int (pos/-1654894195 var2124)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3327 Int (+ var1227 var3386)) ; Statement: $i8 = $i7 + $i21 
(declare-const var2124!1 var2637)
(assert (not (= var2124!1 null-var2637)))
(assert (= (pos/-1654894195 var2124!1) var3327)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i8 
(declare-const var2124!2 var2637)
(assert (not (= var2124!2 null-var2637)))
(assert (= (peeked/-1654894195 var2124!2) var2956)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = b23 
 ; Statement: return b24 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), isLiteral/169292573=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, char], boolean), peeked/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int)}
; {var2637=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2124=r0, var3181=$r1, var1134=$i0, var3736=c19, var2256=$i25, var1672=r4, var317=r7, var17=r6, var1257=r5, var3641=b20, var213=b24, var2956=b23, var3386=$i21, var2294=i22, var3329=$i1, var1609=$i3, var2417=$i2, var2424=$r2, var2100=$i4, var2514=$i5, var1928=$c6, var240=$z0, var1227=$i7, var3327=$i8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2637, r0=var2124, $r1=var3181, $i0=var1134, c19=var3736, $i25=var2256, r4=var1672, r7=var317, r6=var17, r5=var1257, b20=var3641, b24=var213, b23=var2956, $i21=var3386, i22=var2294, $i1=var3329, $i3=var1609, $i2=var2417, $r2=var2424, $i4=var2100, $i5=var2514, $c6=var1928, $z0=var240, $i7=var1227, $i8=var3327}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + $i21;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i3 < $i2 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i5 = $i4 + $i21;	$c6 = $r2[$i5];	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6);	if $z0 == 0 goto $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i8 = $i7 + $i21;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i8;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int peeked> = b23;	return b24
;block_num 7