(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2815 0)
(declare-sort var3343 0)
(declare-sort var1084 0)
(declare-sort var252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/1442430106 (var3343) Int)
(declare-fun cast-from-var2815-to-var3343 (var2815) var3343)
(declare-fun context/1442430106 (var3343) var1084)
(declare-fun maxLevel/-146628731 (var1084) Int)
(declare-fun var252-init () var252)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var252 String) void)
(declare-const null-var2815 var2815)
(declare-const var840 var2815) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var840 null-var2815)))
(define-const var2981 Int (level/1442430106 (cast-from-var2815-to-var3343 var840))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level> 
(define-const var1865 var1084 (context/1442430106 (cast-from-var2815-to-var3343 var840))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var999 Int (maxLevel/-146628731 var1865)) ; Statement: $i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel> 
 ; Statement: if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level> 
(assert (not (< var2981 var999))) ; Negate: Cond: $i1 < $i0  
(define-const var2353 var252 var252-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var2201 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2201)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2201!1 String)
(assert (= var2201!1 ""))
(assert true)
(define-const var2672 String (append/672562846 var2201!1 "level too large : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ") 
(declare-const var2201!2 String)
(assert (= var2201!2 (str.++ var2201!1 "level too large : ")))
(define-const var2023 Int (level/1442430106 (cast-from-var2815-to-var3343 var840))) ; Statement: $i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level> 
(assert true)
(define-const var2751 String (append/-1001720160 var2672 var2023)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var2672!1 String)
(assert (str.prefixof var2672 var2672!1))
(assert true)
(define-const var1646 String (toString/-2075883882 var2751)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2353 var1646)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var2353!1 var252)
(declare-const var1646!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {level/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var2815-to-var3343=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), maxLevel/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], int), var252-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2815=com.alibaba.fastjson2.JSONWriterUTF16, var840=r0, var3343=com.alibaba.fastjson2.JSONWriter, var2981=$i1, var1084=com.alibaba.fastjson2.JSONWriter$Context, var1865=$r1, var999=$i0, var252=com.alibaba.fastjson2.JSONException, var2353=$r4, var2201=$r5, var2672=$r6, var2023=$i12, var2751=$r7, var1646=$r8}
; {com.alibaba.fastjson2.JSONWriterUTF16=var2815, r0=var840, com.alibaba.fastjson2.JSONWriter=var3343, $i1=var2981, com.alibaba.fastjson2.JSONWriter$Context=var1084, $r1=var1865, $i0=var999, com.alibaba.fastjson2.JSONException=var252, $r4=var2353, $r5=var2201, $r6=var2672, $i12=var2023, $r7=var2751, $r8=var1646}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	$i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level>;	$r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel>;	if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ");	$i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF16: int level>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2