(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var1850 0)
(declare-sort var665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/956814203 (var426) (Array Int Int))
(declare-fun offset/1287024874 (var1850) Int)
(declare-fun cast-from-var426-to-var1850 (var426) var1850)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var665-init () var665)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var665 String) void)
(declare-const null-var426 var426)
(declare-const var1100 var426) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var1100 null-var426)))
(define-const var2770 (Array Int Int) (bytes/956814203 var1100)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var1753 Int (offset/1287024874 (cast-from-var426-to-var1850 var1100))) ; Statement: i19 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
(define-const var1827 Int (select var2770 var1753)) ; Statement: $b0 = r1[i19] 
(define-const var1025 Int (cast-from-Int-to-Int var1827)) ; Statement: $i27 = (int) $b0 
 ; Statement: if $i27 != 117 goto $r8 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var1025 117))) ; Cond: $i27 != 117 
(define-const var1172 var665 var665-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var2678 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2678)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2678!1 String)
(assert (= var2678!1 ""))
(assert true)
(define-const var3357 String (append/672562846 var2678!1 "json syntax error, not match null")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null") 
(declare-const var2678!2 String)
(assert (= var2678!2 (str.++ var2678!1 "json syntax error, not match null")))
(assert true)
(define-const var2121 String (append/-1001720160 var3357 var1753)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i19) 
(declare-const var3357!1 String)
(assert (str.prefixof var3357 var3357!1))
(assert true)
(define-const var739 String (toString/-2075883882 var2121)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1172 var739)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var1172!1 var665)
(declare-const var739!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var426-to-var1850=([com.alibaba.fastjson2.JSONReaderUTF8], com.alibaba.fastjson2.JSONReader), cast-from-Int-to-Int=([byte], int), var665-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var426=com.alibaba.fastjson2.JSONReaderUTF8, var1100=r0, var2770=r1, var1850=com.alibaba.fastjson2.JSONReader, var1753=i19, var1827=$b0, var1025=$i27, var665=com.alibaba.fastjson2.JSONException, var1172=$r8, var2678=$r7, var3357=$r4, var2121=$r5, var739=$r6}
; {com.alibaba.fastjson2.JSONReaderUTF8=var426, r0=var1100, r1=var2770, com.alibaba.fastjson2.JSONReader=var1850, i19=var1753, $b0=var1827, $i27=var1025, com.alibaba.fastjson2.JSONException=var665, $r8=var1172, $r7=var2678, $r4=var3357, $r5=var2121, $r6=var739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	i19 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	$b0 = r1[i19];	$i27 = (int) $b0;	if $i27 != 117 goto $r8 = new com.alibaba.fastjson2.JSONException;	$r8 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i19);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2