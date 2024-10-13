(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1354 0)
(declare-sort var1900 0)
(declare-sort var39 0)
(declare-sort var2316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ch/1287024874 (var39) Int)
(declare-fun cast-from-var1354-to-var39 (var1354) var39)
(declare-fun offset/1287024874 (var39) Int)
(declare-fun valueEscape/1287024874 (var39) Bool)
(declare-fun bytes/956814203 (var1354) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2316-init () var2316)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2316 String) void)
(declare-const null-var1354 var1354)
(declare-const null-var1900 var1900)
(declare-const null-Bool Bool)
(declare-const var1123 var1354) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var1123 null-var1354)))
(declare-const var1058 var1900) ; Statement: r7 := @parameter0: com.alibaba.fastjson2.reader.ValueConsumer 
(assert (not (= var1058 null-var1900)))
(declare-const var3631 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3631 null-Bool)))
(define-const var1415 Int (ch/1287024874 (cast-from-var1354-to-var39 var1123))) ; Statement: c0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch> 
(define-const var3164 Int (offset/1287024874 (cast-from-var1354-to-var39 var1123))) ; Statement: i84 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
(define-const var2984 Int var3164) ; Statement: i1 = i84 
(declare-const var1123!1 var1354)
(assert (not (= var1123!1 null-var1354)))
(assert (= (valueEscape/1287024874 (cast-from-var1354-to-var39 var1123!1)) (ite (= 1 0) true false))) ; Statement: r0.<com.alibaba.fastjson2.JSONReaderUTF8: boolean valueEscape> = 0 
(define-const var1394 (Array Int Int) (bytes/956814203 var1123!1)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var2070 Int 0) ; Statement: i85 = 0 
(assert true) ; Non Conditional
(define-const var578 Int (select var1394 var3164)) ; Statement: $b4 = r1[i84] 
(define-const var1557 Int (cast-from-Int-to-Int var578)) ; Statement: $i98 = (int) $b4 
 ; Statement: if $i98 != 92 goto $i100 = (int) $b4 
(assert (not (= var1557 92))) ; Cond: $i98 != 92 
(define-const var50 Int (cast-from-Int-to-Int var578)) ; Statement: $i100 = (int) $b4 
 ; Statement: if $i100 < 0 goto $s103 = (short) $b4 
(assert (< var50 0)) ; Cond: $i100 < 0 
(define-const var320 Int (cast-from-Int-to-Int var578)) ; Statement: $s103 = (short) $b4 
(define-const var1760 Int (bv2nat (bvand ((_ int2bv 64) var320) ((_ int2bv 64) 255)))) ; Statement: $s2 = $s103 & 255 
(define-const var1241 Int (cast-from-Int-to-Int var1760)) ; Statement: $i104 = (int) $s2 
(define-const var3449 Int (div var1241 (to_int (^ 2 4)))) ; Statement: $i3 = $i104 >> 4 
 ; Statement: tableswitch($i3) {     case 12: goto i84 = i84 + 2;     case 13: goto i84 = i84 + 2;     case 14: goto i84 = i84 + 3;     default: goto $i105 = (int) $b4; } 
(assert (and (not (= var3449 14)) (and (not (= var3449 13)) (and (not (= var3449 12)) true)))) ; Intersect: Negate: Cond: $i3 == 14   and Intersect: Negate: Cond: $i3 == 13   and Intersect: Negate: Cond: $i3 == 12   and Non Conditional   
(define-const var1147 Int (cast-from-Int-to-Int var578)) ; Statement: $i105 = (int) $b4 
(define-const var3943 Int (div var1147 (to_int (^ 2 3)))) ; Statement: $i5 = $i105 >> 3 
(define-const var1917 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i107 = (int) -2 
 ; Statement: if $i5 != $i107 goto $r24 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var3943 var1917))) ; Cond: $i5 != $i107 
(define-const var108 var2316 var2316-init) ; Statement: $r24 = new com.alibaba.fastjson2.JSONException 
(define-const var1729 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1729)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1729!1 String)
(assert (= var1729!1 ""))
(assert true)
(define-const var845 String (append/672562846 var1729!1 "malformed input around byte ")) ; Statement: $r4 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ") 
(declare-const var1729!2 String)
(assert (= var1729!2 (str.++ var1729!1 "malformed input around byte ")))
(assert true)
(define-const var967 String (append/-1001720160 var845 var3164)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i84) 
(declare-const var845!1 String)
(assert (str.prefixof var845 var845!1))
(assert true)
(define-const var2571 String (toString/-2075883882 var967)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var108 var2571)) ; Statement: specialinvoke $r24.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var108!1 var2316)
(declare-const var2571!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), cast-from-var1354-to-var39=([com.alibaba.fastjson2.JSONReaderUTF8], com.alibaba.fastjson2.JSONReader), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), valueEscape/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), cast-from-Int-to-Int=([byte], int), var2316-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1354=com.alibaba.fastjson2.JSONReaderUTF8, var1123=r0, var1900=com.alibaba.fastjson2.reader.ValueConsumer, var1058=r7, var3631=z1, var39=com.alibaba.fastjson2.JSONReader, var1415=c0, var3164=i84, var2984=i1, var1394=r1, var2070=i85, var578=$b4, var1557=$i98, var50=$i100, var320=$s103, var1760=$s2, var1241=$i104, var3449=$i3, var1147=$i105, var3943=$i5, var1917=$i107, var2316=com.alibaba.fastjson2.JSONException, var108=$r24, var1729=$r23, var845=$r4, var967=$r5, var2571=$r6}
; {com.alibaba.fastjson2.JSONReaderUTF8=var1354, r0=var1123, com.alibaba.fastjson2.reader.ValueConsumer=var1900, r7=var1058, z1=var3631, com.alibaba.fastjson2.JSONReader=var39, c0=var1415, i84=var3164, i1=var2984, r1=var1394, i85=var2070, $b4=var578, $i98=var1557, $i100=var50, $s103=var320, $s2=var1760, $i104=var1241, $i3=var3449, $i105=var1147, $i5=var3943, $i107=var1917, com.alibaba.fastjson2.JSONException=var2316, $r24=var108, $r23=var1729, $r4=var845, $r5=var967, $r6=var2571}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	r7 := @parameter0: com.alibaba.fastjson2.reader.ValueConsumer;	z1 := @parameter1: boolean;	c0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: char ch>;	i84 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	i1 = i84;	r0.<com.alibaba.fastjson2.JSONReaderUTF8: boolean valueEscape> = 0;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	i85 = 0;	$b4 = r1[i84];	$i98 = (int) $b4;	if $i98 != 92 goto $i100 = (int) $b4;	$i100 = (int) $b4;	if $i100 < 0 goto $s103 = (short) $b4;	$s103 = (short) $b4;	$s2 = $s103 & 255;	$i104 = (int) $s2;	$i3 = $i104 >> 4;	tableswitch($i3) {     case 12: goto i84 = i84 + 2;     case 13: goto i84 = i84 + 2;     case 14: goto i84 = i84 + 3;     default: goto $i105 = (int) $b4; };	$i105 = (int) $b4;	$i5 = $i105 >> 3;	$i107 = (int) -2;	if $i5 != $i107 goto $r24 = new com.alibaba.fastjson2.JSONException;	$r24 = new com.alibaba.fastjson2.JSONException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i84);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r24
;block_num 6