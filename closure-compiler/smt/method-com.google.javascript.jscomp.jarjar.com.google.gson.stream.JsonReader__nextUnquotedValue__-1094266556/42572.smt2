(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1654894195 (var3953) Int)
(declare-fun limit/-1654894195 (var3953) Int)
(declare-fun buffer/-1654894195 (var3953) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun fillBuffer/945453390 (var3953 Int) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3953 var3953)
(declare-const null-String String)
(declare-const var3419 var3953) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3419 null-var3953)))
(define-const var2574 String null-String) ; Statement: r8 = null 
(define-const var3678 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var1735 Int (pos/-1654894195 var3419)) ; Statement: $i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var2939 Int (+ var1735 var3678)) ; Statement: $i15 = $i14 + i13 
(define-const var3332 Int (limit/-1654894195 var3419)) ; Statement: $i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (>= var2939 var3332)) ; Cond: $i15 >= $i16 
(define-const var2244 (Array Int Int) (buffer/-1654894195 var3419)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var737 Int (getLength-Arr-Int-1 var2244)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if i13 >= $i0 goto (branch) 
(assert (not (>= var3678 var737))) ; Negate: Cond: i13 >= $i0  
(define-const var437 Int (+ var3678 1)) ; Statement: $i9 = i13 + 1 
(assert true)
(define-const var331 Bool (fillBuffer/945453390 var3419 var437)) ; Statement: $z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var331 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (not (= null-String var2574)))) ; Negate: Cond: null != r8  
(define-const var1895 String String-init) ; Statement: $r11 = new java.lang.String 
(define-const var3030 String var1895) ; Statement: $r9 = $r11 
(define-const var57 (Array Int Int) (buffer/-1654894195 var3419)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var3589 Int (pos/-1654894195 var3419)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert true)
;(assert (<init>/-253222812 var1895 var57 var3589 var3678)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13) 

(declare-const var1895!1 String)
(declare-const var57!1 (Array Int Int))
(declare-const var3589!1 Int)
(declare-const var3678!1 Int)
 ; Statement: goto [?= $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>] 
(assert true) ; Non Conditional
(define-const var1198 Int (pos/-1654894195 var3419)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3047 Int (+ var1198 var3678!1)) ; Statement: $i6 = $i5 + i13 
(declare-const var3419!1 var3953)
(assert (not (= var3419!1 null-var3953)))
(assert (= (pos/-1654894195 var3419!1) var3047)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), getLength-Arr-Int-1=([char[]], int), fillBuffer/945453390=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, int], boolean), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3953=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3419=r0, var2574=r8, var3678=i13, var1735=$i14, var2939=$i15, var3332=$i16, var2244=$r1, var737=$i0, var437=$i9, var331=$z1, var1895=$r11, var3030=$r9, var57=$r5, var3589=$i7, var1198=$i5, var3047=$i6}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var3953, r0=var3419, r8=var2574, i13=var3678, $i14=var1735, $i15=var2939, $i16=var3332, $r1=var2244, $i0=var737, $i9=var437, $z1=var331, $r11=var1895, $r9=var3030, $r5=var57, $i7=var3589, $i5=var1198, $i6=var3047}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i0 = lengthof $r1;	if i13 >= $i0 goto (branch);	$i9 = i13 + 1;	$z1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: boolean fillBuffer(int)>($i9);	if $z1 == 0 goto (branch);	if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r11 = new java.lang.String;	$r9 = $r11;	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13);	goto [?= $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>];	$i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7