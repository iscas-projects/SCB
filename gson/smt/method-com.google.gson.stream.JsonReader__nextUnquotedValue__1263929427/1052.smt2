(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1477480286 (var1124) Int)
(declare-fun limit/1477480286 (var1124) Int)
(declare-fun buffer/1477480286 (var1124) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun fillBuffer/548664799 (var1124 Int) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1124 var1124)
(declare-const null-String String)
(declare-const var1330 var1124) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var1330 null-var1124)))
(define-const var2559 String null-String) ; Statement: r8 = null 
(define-const var577 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var3283 Int (pos/1477480286 var1330)) ; Statement: $i14 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var1659 Int (+ var3283 var577)) ; Statement: $i15 = $i14 + i13 
(define-const var2439 Int (limit/1477480286 var1330)) ; Statement: $i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (>= var1659 var2439)) ; Cond: $i15 >= $i16 
(define-const var1017 (Array Int Int) (buffer/1477480286 var1330)) ; Statement: $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2528 Int (getLength-Arr-Int-1 var1017)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if i13 >= $i0 goto (branch) 
(assert (not (>= var577 var2528))) ; Negate: Cond: i13 >= $i0  
(define-const var54 Int (+ var577 1)) ; Statement: $i9 = i13 + 1 
(assert true)
(define-const var1811 Bool (fillBuffer/548664799 var1330 var54)) ; Statement: $z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1811 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (not (= null-String var2559)))) ; Negate: Cond: null != r8  
(define-const var839 String String-init) ; Statement: $r11 = new java.lang.String 
(define-const var2276 String var839) ; Statement: $r9 = $r11 
(define-const var1465 (Array Int Int) (buffer/1477480286 var1330)) ; Statement: $r5 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var935 Int (pos/1477480286 var1330)) ; Statement: $i7 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert true)
;(assert (<init>/-253222812 var839 var1465 var935 var577)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13) 

(declare-const var839!1 String)
(declare-const var1465!1 (Array Int Int))
(declare-const var935!1 Int)
(declare-const var577!1 Int)
 ; Statement: goto [?= $i5 = r0.<com.google.gson.stream.JsonReader: int pos>] 
(assert true) ; Non Conditional
(define-const var1907 Int (pos/1477480286 var1330)) ; Statement: $i5 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var608 Int (+ var1907 var577!1)) ; Statement: $i6 = $i5 + i13 
(declare-const var1330!1 var1124)
(assert (not (= var1330!1 null-var1124)))
(assert (= (pos/1477480286 var1330!1) var608)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), getLength-Arr-Int-1=([char[]], int), fillBuffer/548664799=([com.google.gson.stream.JsonReader, int], boolean), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1124=com.google.gson.stream.JsonReader, var1330=r0, var2559=r8, var577=i13, var3283=$i14, var1659=$i15, var2439=$i16, var1017=$r1, var2528=$i0, var54=$i9, var1811=$z1, var839=$r11, var2276=$r9, var1465=$r5, var935=$i7, var1907=$i5, var608=$i6}
; {com.google.gson.stream.JsonReader=var1124, r0=var1330, r8=var2559, i13=var577, $i14=var3283, $i15=var1659, $i16=var2439, $r1=var1017, $i0=var2528, $i9=var54, $z1=var1811, $r11=var839, $r9=var2276, $r5=var1465, $i7=var935, $i5=var1907, $i6=var608}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = lengthof $r1;	if i13 >= $i0 goto (branch);	$i9 = i13 + 1;	$z1 = specialinvoke r0.<com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9);	if $z1 == 0 goto (branch);	if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r11 = new java.lang.String;	$r9 = $r11;	$r5 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i7 = r0.<com.google.gson.stream.JsonReader: int pos>;	specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13);	goto [?= $i5 = r0.<com.google.gson.stream.JsonReader: int pos>];	$i5 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7