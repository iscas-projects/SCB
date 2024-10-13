(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var3153) (Array Int Int))
(declare-fun pos/1477480286 (var3153) Int)
(declare-fun limit/1477480286 (var3153) Int)
(declare-fun fillBuffer/548664799 (var3153 Int) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3153 var3153)
(declare-const null-Bool Bool)
(declare-const var2358 var3153) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2358 null-var3153)))
(declare-const var1712 Bool) ; Statement: z2 := @parameter0: boolean 
(assert (not (= var1712 null-Bool)))
(define-const var3416 (Array Int Int) (buffer/1477480286 var2358)) ; Statement: r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var198 Int (pos/1477480286 var2358)) ; Statement: i15 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var1693 Int (limit/1477480286 var2358)) ; Statement: i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
(assert true) ; Non Conditional
 ; Statement: if i15 != i16 goto $i0 = i15 
(assert (not (not (= var198 var1693)))) ; Negate: Cond: i15 != i16  
(declare-const var2358!1 var3153)
(assert (not (= var2358!1 null-var3153)))
(assert (= (pos/1477480286 var2358!1) var198)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = i15 
(assert true)
(define-const var1660 Bool (fillBuffer/548664799 var2358!1 1)) ; Statement: $z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1) 
 ; Statement: if $z1 != 0 goto i15 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert (not (not (= (ite var1660 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $i28 = (int) -1 
(assert (= (ite var1712 1 0) 0)) ; Cond: z2 == 0 
(define-const var1333 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i28 = (int) -1 
 ; Statement: return $i28 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean), cast-from-Int-to-Int=([int], int)}
; {var3153=com.google.gson.stream.JsonReader, var2358=r0, var1712=z2, var3416=r1, var198=i15, var1693=i16, var1660=$z1, var1333=$i28}
; {com.google.gson.stream.JsonReader=var3153, r0=var2358, z2=var1712, r1=var3416, i15=var198, i16=var1693, $z1=var1660, $i28=var1333}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	z2 := @parameter0: boolean;	r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	i15 = r0.<com.google.gson.stream.JsonReader: int pos>;	i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	if i15 != i16 goto $i0 = i15;	r0.<com.google.gson.stream.JsonReader: int pos> = i15;	$z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1);	if $z1 != 0 goto i15 = r0.<com.google.gson.stream.JsonReader: int pos>;	goto [?= (branch)];	if z2 == 0 goto $i28 = (int) -1;	$i28 = (int) -1;	return $i28
;block_num 6