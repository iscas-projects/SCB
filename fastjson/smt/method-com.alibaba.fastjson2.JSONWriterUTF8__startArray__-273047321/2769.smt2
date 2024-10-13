(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2765 0)
(declare-sort var82 0)
(declare-sort var1522 0)
(declare-sort var1527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun level/1442430106 (var82) Int)
(declare-fun cast-from-var2765-to-var82 (var2765) var82)
(declare-fun context/1442430106 (var82) var1522)
(declare-fun maxLevel/-146628731 (var1522) Int)
(declare-fun var1527-init () var1527)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1527 String) void)
(declare-const null-var2765 var2765)
(declare-const var1676 var2765) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8 
(assert (not (= var1676 null-var2765)))
(define-const var303 Int (level/1442430106 (cast-from-var2765-to-var82 var1676))) ; Statement: $i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level> 
(define-const var1448 var1522 (context/1442430106 (cast-from-var2765-to-var82 var1676))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var755 Int (maxLevel/-146628731 var1448)) ; Statement: $i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel> 
 ; Statement: if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level> 
(assert (not (< var303 var755))) ; Negate: Cond: $i1 < $i0  
(define-const var112 var1527 var1527-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3101 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3101)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3101!1 String)
(assert (= var3101!1 ""))
(assert true)
(define-const var1549 String (append/672562846 var3101!1 "level too large : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ") 
(declare-const var3101!2 String)
(assert (= var3101!2 (str.++ var3101!1 "level too large : ")))
(define-const var1683 Int (level/1442430106 (cast-from-var2765-to-var82 var1676))) ; Statement: $i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level> 
(assert true)
(define-const var1366 String (append/-1001720160 var1549 var1683)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var1549!1 String)
(assert (str.prefixof var1549 var1549!1))
(assert true)
(define-const var1161 String (toString/-2075883882 var1366)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var112 var1161)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var112!1 var1527)
(declare-const var1161!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {level/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var2765-to-var82=([com.alibaba.fastjson2.JSONWriterUTF8], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), maxLevel/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], int), var1527-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2765=com.alibaba.fastjson2.JSONWriterUTF8, var1676=r0, var82=com.alibaba.fastjson2.JSONWriter, var303=$i1, var1522=com.alibaba.fastjson2.JSONWriter$Context, var1448=$r1, var755=$i0, var1527=com.alibaba.fastjson2.JSONException, var112=$r4, var3101=$r5, var1549=$r6, var1683=$i12, var1366=$r7, var1161=$r8}
; {com.alibaba.fastjson2.JSONWriterUTF8=var2765, r0=var1676, com.alibaba.fastjson2.JSONWriter=var82, $i1=var303, com.alibaba.fastjson2.JSONWriter$Context=var1522, $r1=var1448, $i0=var755, com.alibaba.fastjson2.JSONException=var1527, $r4=var112, $r5=var3101, $r6=var1549, $i12=var1683, $r7=var1366, $r8=var1161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8;	$i1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level>;	$r1 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: com.alibaba.fastjson2.JSONWriter$Context context>;	$i0 = $r1.<com.alibaba.fastjson2.JSONWriter$Context: int maxLevel>;	if $i1 < $i0 goto $i2 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ");	$i12 = r0.<com.alibaba.fastjson2.JSONWriterUTF8: int level>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2