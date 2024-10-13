(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1329 0)
(declare-sort var1285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1285-init () var1285)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offset/1287024874 (var1329) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var1329) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1285 String) void)
(declare-const null-var1329 var1329)
(declare-const var3500 var1329) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3500 null-var1329)))
(define-const var2588 var1285 var1285-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3839 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3839)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3839!1 String)
(assert (= var3839!1 ""))
(assert true)
(define-const var3830 String (append/672562846 var3839!1 "illegal number, offset ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal number, offset ") 
(declare-const var3839!2 String)
(assert (= var3839!2 (str.++ var3839!1 "illegal number, offset ")))
(define-const var2482 Int (offset/1287024874 var3500)) ; Statement: $i0 = r2.<com.alibaba.fastjson2.JSONReader: int offset> 
(assert true)
(define-const var3227 String (append/-1001720160 var3830 var2482)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3830!1 String)
(assert (str.prefixof var3830 var3830!1))
(assert true)
(define-const var3810 String (append/672562846 var3227 ", char ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ") 
(declare-const var3227!1 String)
(assert (= var3227!1 (str.++ var3227 ", char ")))
(define-const var2914 Int (ch/1287024874 var3500)) ; Statement: $c1 = r2.<com.alibaba.fastjson2.JSONReader: char ch> 
(assert true)
(define-const var1857 String (append/-1166366385 var3810 var2914)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3810!1 String)
(assert (str.prefixof var3810 var3810!1))
(assert true)
(define-const var2939 String (toString/-2075883882 var1857)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2588 var2939)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7) 

(declare-const var2588!1 var1285)
(declare-const var2939!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1285-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1329=com.alibaba.fastjson2.JSONReader, var3500=r2, var1285=com.alibaba.fastjson2.JSONException, var2588=$r0, var3839=$r1, var3830=$r3, var2482=$i0, var3227=$r4, var3810=$r5, var2914=$c1, var1857=$r6, var2939=$r7}
; {com.alibaba.fastjson2.JSONReader=var1329, r2=var3500, com.alibaba.fastjson2.JSONException=var1285, $r0=var2588, $r1=var3839, $r3=var3830, $i0=var2482, $r4=var3227, $r5=var3810, $c1=var2914, $r6=var1857, $r7=var2939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONReader;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal number, offset ");	$i0 = r2.<com.alibaba.fastjson2.JSONReader: int offset>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ");	$c1 = r2.<com.alibaba.fastjson2.JSONReader: char ch>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7);	return $r0
;block_num 1