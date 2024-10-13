(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1654894195 (var3393) Int)
(declare-fun limit/-1654894195 (var3393) Int)
(declare-fun buffer/-1654894195 (var3393) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3393 var3393)
(declare-const null-String String)
(declare-const var565 var3393) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var565 null-var3393)))
(define-const var718 String null-String) ; Statement: r8 = null 
(define-const var2088 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var618 Int (pos/-1654894195 var565)) ; Statement: $i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var1209 Int (+ var618 var2088)) ; Statement: $i15 = $i14 + i13 
(define-const var143 Int (limit/-1654894195 var565)) ; Statement: $i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (>= var1209 var143))) ; Negate: Cond: $i15 >= $i16  
(define-const var1650 (Array Int Int) (buffer/-1654894195 var565)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var226 Int (pos/-1654894195 var565)) ; Statement: $i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var934 Int (+ var226 var2088)) ; Statement: $i11 = $i10 + i13 
(define-const var1261 Int (select var1650 var934)) ; Statement: $c12 = $r7[$i11] 
(define-const var3865 Int (cast-from-Int-to-Int var1261)) ; Statement: $i17 = (int) $c12 
 ; Statement: lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; } 
(assert (and (= var3865 9) true)) ; Intersect: Cond: $i17 == 9  and Non Conditional 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (not (= null-String var718)))) ; Negate: Cond: null != r8  
(define-const var3069 String String-init) ; Statement: $r11 = new java.lang.String 
(define-const var3219 String var3069) ; Statement: $r9 = $r11 
(define-const var3004 (Array Int Int) (buffer/-1654894195 var565)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var3146 Int (pos/-1654894195 var565)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert true)
;(assert (<init>/-253222812 var3069 var3004 var3146 var2088)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13) 

(declare-const var3069!1 String)
(declare-const var3004!1 (Array Int Int))
(declare-const var3146!1 Int)
(declare-const var2088!1 Int)
 ; Statement: goto [?= $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>] 
(assert true) ; Non Conditional
(define-const var2114 Int (pos/-1654894195 var565)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var2486 Int (+ var2114 var2088!1)) ; Statement: $i6 = $i5 + i13 
(declare-const var565!1 var3393)
(assert (not (= var565!1 null-var3393)))
(assert (= (pos/-1654894195 var565!1) var2486)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3393=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var565=r0, var718=r8, var2088=i13, var618=$i14, var1209=$i15, var143=$i16, var1650=$r7, var226=$i10, var934=$i11, var1261=$c12, var3865=$i17, var3069=$r11, var3219=$r9, var3004=$r5, var3146=$i7, var2114=$i5, var2486=$i6}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var3393, r0=var565, r8=var718, i13=var2088, $i14=var618, $i15=var1209, $i16=var143, $r7=var1650, $i10=var226, $i11=var934, $c12=var1261, $i17=var3865, $r11=var3069, $r9=var3219, $r5=var3004, $i7=var3146, $i5=var2114, $i6=var2486}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i11 = $i10 + i13;	$c12 = $r7[$i11];	$i17 = (int) $c12;	lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; };	goto [?= (branch)];	if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r11 = new java.lang.String;	$r9 = $r11;	$r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13);	goto [?= $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>];	$i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7