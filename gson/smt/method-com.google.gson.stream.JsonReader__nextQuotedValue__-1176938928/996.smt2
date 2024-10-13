(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var1701) (Array Int Int))
(declare-fun pos/1477480286 (var1701) Int)
(declare-fun limit/1477480286 (var1701) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1701 var1701)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3659 var1701) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var3659 null-var1701)))
(declare-const var2711 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var2711 null-Int)))
(define-const var3342 (Array Int Int) (buffer/1477480286 var3659)) ; Statement: r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2248 String null-String) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var1282 Int (pos/1477480286 var3659)) ; Statement: $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var162 Int var1282) ; Statement: i15 = $i1 
(define-const var3639 Int (limit/1477480286 var3659)) ; Statement: i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
(define-const var109 Int var1282) ; Statement: i17 = $i1 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i16 goto (branch) 
(assert (not (>= var162 var3639))) ; Negate: Cond: i15 >= i16  
(define-const var660 Int var162) ; Statement: $i4 = i15 
(define-const var162!1 Int (+ var162 1)) ; Statement: i15 = i15 + 1 
(define-const var926 Int (select var3342 var660)) ; Statement: c18 = r1[$i4] 
(define-const var3401 Int (cast-from-Int-to-Int var926)) ; Statement: $i22 = (int) c18 
(define-const var1302 Int (cast-from-Int-to-Int var2711)) ; Statement: $i23 = (int) c5 
 ; Statement: if $i22 != $i23 goto $i24 = (int) c18 
(assert (not (not (= var3401 var1302)))) ; Negate: Cond: $i22 != $i23  
(declare-const var3659!1 var1701)
(assert (not (= var3659!1 null-var1701)))
(assert (= (pos/1477480286 var3659!1) var162!1)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = i15 
(define-const var241 Int (- var162!1 var109)) ; Statement: $i14 = i15 - i17 
(define-const var3740 Int (- var241 1)) ; Statement: i19 = $i14 - 1 
 ; Statement: if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19) 
(assert (not (= var2248 null-String))) ; Cond: r7 != null 
(assert true)
;(assert (append/-1748486345 var2248 var3342 var109 var3740)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19) 
(declare-const var2248!1 String)
(assert (str.prefixof var2248 var2248!1))
(assert true)
(define-const var93 String (toString/-2075883882 var2248!1)) ; Statement: $r5 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1701=com.google.gson.stream.JsonReader, var3659=r0, var2711=c5, var3342=r1, var2248=r7, var1282=$i1, var162=i15, var3639=i16, var109=i17, var660=$i4, var926=c18, var3401=$i22, var1302=$i23, var241=$i14, var3740=i19, var93=$r5}
; {com.google.gson.stream.JsonReader=var1701, r0=var3659, c5=var2711, r1=var3342, r7=var2248, $i1=var1282, i15=var162, i16=var3639, i17=var109, $i4=var660, c18=var926, $i22=var3401, $i23=var1302, $i14=var241, i19=var3740, $r5=var93}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	c5 := @parameter0: char;	r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	r7 = null;	$i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	i15 = $i1;	i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	i17 = $i1;	if i15 >= i16 goto (branch);	$i4 = i15;	i15 = i15 + 1;	c18 = r1[$i4];	$i22 = (int) c18;	$i23 = (int) c5;	if $i22 != $i23 goto $i24 = (int) c18;	r0.<com.google.gson.stream.JsonReader: int pos> = i15;	$i14 = i15 - i17;	i19 = $i14 - 1;	if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19);	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19);	$r5 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 6