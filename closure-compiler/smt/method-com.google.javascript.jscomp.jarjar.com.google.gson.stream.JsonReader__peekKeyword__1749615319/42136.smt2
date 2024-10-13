(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var416) (Array Int Int))
(declare-fun pos/-1654894195 (var416) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun limit/-1654894195 (var416) Int)
(declare-fun fillBuffer/945453390 (var416 Int) Bool)
(declare-const null-var416 var416)
(declare-const var64 var416) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var64 null-var416)))
(define-const var3988 (Array Int Int) (buffer/-1654894195 var64)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var3854 Int (pos/-1654894195 var64)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var2144 Int (select var3988 var3854)) ; Statement: c19 = $r1[$i0] 
(define-const var1923 Int (cast-from-Int-to-Int var2144)) ; Statement: $i25 = (int) c19 
 ; Statement: if $i25 == 116 goto r4 = "true" 
(assert (= var1923 116)) ; Cond: $i25 == 116 
(define-const var238 String "true") ; Statement: r4 = "true" 
(define-const var3623 String "true") ; Statement: r7 = "true" 
(define-const var1574 String "true") ; Statement: r6 = "true" 
(define-const var3156 String "TRUE") ; Statement: r5 = "TRUE" 
(define-const var2801 Int 5) ; Statement: b20 = 5 
(define-const var1870 Int 5) ; Statement: b24 = 5 
(define-const var2372 Int 5) ; Statement: b23 = 5 
 ; Statement: goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1978 Int (length/-134980193 var3623)) ; Statement: $i21 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var2681 Int 1) ; Statement: i22 = 1 
(assert true) ; Non Conditional
 ; Statement: if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (not (>= var2681 var1978))) ; Negate: Cond: i22 >= $i21  
(define-const var127 Int (pos/-1654894195 var64)) ; Statement: $i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var93 Int (+ var127 var2681)) ; Statement: $i12 = $i10 + i22 
(define-const var879 Int (limit/-1654894195 var64)) ; Statement: $i11 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i12 < $i11 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (< var93 var879))) ; Negate: Cond: $i12 < $i11  
(define-const var522 Int (+ var2681 1)) ; Statement: $i17 = i22 + 1 
(assert true)
(define-const var2398 Bool (fillBuffer/945453390 var64 var522)) ; Statement: $z2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i17) 
 ; Statement: if $z2 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (not (= (ite var2398 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean)}
; {var416=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var64=r0, var3988=$r1, var3854=$i0, var2144=c19, var1923=$i25, var238=r4, var3623=r7, var1574=r6, var3156=r5, var2801=b20, var1870=b24, var2372=b23, var1978=$i21, var2681=i22, var127=$i10, var93=$i12, var879=$i11, var522=$i17, var2398=$z2}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var416, r0=var64, $r1=var3988, $i0=var3854, c19=var2144, $i25=var1923, r4=var238, r7=var3623, r6=var1574, r5=var3156, b20=var2801, b24=var1870, b23=var2372, $i21=var1978, i22=var2681, $i10=var127, $i12=var93, $i11=var879, $i17=var522, $z2=var2398}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	c19 = $r1[$i0];	$i25 = (int) c19;	if $i25 == 116 goto r4 = "true";	r4 = "true";	r7 = "true";	r6 = "true";	r5 = "TRUE";	b20 = 5;	b24 = 5;	b23 = 5;	goto [?= $i21 = virtualinvoke r7.<java.lang.String: int length()>()];	$i21 = virtualinvoke r7.<java.lang.String: int length()>();	i22 = 1;	if i22 >= $i21 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i12 = $i10 + i22;	$i11 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i12 < $i11 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i17 = i22 + 1;	$z2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i17);	if $z2 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	return 0
;block_num 7