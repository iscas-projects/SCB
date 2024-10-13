(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2383 0)
(declare-sort var2156 0)
(declare-sort var2162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ch/1287024874 (var2156) Int)
(declare-fun cast-from-var2383-to-var2156 (var2383) var2156)
(declare-fun offset/1287024874 (var2156) Int)
(declare-fun valueEscape/1287024874 (var2156) Bool)
(declare-fun bytes/956814203 (var2383) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2162-init () var2162)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2162 String) void)
(declare-const null-var2383 var2383)
(declare-const var1324 var2383) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var1324 null-var2383)))
(define-const var3362 Int (ch/1287024874 (cast-from-var2383-to-var2156 var1324))) ; Statement: c0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch> 
(define-const var1764 Int (offset/1287024874 (cast-from-var2383-to-var2156 var1324))) ; Statement: i66 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
(define-const var2169 Int var1764) ; Statement: i1 = i66 
(define-const var3369 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(declare-const var1324!1 var2383)
(assert (not (= var1324!1 null-var2383)))
(assert (= (valueEscape/1287024874 (cast-from-var2383-to-var2156 var1324!1)) (ite (= 1 0) true false))) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF8: boolean valueEscape> = 0 
(define-const var3170 (Array Int Int) (bytes/956814203 var1324!1)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var1046 Int 0) ; Statement: i67 = 0 
(assert true) ; Non Conditional
(define-const var3125 Int (select var3170 var1764)) ; Statement: $b4 = r1[i66] 
(define-const var2723 Int (cast-from-Int-to-Int var3125)) ; Statement: $i89 = (int) $b4 
 ; Statement: if $i89 != 92 goto $i92 = (int) $b4 
(assert (not (= var2723 92))) ; Cond: $i89 != 92 
(define-const var866 Int (cast-from-Int-to-Int var3125)) ; Statement: $i92 = (int) $b4 
 ; Statement: if $i92 < 0 goto $s95 = (short) $b4 
(assert (< var866 0)) ; Cond: $i92 < 0 
(define-const var3260 Int (cast-from-Int-to-Int var3125)) ; Statement: $s95 = (short) $b4 
(define-const var1870 Int (bv2nat (bvand ((_ int2bv 64) var3260) ((_ int2bv 64) 255)))) ; Statement: $s2 = $s95 & 255 
(define-const var462 Int (cast-from-Int-to-Int var1870)) ; Statement: $i96 = (int) $s2 
(define-const var2311 Int (div var462 (to_int (^ 2 4)))) ; Statement: $i3 = $i96 >> 4 
 ; Statement: tableswitch($i3) {     case 12: goto i66 = i66 + 2;     case 13: goto i66 = i66 + 2;     case 14: goto i66 = i66 + 3;     default: goto $i97 = (int) $b4; } 
(assert (and (not (= var2311 14)) (and (not (= var2311 13)) (and (not (= var2311 12)) true)))) ; Intersect: Negate: Cond: $i3 == 14   and Intersect: Negate: Cond: $i3 == 13   and Intersect: Negate: Cond: $i3 == 12   and Non Conditional   
(define-const var341 Int (cast-from-Int-to-Int var3125)) ; Statement: $i97 = (int) $b4 
(define-const var124 Int (div var341 (to_int (^ 2 3)))) ; Statement: $i5 = $i97 >> 3 
(define-const var2197 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i99 = (int) -2 
 ; Statement: if $i5 != $i99 goto $r25 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var124 var2197))) ; Cond: $i5 != $i99 
(define-const var3907 var2162 var2162-init) ; Statement: $r25 = new com.alibaba.fastjson2.JSONException 
(define-const var352 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var352)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var352!1 String)
(assert (= var352!1 ""))
(assert true)
(define-const var3090 String (append/672562846 var352!1 "malformed input around byte ")) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ") 
(declare-const var352!2 String)
(assert (= var352!2 (str.++ var352!1 "malformed input around byte ")))
(assert true)
(define-const var1159 String (append/-1001720160 var3090 var1764)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i66) 
(declare-const var3090!1 String)
(assert (str.prefixof var3090 var3090!1))
(assert true)
(define-const var3424 String (toString/-2075883882 var1159)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3907 var3424)) ; Statement: specialinvoke $r25.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var3907!1 var2162)
(declare-const var3424!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), cast-from-var2383-to-var2156=([com.alibaba.fastjson2.JSONReaderUTF8], com.alibaba.fastjson2.JSONReader), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), valueEscape/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), cast-from-Int-to-Int=([byte], int), var2162-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2383=com.alibaba.fastjson2.JSONReaderUTF8, var1324=r0, var2156=com.alibaba.fastjson2.JSONReader, var3362=c0, var1764=i66, var2169=i1, var3369=z2, var3170=r1, var1046=i67, var3125=$b4, var2723=$i89, var866=$i92, var3260=$s95, var1870=$s2, var462=$i96, var2311=$i3, var341=$i97, var124=$i5, var2197=$i99, var2162=com.alibaba.fastjson2.JSONException, var3907=$r25, var352=$r24, var3090=$r4, var1159=$r5, var3424=$r6}
; {com.alibaba.fastjson2.JSONReaderUTF8=var2383, r0=var1324, com.alibaba.fastjson2.JSONReader=var2156, c0=var3362, i66=var1764, i1=var2169, z2=var3369, r1=var3170, i67=var1046, $b4=var3125, $i89=var2723, $i92=var866, $s95=var3260, $s2=var1870, $i96=var462, $i3=var2311, $i97=var341, $i5=var124, $i99=var2197, com.alibaba.fastjson2.JSONException=var2162, $r25=var3907, $r24=var352, $r4=var3090, $r5=var1159, $r6=var3424}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	c0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch>;	i66 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	i1 = i66;	z2 = 1;	r0.<com.alibaba.fastjson2.JSONReaderUTF8: boolean valueEscape> = 0;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	i67 = 0;	$b4 = r1[i66];	$i89 = (int) $b4;	if $i89 != 92 goto $i92 = (int) $b4;	$i92 = (int) $b4;	if $i92 < 0 goto $s95 = (short) $b4;	$s95 = (short) $b4;	$s2 = $s95 & 255;	$i96 = (int) $s2;	$i3 = $i96 >> 4;	tableswitch($i3) {     case 12: goto i66 = i66 + 2;     case 13: goto i66 = i66 + 2;     case 14: goto i66 = i66 + 3;     default: goto $i97 = (int) $b4; };	$i97 = (int) $b4;	$i5 = $i97 >> 3;	$i99 = (int) -2;	if $i5 != $i99 goto $r25 = new com.alibaba.fastjson2.JSONException;	$r25 = new com.alibaba.fastjson2.JSONException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i66);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r25
;block_num 6