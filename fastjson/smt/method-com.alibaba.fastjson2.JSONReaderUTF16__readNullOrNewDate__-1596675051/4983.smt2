(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1885 0)
(declare-sort var2200 0)
(declare-sort var1466 0)
(declare-sort var1819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/-403530942 (var1885) (Array Int Int))
(declare-fun offset/1287024874 (var1466) Int)
(declare-fun cast-from-var1885-to-var1466 (var1885) var1466)
(declare-fun end/-403530942 (var1885) Int)
(declare-fun var1819-init () var1819)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1819 String) void)
(declare-const null-var1885 var1885)
(declare-const null-var2200 var2200)
(declare-const var2188 var1885) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var2188 null-var1885)))
(define-const var3610 var2200 null-var2200) ; Statement: r13 = null 
(define-const var1255 (Array Int Int) (chars/-403530942 var2188)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var3113 Int (offset/1287024874 (cast-from-var1885-to-var1466 var2188))) ; Statement: i58 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(define-const var58 Int (+ var3113 2)) ; Statement: $i1 = i58 + 2 
(define-const var409 Int (end/-403530942 var2188)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if $i1 >= $i0 goto $i61 = i58 + 1 
(assert (>= var58 var409)) ; Cond: $i1 >= $i0 
(define-const var2742 Int (+ var3113 1)) ; Statement: $i61 = i58 + 1 
(define-const var2004 Int (end/-403530942 var2188)) ; Statement: $i62 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end> 
 ; Statement: if $i61 >= $i62 goto $r32 = new com.alibaba.fastjson2.JSONException 
(assert (>= var2742 var2004)) ; Cond: $i61 >= $i62 
(define-const var3141 var1819 var1819-init) ; Statement: $r32 = new com.alibaba.fastjson2.JSONException 
(define-const var138 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var138)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var138!1 String)
(assert (= var138!1 ""))
(assert true)
(define-const var1324 String (append/672562846 var138!1 "json syntax error, not match null or new Date")) ; Statement: $r21 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null or new Date") 
(declare-const var138!2 String)
(assert (= var138!2 (str.++ var138!1 "json syntax error, not match null or new Date")))
(assert true)
(define-const var1187 String (append/-1001720160 var1324 var3113)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i58) 
(declare-const var1324!1 String)
(assert (str.prefixof var1324 var1324!1))
(assert true)
(define-const var3378 String (toString/-2075883882 var1187)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3141 var3378)) ; Statement: specialinvoke $r32.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r23) 

(declare-const var3141!1 var1819)
(declare-const var3378!1 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1885-to-var1466=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), end/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), var1819-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1885=com.alibaba.fastjson2.JSONReaderUTF16, var2188=r0, var2200=java.util.Date, var3610=r13, var1255=r1, var1466=com.alibaba.fastjson2.JSONReader, var3113=i58, var58=$i1, var409=$i0, var2742=$i61, var2004=$i62, var1819=com.alibaba.fastjson2.JSONException, var3141=$r32, var138=$r31, var1324=$r21, var1187=$r22, var3378=$r23}
; {com.alibaba.fastjson2.JSONReaderUTF16=var1885, r0=var2188, java.util.Date=var2200, r13=var3610, r1=var1255, com.alibaba.fastjson2.JSONReader=var1466, i58=var3113, $i1=var58, $i0=var409, $i61=var2742, $i62=var2004, com.alibaba.fastjson2.JSONException=var1819, $r32=var3141, $r31=var138, $r21=var1324, $r22=var1187, $r23=var3378}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r13 = null;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	i58 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$i1 = i58 + 2;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if $i1 >= $i0 goto $i61 = i58 + 1;	$i61 = i58 + 1;	$i62 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int end>;	if $i61 >= $i62 goto $r32 = new com.alibaba.fastjson2.JSONException;	$r32 = new com.alibaba.fastjson2.JSONException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null or new Date");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i58);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r23);	throw $r32
;block_num 3