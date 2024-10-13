(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3202 0)
(declare-sort var3922 0)
(declare-sort var337 0)
(declare-sort var3195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/1442430106 (var3922) Int)
(declare-fun cast-from-var3202-to-var3922 (var3202) var3922)
(declare-fun context/1442430106 (var3922) var337)
(declare-fun maxLevel/-146628731 (var337) Int)
(declare-fun var3195-init () var3195)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3195 String) void)
(declare-const null-var3202 var3202)
(declare-const var3621 var3202) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var3621 null-var3202)))
(define-const var3764 Int (level/1442430106 (cast-from-var3202-to-var3922 var3621))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level> 
(define-const var2542 var337 (context/1442430106 (cast-from-var3202-to-var3922 var3621))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var111 Int (maxLevel/-146628731 var2542)) ; Statement: $i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel> 
 ; Statement: if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level> 
(assert (not (< var3764 var111))) ; Negate: Cond: $i1 < $i0  
(define-const var2159 var3195 var3195-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3918 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3918)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3918!1 String)
(assert (= var3918!1 ""))
(assert true)
(define-const var3137 String (append/672562846 var3918!1 "level too large : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ") 
(declare-const var3918!2 String)
(assert (= var3918!2 (str.++ var3918!1 "level too large : ")))
(define-const var681 Int (level/1442430106 (cast-from-var3202-to-var3922 var3621))) ; Statement: $i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level> 
(assert true)
(define-const var1030 String (append/-1001720160 var3137 var681)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var3137!1 String)
(assert (str.prefixof var3137 var3137!1))
(assert true)
(define-const var2850 String (toString/-2075883882 var1030)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2159 var2850)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var2159!1 var3195)
(declare-const var2850!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {level/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var3202-to-var3922=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), maxLevel/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], int), var3195-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3202=com.alibaba.fastjson2.JSONWriterUTF16, var3621=r0, var3922=com.alibaba.fastjson2.JSONWriter, var3764=$i1, var337=com.alibaba.fastjson2.JSONWriter$Context, var2542=$r1, var111=$i0, var3195=com.alibaba.fastjson2.JSONException, var2159=$r4, var3918=$r5, var3137=$r6, var681=$i12, var1030=$r7, var2850=$r8}
; {com.alibaba.fastjson2.JSONWriterUTF16=var3202, r0=var3621, com.alibaba.fastjson2.JSONWriter=var3922, $i1=var3764, com.alibaba.fastjson2.JSONWriter$Context=var337, $r1=var2542, $i0=var111, com.alibaba.fastjson2.JSONException=var3195, $r4=var2159, $r5=var3918, $r6=var3137, $i12=var681, $r7=var1030, $r8=var2850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	$i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level>;	$r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel>;	if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ");	$i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2