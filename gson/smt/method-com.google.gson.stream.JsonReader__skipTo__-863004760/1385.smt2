(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2550 0)
(declare-sort var3452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/1477480286 (var2550) Int)
(declare-fun limit/1477480286 (var2550) Int)
(declare-fun fillBuffer/548664799 (var2550 Int) Bool)
(declare-const null-var2550 var2550)
(declare-const null-String String)
(declare-const var2117 var2550) ; Statement: r1 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2117 null-var2550)))
(declare-const var856 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var856 null-String)))
(assert true)
(define-const var1629 Int (length/-134980193 var856)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var3122 Int (pos/1477480286 var2117)) ; Statement: $i1 = r1.<com.google.gson.stream.JsonReader: int pos> 
(define-const var916 Int (+ var3122 var1629)) ; Statement: $i3 = $i1 + i0 
(define-const var3532 Int (limit/1477480286 var2117)) ; Statement: $i2 = r1.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 <= $i2 goto $r2 = r1.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (<= var916 var3532))) ; Negate: Cond: $i3 <= $i2  
(assert true)
(define-const var518 Bool (fillBuffer/548664799 var2117 var1629)) ; Statement: $z0 = specialinvoke r1.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(i0) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var518 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean)}
; {var2550=com.google.gson.stream.JsonReader, var2117=r1, var856=r0, var3452=null_type, var1629=i0, var3122=$i1, var916=$i3, var3532=$i2, var518=$z0}
; {com.google.gson.stream.JsonReader=var2550, r1=var2117, r0=var856, null_type=var3452, i0=var1629, $i1=var3122, $i3=var916, $i2=var3532, $z0=var518}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.gson.stream.JsonReader;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = r1.<com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + i0;	$i2 = r1.<com.google.gson.stream.JsonReader: int limit>;	if $i3 <= $i2 goto $r2 = r1.<com.google.gson.stream.JsonReader: char[] buffer>;	$z0 = specialinvoke r1.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(i0);	if $z0 == 0 goto return 0;	return 0
;block_num 4