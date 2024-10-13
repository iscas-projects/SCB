(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2488 0)
(declare-sort var1178 0)
(declare-sort var1005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/-403530942 (var2488) (Array Int Int))
(declare-fun offset/1287024874 (var1178) Int)
(declare-fun cast-from-var2488-to-var1178 (var2488) var1178)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1005-init () var1005)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1005 String) void)
(declare-const null-var2488 var2488)
(declare-const var860 var2488) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var860 null-var2488)))
(define-const var610 (Array Int Int) (chars/-403530942 var860)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars> 
(define-const var3854 Int (offset/1287024874 (cast-from-var2488-to-var1178 var860))) ; Statement: i20 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset> 
(define-const var288 Int (select var610 var3854)) ; Statement: $c0 = r1[i20] 
(define-const var1154 Int (cast-from-Int-to-Int var288)) ; Statement: $i26 = (int) $c0 
 ; Statement: if $i26 != 117 goto $r8 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var1154 117))) ; Cond: $i26 != 117 
(define-const var474 var1005 var1005-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3928 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3928)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3928!1 String)
(assert (= var3928!1 ""))
(assert true)
(define-const var1581 String (append/672562846 var3928!1 "json syntax error, not match null, offset ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null, offset ") 
(declare-const var3928!2 String)
(assert (= var3928!2 (str.++ var3928!1 "json syntax error, not match null, offset ")))
(assert true)
(define-const var227 String (append/-1001720160 var1581 var3854)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i20) 
(declare-const var1581!1 String)
(assert (str.prefixof var1581 var1581!1))
(assert true)
(define-const var229 String (toString/-2075883882 var227)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var474 var229)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var474!1 var1005)
(declare-const var229!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], char[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2488-to-var1178=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), cast-from-Int-to-Int=([char], int), var1005-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2488=com.alibaba.fastjson2.JSONReaderUTF16, var860=r0, var610=r1, var1178=com.alibaba.fastjson2.JSONReader, var3854=i20, var288=$c0, var1154=$i26, var1005=com.alibaba.fastjson2.JSONException, var474=$r8, var3928=$r7, var1581=$r4, var227=$r5, var229=$r6}
; {com.alibaba.fastjson2.JSONReaderUTF16=var2488, r0=var860, r1=var610, com.alibaba.fastjson2.JSONReader=var1178, i20=var3854, $c0=var288, $i26=var1154, com.alibaba.fastjson2.JSONException=var1005, $r8=var474, $r7=var3928, $r4=var1581, $r5=var227, $r6=var229}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: char[] chars>;	i20 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int offset>;	$c0 = r1[i20];	$i26 = (int) $c0;	if $i26 != 117 goto $r8 = new com.alibaba.fastjson2.JSONException;	$r8 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null, offset ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i20);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2