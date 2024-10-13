(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var60 0)
(declare-sort var1919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1654894195 (var60) Int)
(declare-fun limit/-1654894195 (var60) Int)
(declare-fun fillBuffer/945453390 (var60 Int) Bool)
(declare-const null-var60 var60)
(declare-const null-String String)
(declare-const var1400 var60) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var1400 null-var60)))
(declare-const var2812 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2812 null-String)))
(assert true)
(define-const var1561 Int (length/-134980193 var2812)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var484 Int (pos/-1654894195 var1400)) ; Statement: $i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3345 Int (+ var484 var1561)) ; Statement: $i3 = $i1 + i0 
(define-const var294 Int (limit/-1654894195 var1400)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i3 <= $i2 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (<= var3345 var294))) ; Negate: Cond: $i3 <= $i2  
(assert true)
(define-const var2726 Bool (fillBuffer/945453390 var1400 var1561)) ; Statement: $z0 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(i0) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var2726 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean)}
; {var60=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var1400=r1, var2812=r0, var1919=null_type, var1561=i0, var484=$i1, var3345=$i3, var294=$i2, var2726=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var60, r1=var1400, r0=var2812, null_type=var1919, i0=var1561, $i1=var484, $i3=var3345, $i2=var294, $z0=var2726}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i3 = $i1 + i0;	$i2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i3 <= $i2 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$z0 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(i0);	if $z0 == 0 goto return 0;	return 0
;block_num 4