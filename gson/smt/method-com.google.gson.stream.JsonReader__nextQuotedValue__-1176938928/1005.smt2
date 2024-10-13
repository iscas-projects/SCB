(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1238 0)
(declare-sort var568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var1238) (Array Int Int))
(declare-fun pos/1477480286 (var1238) Int)
(declare-fun limit/1477480286 (var1238) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-fun fillBuffer/548664799 (var1238 Int) Bool)
(declare-fun syntaxError/-1937863688 (var1238 String) var568)
(declare-const null-var1238 var1238)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3142 var1238) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var3142 null-var1238)))
(declare-const var2487 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var2487 null-Int)))
(define-const var2110 (Array Int Int) (buffer/1477480286 var3142)) ; Statement: r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var171 String null-String) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var3063 Int (pos/1477480286 var3142)) ; Statement: $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var3040 Int var3063) ; Statement: i15 = $i1 
(define-const var2223 Int (limit/1477480286 var3142)) ; Statement: i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
(define-const var1192 Int var3063) ; Statement: i17 = $i1 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i16 goto (branch) 
(assert (>= var3040 var2223)) ; Cond: i15 >= i16 
 ; Statement: if r7 != null goto $i0 = i15 - i17 
(assert (not (= var171 null-String))) ; Cond: r7 != null 
(define-const var621 Int (- var3040 var1192)) ; Statement: $i0 = i15 - i17 
(assert true)
;(assert (append/-1748486345 var171 var2110 var1192 var621)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, $i0) 
(declare-const var171!1 String)
(assert (str.prefixof var171 var171!1))
(declare-const var3142!1 var1238)
(assert (not (= var3142!1 null-var1238)))
(assert (= (pos/1477480286 var3142!1) var3040)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = i15 
(assert true)
(define-const var2672 Bool (fillBuffer/548664799 var3142!1 1)) ; Statement: $z0 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1) 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var2672 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var687 var568 (syntaxError/-1937863688 var3142!1 "Unterminated string")) ; Statement: $r2 = specialinvoke r0.<com.google.gson.stream.JsonReader: java.io.IOException syntaxError(java.lang.String)>("Unterminated string") 
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean), syntaxError/-1937863688=([com.google.gson.stream.JsonReader, java.lang.String], java.io.IOException)}
; {var1238=com.google.gson.stream.JsonReader, var3142=r0, var2487=c5, var2110=r1, var171=r7, var3063=$i1, var3040=i15, var2223=i16, var1192=i17, var621=$i0, var2672=$z0, var568=java.io.IOException, var687=$r2}
; {com.google.gson.stream.JsonReader=var1238, r0=var3142, c5=var2487, r1=var2110, r7=var171, $i1=var3063, i15=var3040, i16=var2223, i17=var1192, $i0=var621, $z0=var2672, java.io.IOException=var568, $r2=var687}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	c5 := @parameter0: char;	r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	r7 = null;	$i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	i15 = $i1;	i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	i17 = $i1;	if i15 >= i16 goto (branch);	if r7 != null goto $i0 = i15 - i17;	$i0 = i15 - i17;	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, $i0);	r0.<com.google.gson.stream.JsonReader: int pos> = i15;	$z0 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1);	if $z0 != 0 goto (branch);	$r2 = specialinvoke r0.<com.google.gson.stream.JsonReader: java.io.IOException syntaxError(java.lang.String)>("Unterminated string");	throw $r2
;block_num 6