(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1477480286 (var3914) Int)
(declare-fun limit/1477480286 (var3914) Int)
(declare-fun buffer/1477480286 (var3914) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun fillBuffer/548664799 (var3914 Int) Bool)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3914 var3914)
(declare-const null-String String)
(declare-const var2994 var3914) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2994 null-var3914)))
(define-const var1323 String null-String) ; Statement: r8 = null 
(define-const var2338 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var1493 Int (pos/1477480286 var2994)) ; Statement: $i14 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var3915 Int (+ var1493 var2338)) ; Statement: $i15 = $i14 + i13 
(define-const var2186 Int (limit/1477480286 var2994)) ; Statement: $i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (>= var3915 var2186)) ; Cond: $i15 >= $i16 
(define-const var3597 (Array Int Int) (buffer/1477480286 var2994)) ; Statement: $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var600 Int (getLength-Arr-Int-1 var3597)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if i13 >= $i0 goto (branch) 
(assert (not (>= var2338 var600))) ; Negate: Cond: i13 >= $i0  
(define-const var3276 Int (+ var2338 1)) ; Statement: $i9 = i13 + 1 
(assert true)
(define-const var2831 Bool (fillBuffer/548664799 var2994 var3276)) ; Statement: $z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var2831 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (= null-String var1323))) ; Cond: null != r8 
(define-const var224 (Array Int Int) (buffer/1477480286 var2994)) ; Statement: $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2703 Int (pos/1477480286 var2994)) ; Statement: $i4 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert true)
(define-const var1689 String (append/-1748486345 var1323 var224 var2703 var2338)) ; Statement: $r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13) 
(declare-const var1323!1 String)
(assert (str.prefixof var1323 var1323!1))
(assert true)
(define-const var516 String (toString/-2075883882 var1689)) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2612 Int (pos/1477480286 var2994)) ; Statement: $i5 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var372 Int (+ var2612 var2338)) ; Statement: $i6 = $i5 + i13 
(declare-const var2994!1 var3914)
(assert (not (= var2994!1 null-var3914)))
(assert (= (pos/1477480286 var2994!1) var372)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), getLength-Arr-Int-1=([char[]], int), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3914=com.google.gson.stream.JsonReader, var2994=r0, var1323=r8, var2338=i13, var1493=$i14, var3915=$i15, var2186=$i16, var3597=$r1, var600=$i0, var3276=$i9, var2831=$z1, var224=$r3, var2703=$i4, var1689=$r4, var516=$r9, var2612=$i5, var372=$i6}
; {com.google.gson.stream.JsonReader=var3914, r0=var2994, r8=var1323, i13=var2338, $i14=var1493, $i15=var3915, $i16=var2186, $r1=var3597, $i0=var600, $i9=var3276, $z1=var2831, $r3=var224, $i4=var2703, $r4=var1689, $r9=var516, $i5=var2612, $i6=var372}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = lengthof $r1;	if i13 >= $i0 goto (branch);	$i9 = i13 + 1;	$z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9);	if $z1 == 0 goto (branch);	if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.gson.stream.JsonReader: int pos>;	$r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13);	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$i5 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7