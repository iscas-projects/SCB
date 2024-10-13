(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3701 0)
(declare-sort var1147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1147-init () var1147)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun current/1026386434 (var3701) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3701 String) String)
(declare-fun <init>/-2099196170 (var1147 String) void)
(declare-const null-var3701 var3701)
(declare-const var210 var3701) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var210 null-var3701)))
(define-const var1186 var1147 var1147-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3354 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3354)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3354!1 String)
(assert (= var3354!1 ""))
(assert true)
(define-const var3226 String (append/672562846 var3354!1 "illegal input, expect \u0027[\u0027, but ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, expect \'[\', but ") 
(declare-const var3354!2 String)
(assert (= var3354!2 (str.++ var3354!1 "illegal input, expect \u0027[\u0027, but ")))
(assert true)
(define-const var1323 Int (current/1026386434 var210)) ; Statement: $c0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: char current()>() 
(assert true)
(define-const var3877 String (append/-1166366385 var3226 var1323)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3226!1 String)
(assert (str.prefixof var3226 var3226!1))
(assert true)
(define-const var720 String (toString/-2075883882 var3877)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2012 String (info/-1659839707 var210 var720)) ; Statement: $r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r5) 
(assert true)
;(assert (<init>/-2099196170 var1186 var2012)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var1186!1 var1147)
(declare-const var2012!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1147-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), current/1026386434=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3701=com.alibaba.fastjson2.JSONReader, var210=r1, var1147=com.alibaba.fastjson2.JSONException, var1186=$r0, var3354=$r2, var3226=$r3, var1323=$c0, var3877=$r4, var720=$r5, var2012=$r6}
; {com.alibaba.fastjson2.JSONReader=var3701, r1=var210, com.alibaba.fastjson2.JSONException=var1147, $r0=var1186, $r2=var3354, $r3=var3226, $c0=var1323, $r4=var3877, $r5=var720, $r6=var2012}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.alibaba.fastjson2.JSONReader;	$r0 = new com.alibaba.fastjson2.JSONException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, expect \'[\', but ");	$c0 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: char current()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r5);	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1