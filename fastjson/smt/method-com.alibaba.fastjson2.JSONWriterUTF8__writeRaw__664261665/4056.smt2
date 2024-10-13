(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var508 0)
(declare-sort var3030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3030-init () var3030)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3030 String) void)
(declare-const null-var508 var508)
(declare-const null-Int Int)
(declare-const var2430 var508) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8 
(assert (not (= var2430 null-var508)))
(declare-const var2037 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2037 null-Int)))
(declare-const var3504 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var3504 null-Int)))
(define-const var3028 Int (cast-from-Int-to-Int var2037)) ; Statement: $i10 = (int) c0 
 ; Statement: if $i10 <= 128 goto $i11 = (int) c1 
(assert (not (<= var3028 128))) ; Negate: Cond: $i10 <= 128  
(define-const var1265 var3030 var3030-init) ; Statement: $r15 = new com.alibaba.fastjson2.JSONException 
(define-const var213 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var213)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var213!1 String)
(assert (= var213!1 ""))
(assert true)
(define-const var356 String (append/672562846 var213!1 "not support ")) ; Statement: $r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support ") 
(declare-const var213!2 String)
(assert (= var213!2 (str.++ var213!1 "not support ")))
(assert true)
(define-const var129 String (append/-1166366385 var356 var2037)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var356!1 String)
(assert (str.prefixof var356 var356!1))
(assert true)
(define-const var510 String (toString/-2075883882 var129)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1265 var510)) ; Statement: specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var1265!1 var3030)
(declare-const var510!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var3030-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var508=com.alibaba.fastjson2.JSONWriterUTF8, var2430=r0, var2037=c0, var3504=c1, var3028=$i10, var3030=com.alibaba.fastjson2.JSONException, var1265=$r15, var213=$r14, var356=$r11, var129=$r12, var510=$r13}
; {com.alibaba.fastjson2.JSONWriterUTF8=var508, r0=var2430, c0=var2037, c1=var3504, $i10=var3028, com.alibaba.fastjson2.JSONException=var3030, $r15=var1265, $r14=var213, $r11=var356, $r12=var129, $r13=var510}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriterUTF8;	c0 := @parameter0: char;	c1 := @parameter1: char;	$i10 = (int) c0;	if $i10 <= 128 goto $i11 = (int) c1;	$r15 = new com.alibaba.fastjson2.JSONException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r15
;block_num 2