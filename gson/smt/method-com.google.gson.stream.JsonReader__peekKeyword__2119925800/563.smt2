(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var1818) (Array Int Int))
(declare-fun pos/1477480286 (var1818) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/1477480286 (var1818) Int)
(declare-fun isLiteral/-227496018 (var1818 Int) Bool)
(declare-const null-var1818 var1818)
(declare-const var2133 var1818) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2133 null-var1818)))
(define-const var3862 (Array Int Int) (buffer/1477480286 var2133)) ; Statement: $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2083 Int (pos/1477480286 var2133)) ; Statement: $i0 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var1033 Int (select var3862 var2083)) ; Statement: c19 = $r1[$i0] 
(define-const var222 Int (cast-from-Int-to-Int var1033)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var222 116)) ; Cond: $i25 == 116 
(define-const var2060 String "true") ; Statement: r4 = "true" 
(define-const var3924 String "true") ; Statement: r7 = "true" 
(define-const var1102 String "true") ; Statement: r6 = "true" 
(define-const var3545 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var3717 Int 5) ; Statement: b20 = 5 
(define-const var3512 Int 5) ; Statement: b24 = 5 
(define-const var421 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var893 Int (length/-134980193 var3924)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var1934 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (>= var1934 var893)) ; Cond: i22 >= $i21 
(define-const var1926 Int (pos/1477480286 var2133)) ; Statement: $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var2617 Int (+ var1926 var893)) ; Statement: $i3 = $i1 + $i21 
(define-const var1809 Int (limit/1477480286 var2133)) ; Statement: $i2 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 < $i2 goto $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (< var2617 var1809)) ; Cond: $i3 < $i2 
(define-const var287 (Array Int Int) (buffer/1477480286 var2133)) ; Statement: $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2619 Int (pos/1477480286 var2133)) ; Statement: $i4 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var3990 Int (+ var2619 var893)) ; Statement: $i5 = $i4 + $i21 
(define-const var3189 Int (select var287 var3990)) ; Statement: $c6 = $r2[$i5] 
(assert true)
(define-const var3197 Bool (isLiteral/-227496018 var2133 var3189)) ; Statement: $z0 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6) 
 ; Statement: if $z0 == 0 goto $i7 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (not (= (ite var3197 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), isLiteral/-227496018=([com.google.gson.stream.JsonReader, char], boolean)}
; {var1818=com.google.gson.stream.JsonReader, var2133=r0, var3862=$r1, var2083=$i0, var1033=c19, var222=$i25, var2060=r4, var3924=r7, var1102=r6, var3545=r5, var3717=b20, var3512=b24, var421=b23, var893=$i21, var1934=i22, var1926=$i1, var2617=$i3, var1809=$i2, var287=$r2, var2619=$i4, var3990=$i5, var3189=$c6, var3197=$z0}
; {com.google.gson.stream.JsonReader=var1818, r0=var2133, $r1=var3862, $i0=var2083, c19=var1033, $i25=var222, r4=var2060, r7=var3924, r6=var1102, r5=var3545, b20=var3717, b24=var3512, b23=var421, $i21=var893, i22=var1934, $i1=var1926, $i3=var2617, $i2=var1809, $r2=var287, $i4=var2619, $i5=var3990, $c6=var3189, $z0=var3197}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + $i21;	$i2 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i3 < $i2 goto $r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r2 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i5 = $i4 + $i21;	$c6 = $r2[$i5];	$z0 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6);	if $z0 == 0 goto $i7 = r0.<com.google.gson.stream.JsonReader: int pos>;	return 0
;block_num 7