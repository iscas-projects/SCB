(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var2702) (Array Int Int))
(declare-fun pos/-1654894195 (var2702) Int)
(declare-fun limit/-1654894195 (var2702) Int)
(declare-fun fillBuffer/945453390 (var2702 Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2702 var2702)
(declare-const null-Bool Bool)
(declare-const var1018 var2702) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var1018 null-var2702)))
(declare-const var2589 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var2589 null-Bool)))
(define-const var770 (Array Int Int) (buffer/-1654894195 var1018)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2923 Int (pos/-1654894195 var1018)) ; Statement: i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var270 Int (limit/-1654894195 var1018)) ; Statement: i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
(assert true) ; Non Conditional
 ; Statement: if i15 != i16 goto $i0 = i15 
(assert (not (not (= var2923 var270)))) ; Negate: Cond: i15 != i16  
(declare-const var1018!1 var2702)
(assert (not (= var1018!1 null-var2702)))
(assert (= (pos/-1654894195 var1018!1) var2923)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15 
(assert true)
(define-const var1162 Bool (fillBuffer/945453390 var1018!1 1)) ; Statement: $z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1) 
 ; Statement: if $z1 != 0 goto i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert (not (not (= (ite var1162 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $i28 = (int) -1 
(assert (= (ite var2589 1 0) 0)) ; Cond: z2 == 0 
(define-const var1431 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i28 = (int) -1 
 ; Statement: return $i28 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean), cast-from-Int-to-Int=([int], int)}
; {var2702=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var1018=r0, var2589=z2, var770=r1, var2923=i15, var270=i16, var1162=$z1, var1431=$i28}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2702, r0=var1018, z2=var2589, r1=var770, i15=var2923, i16=var270, $z1=var1162, $i28=var1431}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	z2 := @parameter0: boolean;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if i15 != i16 goto $i0 = i15;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15;	$z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1);	if $z1 != 0 goto i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	goto [?= (branch)];	if z2 == 0 goto $i28 = (int) -1;	$i28 = (int) -1;	return $i28
;block_num 6