(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var1670) (Array Int Int))
(declare-fun pos/-1654894195 (var1670) Int)
(declare-fun limit/-1654894195 (var1670) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1670 var1670)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2811 var1670) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2811 null-var1670)))
(declare-const var3827 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var3827 null-Int)))
(define-const var3859 (Array Int Int) (buffer/-1654894195 var2811)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var235 String null-String) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var2273 Int (pos/-1654894195 var2811)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3647 Int var2273) ; Statement: i15 = $i1 
(define-const var3335 Int (limit/-1654894195 var2811)) ; Statement: i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
(define-const var2666 Int var2273) ; Statement: i17 = $i1 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i16 goto (branch) 
(assert (not (>= var3647 var3335))) ; Negate: Cond: i15 >= i16  
(define-const var622 Int var3647) ; Statement: $i4 = i15 
(define-const var3647!1 Int (+ var3647 1)) ; Statement: i15 = i15 + 1 
(define-const var1163 Int (select var3859 var622)) ; Statement: c18 = r1[$i4] 
(define-const var1745 Int (cast-from-Int-to-Int var1163)) ; Statement: $i22 = (int) c18 
(define-const var1918 Int (cast-from-Int-to-Int var3827)) ; Statement: $i23 = (int) c5 
 ; Statement: if $i22 != $i23 goto $i24 = (int) c18 
(assert (not (not (= var1745 var1918)))) ; Negate: Cond: $i22 != $i23  
(declare-const var2811!1 var1670)
(assert (not (= var2811!1 null-var1670)))
(assert (= (pos/-1654894195 var2811!1) var3647!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15 
(define-const var1324 Int (- var3647!1 var2666)) ; Statement: $i14 = i15 - i17 
(define-const var288 Int (- var1324 1)) ; Statement: i19 = $i14 - 1 
 ; Statement: if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19) 
(assert (not (not (= var235 null-String)))) ; Negate: Cond: r7 != null  
(define-const var2771 String String-init) ; Statement: $r8 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2771 var3859 var2666 var288)) ; Statement: specialinvoke $r8.<java.lang.String: void <init>(char[],int,int)>(r1, i17, i19) 

(declare-const var2771!1 String)
(declare-const var3859!1 (Array Int Int))
(declare-const var2666!1 Int)
(declare-const var288!1 Int)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1670=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2811=r0, var3827=c5, var3859=r1, var235=r7, var2273=$i1, var3647=i15, var3335=i16, var2666=i17, var622=$i4, var1163=c18, var1745=$i22, var1918=$i23, var1324=$i14, var288=i19, var2771=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1670, r0=var2811, c5=var3827, r1=var3859, r7=var235, $i1=var2273, i15=var3647, i16=var3335, i17=var2666, $i4=var622, c18=var1163, $i22=var1745, $i23=var1918, $i14=var1324, i19=var288, $r8=var2771}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	c5 := @parameter0: char;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	r7 = null;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	i15 = $i1;	i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	i17 = $i1;	if i15 >= i16 goto (branch);	$i4 = i15;	i15 = i15 + 1;	c18 = r1[$i4];	$i22 = (int) c18;	$i23 = (int) c5;	if $i22 != $i23 goto $i24 = (int) c18;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15;	$i14 = i15 - i17;	i19 = $i14 - 1;	if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19);	$r8 = new java.lang.String;	specialinvoke $r8.<java.lang.String: void <init>(char[],int,int)>(r1, i17, i19);	return $r8
;block_num 6