(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var236 0)
(declare-sort var3819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ch/1287024874 (var236) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3819-init () var3819)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var236 String) String)
(declare-fun <init>/-2099196170 (var3819 String) void)
(declare-const null-var236 var236)
(declare-const var3619 var236) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3619 null-var236)))
(define-const var1357 Int (ch/1287024874 var3619)) ; Statement: $c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(define-const var35 Int (cast-from-Int-to-Int var1357)) ; Statement: $i2 = (int) $c0 
 ; Statement: lookupswitch($i2) {     case 43: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 45: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 48: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 49: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 50: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 51: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 52: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 53: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 54: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 55: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 56: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 57: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 91: goto $r3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.util.List readArray()>();     case 102: goto $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>();     case 110: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNull()>();     case 116: goto $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>();     case 123: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.util.Map readObject()>();     default: goto $r15 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (not (= var35 123)) (and (not (= var35 116)) (and (not (= var35 110)) (and (not (= var35 102)) (and (not (= var35 91)) (and (not (= var35 57)) (and (not (= var35 56)) (and (not (= var35 55)) (and (not (= var35 54)) (and (not (= var35 53)) (and (not (= var35 52)) (and (not (= var35 51)) (and (not (= var35 50)) (and (not (= var35 49)) (and (not (= var35 48)) (and (not (= var35 45)) (and (not (= var35 43)) true)))))))))))))))))) ; Intersect: Negate: Cond: $i2 == 123   and Intersect: Negate: Cond: $i2 == 116   and Intersect: Negate: Cond: $i2 == 110   and Intersect: Negate: Cond: $i2 == 102   and Intersect: Negate: Cond: $i2 == 91   and Intersect: Negate: Cond: $i2 == 57   and Intersect: Negate: Cond: $i2 == 56   and Intersect: Negate: Cond: $i2 == 55   and Intersect: Negate: Cond: $i2 == 54   and Intersect: Negate: Cond: $i2 == 53   and Intersect: Negate: Cond: $i2 == 52   and Intersect: Negate: Cond: $i2 == 51   and Intersect: Negate: Cond: $i2 == 50   and Intersect: Negate: Cond: $i2 == 49   and Intersect: Negate: Cond: $i2 == 48   and Intersect: Negate: Cond: $i2 == 45   and Intersect: Negate: Cond: $i2 == 43   and Non Conditional                 
(define-const var3353 var3819 var3819-init) ; Statement: $r15 = new com.alibaba.fastjson2.JSONException 
(define-const var774 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var774)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var774!1 String)
(assert (= var774!1 ""))
(assert true)
(define-const var2041 String (append/672562846 var774!1 "illegal input : ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input : ") 
(declare-const var774!2 String)
(assert (= var774!2 (str.++ var774!1 "illegal input : ")))
(define-const var2680 Int (ch/1287024874 var3619)) ; Statement: $c1 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(assert true)
(define-const var2799 String (append/-1166366385 var2041 var2680)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2041!1 String)
(assert (str.prefixof var2041 var2041!1))
(assert true)
(define-const var2191 String (toString/-2075883882 var2799)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var330 String (info/-1659839707 var3619 var2191)) ; Statement: $r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r11) 
(assert true)
;(assert (<init>/-2099196170 var3353 var330)) ; Statement: specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r12) 

(declare-const var3353!1 var3819)
(declare-const var330!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), cast-from-Int-to-Int=([char], int), var3819-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var236=com.alibaba.fastjson2.JSONReader, var3619=r0, var1357=$c0, var35=$i2, var3819=com.alibaba.fastjson2.JSONException, var3353=$r15, var774=$r14, var2041=$r9, var2680=$c1, var2799=$r10, var2191=$r11, var330=$r12}
; {com.alibaba.fastjson2.JSONReader=var236, r0=var3619, $c0=var1357, $i2=var35, com.alibaba.fastjson2.JSONException=var3819, $r15=var3353, $r14=var774, $r9=var2041, $c1=var2680, $r10=var2799, $r11=var2191, $r12=var330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	$c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$i2 = (int) $c0;	lookupswitch($i2) {     case 43: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 45: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 48: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 49: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 50: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 51: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 52: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 53: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 54: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 55: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 56: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 57: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNumber0()>();     case 91: goto $r3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.util.List readArray()>();     case 102: goto $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>();     case 110: goto virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void readNull()>();     case 116: goto $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>();     case 123: goto $r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.util.Map readObject()>();     default: goto $r15 = new com.alibaba.fastjson2.JSONException; };	$r15 = new com.alibaba.fastjson2.JSONException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input : ");	$c1 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r11);	specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r12);	throw $r15
;block_num 2