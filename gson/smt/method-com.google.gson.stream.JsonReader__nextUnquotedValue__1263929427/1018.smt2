(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1477480286 (var2428) Int)
(declare-fun limit/1477480286 (var2428) Int)
(declare-fun buffer/1477480286 (var2428) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2428 var2428)
(declare-const null-String String)
(declare-const var529 var2428) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var529 null-var2428)))
(define-const var2983 String null-String) ; Statement: r8 = null 
(define-const var2217 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var3558 Int (pos/1477480286 var529)) ; Statement: $i14 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var448 Int (+ var3558 var2217)) ; Statement: $i15 = $i14 + i13 
(define-const var3746 Int (limit/1477480286 var529)) ; Statement: $i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (>= var448 var3746))) ; Negate: Cond: $i15 >= $i16  
(define-const var2076 (Array Int Int) (buffer/1477480286 var529)) ; Statement: $r7 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2780 Int (pos/1477480286 var529)) ; Statement: $i10 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var3884 Int (+ var2780 var2217)) ; Statement: $i11 = $i10 + i13 
(define-const var3017 Int (select var2076 var3884)) ; Statement: $c12 = $r7[$i11] 
(define-const var1281 Int (cast-from-Int-to-Int var3017)) ; Statement: $i17 = (int) $c12 
 ; Statement: lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; } 
(assert (and (= var1281 9) true)) ; Intersect: Cond: $i17 == 9  and Non Conditional 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (not (= null-String var2983)))) ; Negate: Cond: null != r8  
(define-const var2 String String-init) ; Statement: $r11 = new java.lang.String 
(define-const var773 String var2) ; Statement: $r9 = $r11 
(define-const var2973 (Array Int Int) (buffer/1477480286 var529)) ; Statement: $r5 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var330 Int (pos/1477480286 var529)) ; Statement: $i7 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert true)
;(assert (<init>/-253222812 var2 var2973 var330 var2217)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13) 

(declare-const var2!1 String)
(declare-const var2973!1 (Array Int Int))
(declare-const var330!1 Int)
(declare-const var2217!1 Int)
 ; Statement: goto [?= $i5 = r0.<com.google.gson.stream.JsonReader: int pos>] 
(assert true) ; Non Conditional
(define-const var170 Int (pos/1477480286 var529)) ; Statement: $i5 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var2847 Int (+ var170 var2217!1)) ; Statement: $i6 = $i5 + i13 
(declare-const var529!1 var2428)
(assert (not (= var529!1 null-var2428)))
(assert (= (pos/1477480286 var529!1) var2847)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2428=com.google.gson.stream.JsonReader, var529=r0, var2983=r8, var2217=i13, var3558=$i14, var448=$i15, var3746=$i16, var2076=$r7, var2780=$i10, var3884=$i11, var3017=$c12, var1281=$i17, var2=$r11, var773=$r9, var2973=$r5, var330=$i7, var170=$i5, var2847=$i6}
; {com.google.gson.stream.JsonReader=var2428, r0=var529, r8=var2983, i13=var2217, $i14=var3558, $i15=var448, $i16=var3746, $r7=var2076, $i10=var2780, $i11=var3884, $c12=var3017, $i17=var1281, $r11=var2, $r9=var773, $r5=var2973, $i7=var330, $i5=var170, $i6=var2847}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r7 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i10 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i11 = $i10 + i13;	$c12 = $r7[$i11];	$i17 = (int) $c12;	lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; };	goto [?= (branch)];	if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r11 = new java.lang.String;	$r9 = $r11;	$r5 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i7 = r0.<com.google.gson.stream.JsonReader: int pos>;	specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>($r5, $i7, i13);	goto [?= $i5 = r0.<com.google.gson.stream.JsonReader: int pos>];	$i5 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7