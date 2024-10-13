(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort var2263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var3274) (Array Int Int))
(declare-fun pos/-1654894195 (var3274) Int)
(declare-fun limit/-1654894195 (var3274) Int)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(declare-fun fillBuffer/945453390 (var3274 Int) Bool)
(declare-fun syntaxError/375231143 (var3274 String) var2263)
(declare-const null-var3274 var3274)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2045 var3274) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2045 null-var3274)))
(declare-const var2157 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var2157 null-Int)))
(define-const var3038 (Array Int Int) (buffer/-1654894195 var2045)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2284 String null-String) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var1291 Int (pos/-1654894195 var2045)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var2687 Int var1291) ; Statement: i15 = $i1 
(define-const var1382 Int (limit/-1654894195 var2045)) ; Statement: i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
(define-const var1043 Int var1291) ; Statement: i17 = $i1 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i16 goto (branch) 
(assert (>= var2687 var1382)) ; Cond: i15 >= i16 
 ; Statement: if r7 != null goto $i0 = i15 - i17 
(assert (not (= var2284 null-String))) ; Cond: r7 != null 
(define-const var3987 Int (- var2687 var1043)) ; Statement: $i0 = i15 - i17 
(assert true)
;(assert (append/-1748486345 var2284 var3038 var1043 var3987)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, $i0) 
(declare-const var2284!1 String)
(assert (str.prefixof var2284 var2284!1))
(declare-const var2045!1 var3274)
(assert (not (= var2045!1 null-var3274)))
(assert (= (pos/-1654894195 var2045!1) var2687)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15 
(assert true)
(define-const var1467 Bool (fillBuffer/945453390 var2045!1 1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1) 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var1467 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1391 var2263 (syntaxError/375231143 var2045!1 "Unterminated string")) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.io.IOException syntaxError(java.lang.String)>("Unterminated string") 
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean), syntaxError/375231143=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, java.lang.String], java.io.IOException)}
; {var3274=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2045=r0, var2157=c5, var3038=r1, var2284=r7, var1291=$i1, var2687=i15, var1382=i16, var1043=i17, var3987=$i0, var1467=$z0, var2263=java.io.IOException, var1391=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var3274, r0=var2045, c5=var2157, r1=var3038, r7=var2284, $i1=var1291, i15=var2687, i16=var1382, i17=var1043, $i0=var3987, $z0=var1467, java.io.IOException=var2263, $r2=var1391}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	c5 := @parameter0: char;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	r7 = null;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	i15 = $i1;	i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	i17 = $i1;	if i15 >= i16 goto (branch);	if r7 != null goto $i0 = i15 - i17;	$i0 = i15 - i17;	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, $i0);	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15;	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>(1);	if $z0 != 0 goto (branch);	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.io.IOException syntaxError(java.lang.String)>("Unterminated string");	throw $r2
;block_num 6