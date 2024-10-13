(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1654894195 (var2264) Int)
(declare-fun limit/-1654894195 (var2264) Int)
(declare-fun buffer/-1654894195 (var2264) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1748486345 (String (Array Int Int) Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2264 var2264)
(declare-const null-String String)
(declare-const var3891 var2264) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3891 null-var2264)))
(define-const var957 String null-String) ; Statement: r8 = null 
(define-const var3208 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var3735 Int (pos/-1654894195 var3891)) ; Statement: $i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var557 Int (+ var3735 var3208)) ; Statement: $i15 = $i14 + i13 
(define-const var3473 Int (limit/-1654894195 var3891)) ; Statement: $i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit> 
 ; Statement: if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (>= var557 var3473))) ; Negate: Cond: $i15 >= $i16  
(define-const var1096 (Array Int Int) (buffer/-1654894195 var3891)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var655 Int (pos/-1654894195 var3891)) ; Statement: $i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var3449 Int (+ var655 var3208)) ; Statement: $i11 = $i10 + i13 
(define-const var1010 Int (select var1096 var3449)) ; Statement: $c12 = $r7[$i11] 
(define-const var3284 Int (cast-from-Int-to-Int var1010)) ; Statement: $i17 = (int) $c12 
 ; Statement: lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; } 
(assert (and (= var3284 9) true)) ; Intersect: Cond: $i17 == 9  and Non Conditional 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(assert (not (= null-String var957))) ; Cond: null != r8 
(define-const var1476 (Array Int Int) (buffer/-1654894195 var3891)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var2987 Int (pos/-1654894195 var3891)) ; Statement: $i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(assert true)
(define-const var3377 String (append/-1748486345 var957 var1476 var2987 var3208)) ; Statement: $r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13) 
(declare-const var957!1 String)
(assert (str.prefixof var957 var957!1))
(assert true)
(define-const var1727 String (toString/-2075883882 var3377)) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2716 Int (pos/-1654894195 var3891)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> 
(define-const var977 Int (+ var2716 var3208)) ; Statement: $i6 = $i5 + i13 
(declare-const var3891!1 var2264)
(assert (not (= var3891!1 null-var2264)))
(assert (= (pos/-1654894195 var3891!1) var977)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), limit/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], int), buffer/-1654894195=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], char[]), cast-from-Int-to-Int=([char], int), append/-1748486345=([java.lang.StringBuilder, char[], int, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2264=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3891=r0, var957=r8, var3208=i13, var3735=$i14, var557=$i15, var3473=$i16, var1096=$r7, var655=$i10, var3449=$i11, var1010=$c12, var3284=$i17, var1476=$r3, var2987=$i4, var3377=$r4, var1727=$r9, var2716=$i5, var977=$i6}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2264, r0=var3891, r8=var957, i13=var3208, $i14=var3735, $i15=var557, $i16=var3473, $r7=var1096, $i10=var655, $i11=var3449, $c12=var1010, $i17=var3284, $r3=var1476, $i4=var2987, $r4=var3377, $r9=var1727, $i5=var2716, $i6=var977}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r8 = null;	i13 = 0;	$i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i15 = $i14 + i13;	$i16 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int limit>;	if $i15 >= $i16 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i11 = $i10 + i13;	$c12 = $r7[$i11];	$i17 = (int) $c12;	lookupswitch($i17) {     case 9: goto goto [?= (branch)];     case 10: goto goto [?= (branch)];     case 12: goto goto [?= (branch)];     case 13: goto goto [?= (branch)];     case 32: goto goto [?= (branch)];     case 35: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 44: goto goto [?= (branch)];     case 47: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 58: goto goto [?= (branch)];     case 59: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 61: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 91: goto goto [?= (branch)];     case 92: goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void checkLenient()>();     case 93: goto goto [?= (branch)];     case 123: goto goto [?= (branch)];     case 125: goto goto [?= (branch)];     default: goto i13 = i13 + 1; };	goto [?= (branch)];	if null != r8 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: char[] buffer>;	$i4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$r4 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>($r3, $i4, i13);	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$i5 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos>;	$i6 = $i5 + i13;	r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: int pos> = $i6;	return $r9
;block_num 7