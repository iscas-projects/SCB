(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2124 0)
(declare-sort var2331 0)
(declare-sort var294 0)
(declare-sort var1722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/1442430106 (var2331) Int)
(declare-fun cast-from-var2124-to-var2331 (var2124) var2331)
(declare-fun context/1442430106 (var2331) var294)
(declare-fun maxLevel/-146628731 (var294) Int)
(declare-fun var1722-init () var1722)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1722 String) void)
(declare-const null-var2124 var2124)
(declare-const var2056 var2124) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterJSONB 
(assert (not (= var2056 null-var2124)))
(define-const var1168 Int (level/1442430106 (cast-from-var2124-to-var2331 var2056))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: int level> 
(define-const var197 var294 (context/1442430106 (cast-from-var2124-to-var2331 var2056))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var353 Int (maxLevel/-146628731 var197)) ; Statement: $i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel> 
 ; Statement: if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: int level> 
(assert (not (< var1168 var353))) ; Negate: Cond: $i1 < $i0  
(define-const var1754 var1722 var1722-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var1906 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1906)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1906!1 String)
(assert (= var1906!1 ""))
(assert true)
(define-const var3285 String (append/672562846 var1906!1 "level too large : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ") 
(declare-const var1906!2 String)
(assert (= var1906!2 (str.++ var1906!1 "level too large : ")))
(define-const var2878 Int (level/1442430106 (cast-from-var2124-to-var2331 var2056))) ; Statement: $i8 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: int level> 
(assert true)
(define-const var3623 String (append/-1001720160 var3285 var2878)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8) 
(declare-const var3285!1 String)
(assert (str.prefixof var3285 var3285!1))
(assert true)
(define-const var2092 String (toString/-2075883882 var3623)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1754 var2092)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var1754!1 var1722)
(declare-const var2092!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {level/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var2124-to-var2331=([com.alibaba.fastjson2.JSONWriterJSONB], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), maxLevel/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], int), var1722-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2124=com.alibaba.fastjson2.JSONWriterJSONB, var2056=r0, var2331=com.alibaba.fastjson2.JSONWriter, var1168=$i1, var294=com.alibaba.fastjson2.JSONWriter$Context, var197=$r1, var353=$i0, var1722=com.alibaba.fastjson2.JSONException, var1754=$r4, var1906=$r5, var3285=$r6, var2878=$i8, var3623=$r7, var2092=$r8}
; {com.alibaba.fastjson2.JSONWriterJSONB=var2124, r0=var2056, com.alibaba.fastjson2.JSONWriter=var2331, $i1=var1168, com.alibaba.fastjson2.JSONWriter$Context=var294, $r1=var197, $i0=var353, com.alibaba.fastjson2.JSONException=var1722, $r4=var1754, $r5=var1906, $r6=var3285, $i8=var2878, $r7=var3623, $r8=var2092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterJSONB;	$i1 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: int level>;	$r1 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: com.alibaba.fastjson2.JSONWriter$Context context>;	$i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel>;	if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: int level>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ");	$i8 = r0.<com.alibaba.fastjson2.JSONWriterJSONB: int level>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2