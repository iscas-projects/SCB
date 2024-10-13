(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort var2598 0)
(declare-sort var2855 0)
(declare-sort var2108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/1442430106 (var2598) Int)
(declare-fun cast-from-var2289-to-var2598 (var2289) var2598)
(declare-fun context/1442430106 (var2598) var2855)
(declare-fun maxLevel/-146628731 (var2855) Int)
(declare-fun var2108-init () var2108)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2108 String) void)
(declare-const null-var2289 var2289)
(declare-const var1666 var2289) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8 
(assert (not (= var1666 null-var2289)))
(define-const var1029 Int (level/1442430106 (cast-from-var2289-to-var2598 var1666))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level> 
(define-const var673 var2855 (context/1442430106 (cast-from-var2289-to-var2598 var1666))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var563 Int (maxLevel/-146628731 var673)) ; Statement: $i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel> 
 ; Statement: if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level> 
(assert (not (< var1029 var563))) ; Negate: Cond: $i1 < $i0  
(define-const var2338 var2108 var2108-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3775 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3775)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3775!1 String)
(assert (= var3775!1 ""))
(assert true)
(define-const var3432 String (append/672562846 var3775!1 "level too large : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ") 
(declare-const var3775!2 String)
(assert (= var3775!2 (str.++ var3775!1 "level too large : ")))
(define-const var1209 Int (level/1442430106 (cast-from-var2289-to-var2598 var1666))) ; Statement: $i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level> 
(assert true)
(define-const var177 String (append/-1001720160 var3432 var1209)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var3432!1 String)
(assert (str.prefixof var3432 var3432!1))
(assert true)
(define-const var1359 String (toString/-2075883882 var177)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2338 var1359)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var2338!1 var2108)
(declare-const var1359!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {level/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var2289-to-var2598=([com.alibaba.fastjson2.JSONWriterUTF8], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), maxLevel/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], int), var2108-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2289=com.alibaba.fastjson2.JSONWriterUTF8, var1666=r0, var2598=com.alibaba.fastjson2.JSONWriter, var1029=$i1, var2855=com.alibaba.fastjson2.JSONWriter$Context, var673=$r1, var563=$i0, var2108=com.alibaba.fastjson2.JSONException, var2338=$r4, var3775=$r5, var3432=$r6, var1209=$i12, var177=$r7, var1359=$r8}
; {com.alibaba.fastjson2.JSONWriterUTF8=var2289, r0=var1666, com.alibaba.fastjson2.JSONWriter=var2598, $i1=var1029, com.alibaba.fastjson2.JSONWriter$Context=var2855, $r1=var673, $i0=var563, com.alibaba.fastjson2.JSONException=var2108, $r4=var2338, $r5=var3775, $r6=var3432, $i12=var1209, $r7=var177, $r8=var1359}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8;	$i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level>;	$r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: com.alibaba.fastjson2.JSONWriter$Context context>;	$i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel>;	if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ");	$i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2