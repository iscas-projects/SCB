(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1654894195 (var1914) (Array Int Int))
(declare-fun pos/-1654894195 (var1914) Int)
(declare-fun limit/-1654894195 (var1914) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1914 var1914)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3035 var1914) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3035 null-var1914)))
(declare-const var138 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var138 null-Int)))
(define-const var2703 (Array Int Int) (buffer/-1654894195 var3035)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2903 String null-String) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var220 Int (pos/-1654894195 var3035)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var1276 Int var220) ; Statement: i15 = $i1 
(define-const var1132 Int (limit/-1654894195 var3035)) ; Statement: i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
(define-const var428 Int var220) ; Statement: i17 = $i1 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i16 goto (branch) 
(assert (not (>= var1276 var1132))) ; Negate: Cond: i15 >= i16  
(define-const var1753 Int var1276) ; Statement: $i4 = i15 
(define-const var1276!1 Int (+ var1276 1)) ; Statement: i15 = i15 + 1 
(define-const var2025 Int (select var2703 var1753)) ; Statement: c18 = r1[$i4] 
(define-const var1378 Int (cast-from-Int-to-Int var2025)) ; Statement: $i22 = (int) c18 
(define-const var3558 Int (cast-from-Int-to-Int var138)) ; Statement: $i23 = (int) c5 
 ; Statement: if $i22 != $i23 goto $i24 = (int) c18 
(assert (not (not (= var1378 var3558)))) ; Negate: Cond: $i22 != $i23  
(declare-const var3035!1 var1914)
(assert (not (= var3035!1 null-var1914)))
(assert (= (pos/-1654894195 var3035!1) var1276!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15 
(define-const var2686 Int (- var1276!1 var428)) ; Statement: $i14 = i15 - i17 
(define-const var3479 Int (- var2686 1)) ; Statement: i19 = $i14 - 1 
 ; Statement: if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19) 
(assert (not (= var2903 null-String))) ; Cond: r7 != null 
(assert true)
;(assert (append/-1748486345 var2903 var2703 var428 var3479)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19) 
(declare-const var2903!1 String)
(assert (str.prefixof var2903 var2903!1))
(assert true)
(define-const var376 String (toString/-2075883882 var2903!1)) ; Statement: $r5 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1914=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3035=r0, var138=c5, var2703=r1, var2903=r7, var220=$i1, var1276=i15, var1132=i16, var428=i17, var1753=$i4, var2025=c18, var1378=$i22, var3558=$i23, var2686=$i14, var3479=i19, var376=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1914, r0=var3035, c5=var138, r1=var2703, r7=var2903, $i1=var220, i15=var1276, i16=var1132, i17=var428, $i4=var1753, c18=var2025, $i22=var1378, $i23=var3558, $i14=var2686, i19=var3479, $r5=var376}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	c5 := @parameter0: char;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	r7 = null;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	i15 = $i1;	i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	i17 = $i1;	if i15 >= i16 goto (branch);	$i4 = i15;	i15 = i15 + 1;	c18 = r1[$i4];	$i22 = (int) c18;	$i23 = (int) c5;	if $i22 != $i23 goto $i24 = (int) c18;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = i15;	$i14 = i15 - i17;	i19 = $i14 - 1;	if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19);	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19);	$r5 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 6