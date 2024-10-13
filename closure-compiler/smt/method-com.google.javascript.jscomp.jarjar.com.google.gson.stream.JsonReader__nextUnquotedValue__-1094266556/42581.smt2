(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1654894195 (var1473) Int)
(declare-fun limit/-1654894195 (var1473) Int)
(declare-fun buffer/-1654894195 (var1473) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun fillBuffer/945453390 (var1473 Int) Bool)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1473 var1473)
(declare-const null-String String)
(declare-const var2065 var1473) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var2065 null-var1473)))
(define-const var3236 String null-String) ; Statement: r8 = null 
(define-const var655 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var1336 Int (pos/-1654894195 var2065)) ; Statement: $i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var549 Int (+ var1336 var655)) ; Statement: $i15 = $i14 + i13 
(define-const var1264 Int (limit/-1654894195 var2065)) ; Statement: $i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (>= var549 var1264)) ; Cond: $i15 >= $i16 
(define-const var2650 (Array Int Int) (buffer/-1654894195 var2065)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var796 Int (getLength-Arr-Int-1 var2650)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if i13 >= $i0 goto (branch) 
(assert (not (>= var655 var796))) ; Negate: Cond: i13 >= $i0  
(define-const var972 Int (+ var655 1)) ; Statement: $i9 = i13 + 1 
(assert true)
(define-const var3042 Bool (fillBuffer/945453390 var2065 var972)) ; Statement: $z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3042 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (= null-String var3236))) ; Cond: null != r8 
(define-const var3957 (Array Int Int) (buffer/-1654894195 var2065)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2446 Int (pos/-1654894195 var2065)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert true)
(define-const var1148 String (append/-1748486345 var3236 var3957 var2446 var655)) ; Statement: $r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13) 
(declare-const var3236!1 String)
(assert (str.prefixof var3236 var3236!1))
(assert true)
(define-const var2237 String (toString/-2075883882 var1148)) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2036 Int (pos/-1654894195 var2065)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var1635 Int (+ var2036 var655)) ; Statement: $i6 = $i5 + i13 
(declare-const var2065!1 var1473)
(assert (not (= var2065!1 null-var1473)))
(assert (= (pos/-1654894195 var2065!1) var1635)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), getLength-Arr-Int-1=([char[]], int), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1473=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var2065=r0, var3236=r8, var655=i13, var1336=$i14, var549=$i15, var1264=$i16, var2650=$r1, var796=$i0, var972=$i9, var3042=$z1, var3957=$r3, var2446=$i4, var1148=$r4, var2237=$r9, var2036=$i5, var1635=$i6}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1473, r0=var2065, r8=var3236, i13=var655, $i14=var1336, $i15=var549, $i16=var1264, $r1=var2650, $i0=var796, $i9=var972, $z1=var3042, $r3=var3957, $i4=var2446, $r4=var1148, $r9=var2237, $i5=var2036, $i6=var1635}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = lengthof $r1;	if i13 >= $i0 goto (branch);	$i9 = i13 + 1;	$z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9);	if $z1 == 0 goto (branch);	if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13);	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7