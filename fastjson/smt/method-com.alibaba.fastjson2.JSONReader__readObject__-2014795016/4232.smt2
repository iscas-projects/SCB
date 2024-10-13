(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1872 0)
(declare-sort var2611 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfObjectStart/-245382802 (var1872) Bool)
(declare-fun level/1287024874 (var1872) Int)
(declare-fun context/1287024874 (var1872) var2611)
(declare-fun maxLevel/-445774891 (var2611) Int)
(declare-fun var2118-init () var2118)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2118 String) void)
(declare-const null-var1872 var1872)
(declare-const var3216 var1872) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3216 null-var1872)))
(assert true)
;(assert (nextIfObjectStart/-245382802 var3216)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>() 

(declare-const var3216!1 var1872)
(define-const var2680 Int (level/1287024874 var3216!1)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(define-const var3441 Int (+ var2680 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3216!2 var1872)
(assert (not (= var3216!2 null-var1872)))
(assert (= (level/1287024874 var3216!2) var3441)) ; Statement: r0.<com.alibaba.fastjson2.JSONReader: int level> = $i1 
(define-const var1905 Int (level/1287024874 var3216!2)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(define-const var1494 var2611 (context/1287024874 var3216!2)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context> 
(define-const var854 Int (maxLevel/-445774891 var1494)) ; Statement: $i2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: int maxLevel> 
 ; Statement: if $i3 < $i2 goto $r2 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context> 
(assert (not (< var1905 var854))) ; Negate: Cond: $i3 < $i2  
(define-const var2177 var2118 var2118-init) ; Statement: $r57 = new com.alibaba.fastjson2.JSONException 
(define-const var2130 String String-init) ; Statement: $r56 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2130)) ; Statement: specialinvoke $r56.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2130!1 String)
(assert (= var2130!1 ""))
(assert true)
(define-const var1369 String (append/672562846 var2130!1 "level too large : ")) ; Statement: $r49 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ") 
(declare-const var2130!2 String)
(assert (= var2130!2 (str.++ var2130!1 "level too large : ")))
(define-const var1884 Int (level/1287024874 var3216!2)) ; Statement: $i30 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(assert true)
(define-const var98 String (append/-1001720160 var1369 var1884)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i30) 
(declare-const var1369!1 String)
(assert (str.prefixof var1369 var1369!1))
(assert true)
(define-const var493 String (toString/-2075883882 var98)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2177 var493)) ; Statement: specialinvoke $r57.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r51) 

(declare-const var2177!1 var2118)
(declare-const var493!1 String)
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfObjectStart/-245382802=([com.alibaba.fastjson2.JSONReader], boolean), level/1287024874=([com.alibaba.fastjson2.JSONReader], int), context/1287024874=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONReader$Context), maxLevel/-445774891=([com.alibaba.fastjson2.JSONReader$Context], int), var2118-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1872=com.alibaba.fastjson2.JSONReader, var3216=r0, var2680=$i0, var3441=$i1, var1905=$i3, var2611=com.alibaba.fastjson2.JSONReader$Context, var1494=$r1, var854=$i2, var2118=com.alibaba.fastjson2.JSONException, var2177=$r57, var2130=$r56, var1369=$r49, var1884=$i30, var98=$r50, var493=$r51}
; {com.alibaba.fastjson2.JSONReader=var1872, r0=var3216, $i0=var2680, $i1=var3441, $i3=var1905, com.alibaba.fastjson2.JSONReader$Context=var2611, $r1=var1494, $i2=var854, com.alibaba.fastjson2.JSONException=var2118, $r57=var2177, $r56=var2130, $r49=var1369, $i30=var1884, $r50=var98, $r51=var493}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>();	$i0 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$i1 = $i0 + 1;	r0.<com.alibaba.fastjson2.JSONReader: int level> = $i1;	$i3 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;	$i2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: int maxLevel>;	if $i3 < $i2 goto $r2 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;	$r57 = new com.alibaba.fastjson2.JSONException;	$r56 = new java.lang.StringBuilder;	specialinvoke $r56.<java.lang.StringBuilder: void <init>()>();	$r49 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ");	$i30 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i30);	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r57.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r51);	throw $r57
;block_num 2