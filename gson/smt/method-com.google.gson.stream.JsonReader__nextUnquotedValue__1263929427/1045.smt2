(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1477480286 (var3746) Int)
(declare-fun limit/1477480286 (var3746) Int)
(declare-fun buffer/1477480286 (var3746) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3746 var3746)
(declare-const null-String String)
(declare-const var2070 var3746) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2070 null-var3746)))
(define-const var1758 String null-String) ; Statement: r8 = null 
(define-const var1420 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var2407 Int (pos/1477480286 var2070)) ; Statement: $i14 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var420 Int (+ var2407 var1420)) ; Statement: $i15 = $i14 + i13 
(define-const var2410 Int (limit/1477480286 var2070)) ; Statement: $i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (>= var420 var2410))) ; Negate: Cond: $i15 >= $i16  
(define-const var2050 (Array Int Int) (buffer/1477480286 var2070)) ; Statement: $r7 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var271 Int (pos/1477480286 var2070)) ; Statement: $i10 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var627 Int (+ var271 var1420)) ; Statement: $i11 = $i10 + i13 
(define-const var3514 Int (select var2050 var627)) ; Statement: $c12 = $r7[$i11] 
(define-const var412 Int (cast-from-Int-to-Int var3514)) ; Statement: $i17 = (int) $c12 
 ; Statement: lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; } 
(assert (and (= var412 9) true)) ; Intersect: Cond: $i17 == 9  and Non Conditional 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (= null-String var1758))) ; Cond: null != r8 
(define-const var839 (Array Int Int) (buffer/1477480286 var2070)) ; Statement: $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var722 Int (pos/1477480286 var2070)) ; Statement: $i4 = r0.<com.google.gson.stream.JsonReader: int pos> 
(assert true)
(define-const var963 String (append/-1748486345 var1758 var839 var722 var1420)) ; Statement: $r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13) 
(declare-const var1758!1 String)
(assert (str.prefixof var1758 var1758!1))
(assert true)
(define-const var1178 String (toString/-2075883882 var963)) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var510 Int (pos/1477480286 var2070)) ; Statement: $i5 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var3904 Int (+ var510 var1420)) ; Statement: $i6 = $i5 + i13 
(declare-const var2070!1 var3746)
(assert (not (= var2070!1 null-var3746)))
(assert (= (pos/1477480286 var2070!1) var3904)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), cast-from-Int-to-Int=([char], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3746=com.google.gson.stream.JsonReader, var2070=r0, var1758=r8, var1420=i13, var2407=$i14, var420=$i15, var2410=$i16, var2050=$r7, var271=$i10, var627=$i11, var3514=$c12, var412=$i17, var839=$r3, var722=$i4, var963=$r4, var1178=$r9, var510=$i5, var3904=$i6}
; {com.google.gson.stream.JsonReader=var3746, r0=var2070, r8=var1758, i13=var1420, $i14=var2407, $i15=var420, $i16=var2410, $r7=var2050, $i10=var271, $i11=var627, $c12=var3514, $i17=var412, $r3=var839, $i4=var722, $r4=var963, $r9=var1178, $i5=var510, $i6=var3904}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r7 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i10 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i11 = $i10 + i13;	$c12 = $r7[$i11];	$i17 = (int) $c12;	lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; };	goto [?= (branch)];	if null != r8 goto $r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$r3 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.gson.stream.JsonReader: int pos>;	$r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13);	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$i5 = r0.<com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7