(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var663) (Array Int Int))
(declare-fun pos/-1654894195 (var663) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/-1654894195 (var663) Int)
(declare-fun isLiteral/169292573 (var663 Int) Bool)
(declare-const null-var663 var663)
(declare-const var1196 var663) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var1196 null-var663)))
(define-const var1515 (Array Int Int) (buffer/-1654894195 var1196)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2825 Int (pos/-1654894195 var1196)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3756 Int (select var1515 var2825)) ; Statement: c19 = $r1[$i0] 
(define-const var285 Int (cast-from-Int-to-Int var3756)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var285 116)) ; Cond: $i25 == 116 
(define-const var1100 String "true") ; Statement: r4 = "true" 
(define-const var33 String "true") ; Statement: r7 = "true" 
(define-const var3163 String "true") ; Statement: r6 = "true" 
(define-const var1257 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var3077 Int 5) ; Statement: b20 = 5 
(define-const var3980 Int 5) ; Statement: b24 = 5 
(define-const var1461 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2153 Int (length/-134980193 var33)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var358 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (>= var358 var2153)) ; Cond: i22 >= $i21 
(define-const var2205 Int (pos/-1654894195 var1196)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var2525 Int (+ var2205 var2153)) ; Statement: $i3 = $i1 + $i21 
(define-const var1094 Int (limit/-1654894195 var1196)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 < $i2 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (< var2525 var1094)) ; Cond: $i3 < $i2 
(define-const var3162 (Array Int Int) (buffer/-1654894195 var1196)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var1360 Int (pos/-1654894195 var1196)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var2130 Int (+ var1360 var2153)) ; Statement: $i5 = $i4 + $i21 
(define-const var528 Int (select var3162 var2130)) ; Statement: $c6 = $r2[$i5] 
(assert true)
(define-const var2875 Bool (isLiteral/169292573 var1196 var528)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6) 
 ; Statement: if $z0 == 0 goto $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (not (= (ite var2875 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), isLiteral/169292573=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, char], boolean)}
; {var663=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var1196=r0, var1515=$r1, var2825=$i0, var3756=c19, var285=$i25, var1100=r4, var33=r7, var3163=r6, var1257=r5, var3077=b20, var3980=b24, var1461=b23, var2153=$i21, var358=i22, var2205=$i1, var2525=$i3, var1094=$i2, var3162=$r2, var1360=$i4, var2130=$i5, var528=$c6, var2875=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var663, r0=var1196, $r1=var1515, $i0=var2825, c19=var3756, $i25=var285, r4=var1100, r7=var33, r6=var3163, r5=var1257, b20=var3077, b24=var3980, b23=var1461, $i21=var2153, i22=var358, $i1=var2205, $i3=var2525, $i2=var1094, $r2=var3162, $i4=var1360, $i5=var2130, $c6=var528, $z0=var2875}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + $i21;	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i3 < $i2 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i5 = $i4 + $i21;	$c6 = $r2[$i5];	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean isLiteral(char)>($c6);	if $z0 == 0 goto $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	return 0
;block_num 7