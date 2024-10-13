(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1598 0)
(declare-sort var3829 0)
(declare-sort var1036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun off/1442430106 (var3829) Int)
(declare-fun cast-from-var1598-to-var3829 (var1598) var3829)
(declare-fun bytes/324912939 (var1598) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun quote/1442430106 (var3829) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1036-init () var1036)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1036 String) void)
(declare-const null-var1598 var1598)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2215 var1598) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8 
(assert (not (= var2215 null-var1598)))
(declare-const var903 Int) ; Statement: c4 := @parameter0: char 
(assert (not (= var903 null-Int)))
(define-const var544 Int (off/1442430106 (cast-from-var1598-to-var3829 var2215))) ; Statement: i68 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int off> 
(define-const var3769 Int (+ var544 8)) ; Statement: i0 = i68 + 8 
(define-const var2354 (Array Int Int) (bytes/324912939 var2215)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes> 
(define-const var1381 Int (getLength-Arr-Int-1 var2354)) ; Statement: $i1 = lengthof $r1 
 ; Statement: if i0 < $i1 goto $r7 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes> 
(assert (< var3769 var1381)) ; Cond: i0 < $i1 
(define-const var2062 (Array Int Int) (bytes/324912939 var2215)) ; Statement: $r7 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes> 
(define-const var1386 Int (+ var544 1)) ; Statement: i69 = i68 + 1 
(define-const var775 Int (quote/1442430106 (cast-from-var1598-to-var3829 var2215))) ; Statement: $c2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: char quote> 
(define-const var2785 Int (cast-from-Int-to-Int var775)) ; Statement: $b3 = (byte) $c2 
(declare-const var2062!1 (Array Int Int))
(assert (not (= var2062!1 null-__Array__Int__Int__)))
(assert (= (select var2062!1 var544) var2785)) ; Statement: $r7[i68] = $b3 
(define-const var2226 Int (cast-from-Int-to-Int var903)) ; Statement: $i74 = (int) c4 
 ; Statement: if $i74 > 127 goto $i82 = (int) c4 
(assert (> var2226 127)) ; Cond: $i74 > 127 
(define-const var2612 Int (cast-from-Int-to-Int var903)) ; Statement: $i82 = (int) c4 
(define-const var3760 Int (cast-from-Int-to-Int 55296)) ; Statement: $i84 = (int) 55296 
 ; Statement: if $i82 < $i84 goto $i88 = (int) c4 
(assert (not (< var2612 var3760))) ; Negate: Cond: $i82 < $i84  
(define-const var862 Int (cast-from-Int-to-Int var903)) ; Statement: $i85 = (int) c4 
(define-const var3321 Int (cast-from-Int-to-Int 57344)) ; Statement: $i87 = (int) 57344 
 ; Statement: if $i85 >= $i87 goto $i88 = (int) c4 
(assert (not (>= var862 var3321))) ; Negate: Cond: $i85 >= $i87  
(define-const var2099 var1036 var1036-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var38 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var38)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var38!1 String)
(assert (= var38!1 ""))
(assert true)
(define-const var1383 String (append/672562846 var38!1 "illegal char ")) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal char ") 
(declare-const var38!2 String)
(assert (= var38!2 (str.++ var38!1 "illegal char ")))
(assert true)
(define-const var927 String (append/-1166366385 var1383 var903)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4) 
(declare-const var1383!1 String)
(assert (str.prefixof var1383 var1383!1))
(assert true)
(define-const var2883 String (toString/-2075883882 var927)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2099 var2883)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var2099!1 var1036)
(declare-const var2883!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var1598-to-var3829=([com.alibaba.fastjson2.JSONWriterUTF8], com.alibaba.fastjson2.JSONWriter), bytes/324912939=([com.alibaba.fastjson2.JSONWriterUTF8], byte[]), getLength-Arr-Int-1=([byte[]], int), quote/1442430106=([com.alibaba.fastjson2.JSONWriter], char), cast-from-Int-to-Int=([char], byte), var1036-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1598=com.alibaba.fastjson2.JSONWriterUTF8, var2215=r0, var903=c4, var3829=com.alibaba.fastjson2.JSONWriter, var544=i68, var3769=i0, var2354=$r1, var1381=$i1, var2062=$r7, var1386=i69, var775=$c2, var2785=$b3, var2226=$i74, var2612=$i82, var3760=$i84, var862=$i85, var3321=$i87, var1036=com.alibaba.fastjson2.JSONException, var2099=$r9, var38=$r8, var1383=$r4, var927=$r5, var2883=$r6}
; {com.alibaba.fastjson2.JSONWriterUTF8=var1598, r0=var2215, c4=var903, com.alibaba.fastjson2.JSONWriter=var3829, i68=var544, i0=var3769, $r1=var2354, $i1=var1381, $r7=var2062, i69=var1386, $c2=var775, $b3=var2785, $i74=var2226, $i82=var2612, $i84=var3760, $i85=var862, $i87=var3321, com.alibaba.fastjson2.JSONException=var1036, $r9=var2099, $r8=var38, $r4=var1383, $r5=var927, $r6=var2883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8;	c4 := @parameter0: char;	i68 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int off>;	i0 = i68 + 8;	$r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes>;	$i1 = lengthof $r1;	if i0 < $i1 goto $r7 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes>;	$r7 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: byte[] bytes>;	i69 = i68 + 1;	$c2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: char quote>;	$b3 = (byte) $c2;	$r7[i68] = $b3;	$i74 = (int) c4;	if $i74 > 127 goto $i82 = (int) c4;	$i82 = (int) c4;	$i84 = (int) 55296;	if $i82 < $i84 goto $i88 = (int) c4;	$i85 = (int) c4;	$i87 = (int) 57344;	if $i85 >= $i87 goto $i88 = (int) c4;	$r9 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal char ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r9
;block_num 5