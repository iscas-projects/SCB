(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1809 0)
(declare-sort var2101 0)
(declare-sort var2276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun next/514221514 (var1809) void)
(declare-fun level/1287024874 (var1809) Int)
(declare-fun context/1287024874 (var1809) var2101)
(declare-fun maxLevel/-445774891 (var2101) Int)
(declare-fun var2276-init () var2276)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2276 String) void)
(declare-const null-var1809 var1809)
(declare-const var694 var1809) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var694 null-var1809)))
(assert true)
;(assert (next/514221514 var694)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>() 

(declare-const var694!1 var1809)
(define-const var3660 Int (level/1287024874 var694!1)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(define-const var3742 Int (+ var3660 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var694!2 var1809)
(assert (not (= var694!2 null-var1809)))
(assert (= (level/1287024874 var694!2) var3742)) ; Statement: r0.<com.alibaba.fastjson2.JSONReader: int level> = $i1 
(define-const var759 Int (level/1287024874 var694!2)) ; Statement: $i3 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(define-const var518 var2101 (context/1287024874 var694!2)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context> 
(define-const var1378 Int (maxLevel/-445774891 var518)) ; Statement: $i2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: int maxLevel> 
 ; Statement: if $i3 < $i2 goto i12 = 0 
(assert (not (< var759 var1378))) ; Negate: Cond: $i3 < $i2  
(define-const var3818 var2276 var2276-init) ; Statement: $r35 = new com.alibaba.fastjson2.JSONException 
(define-const var523 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var523)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var523!1 String)
(assert (= var523!1 ""))
(assert true)
(define-const var2833 String (append/672562846 var523!1 "level too large : ")) ; Statement: $r25 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ") 
(declare-const var523!2 String)
(assert (= var523!2 (str.++ var523!1 "level too large : ")))
(define-const var3166 Int (level/1287024874 var694!2)) ; Statement: $i11 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(assert true)
(define-const var3208 String (append/-1001720160 var2833 var3166)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11) 
(declare-const var2833!1 String)
(assert (str.prefixof var2833 var2833!1))
(assert true)
(define-const var290 String (toString/-2075883882 var3208)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3818 var290)) ; Statement: specialinvoke $r35.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r27) 

(declare-const var3818!1 var2276)
(declare-const var290!1 String)
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {next/514221514=([com.alibaba.fastjson2.JSONReader], void), level/1287024874=([com.alibaba.fastjson2.JSONReader], int), context/1287024874=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONReader$Context), maxLevel/-445774891=([com.alibaba.fastjson2.JSONReader$Context], int), var2276-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1809=com.alibaba.fastjson2.JSONReader, var694=r0, var3660=$i0, var3742=$i1, var759=$i3, var2101=com.alibaba.fastjson2.JSONReader$Context, var518=$r1, var1378=$i2, var2276=com.alibaba.fastjson2.JSONException, var3818=$r35, var523=$r34, var2833=$r25, var3166=$i11, var3208=$r26, var290=$r27}
; {com.alibaba.fastjson2.JSONReader=var1809, r0=var694, $i0=var3660, $i1=var3742, $i3=var759, com.alibaba.fastjson2.JSONReader$Context=var2101, $r1=var518, $i2=var1378, com.alibaba.fastjson2.JSONException=var2276, $r35=var3818, $r34=var523, $r25=var2833, $i11=var3166, $r26=var3208, $r27=var290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: void next()>();	$i0 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$i1 = $i0 + 1;	r0.<com.alibaba.fastjson2.JSONReader: int level> = $i1;	$i3 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;	$i2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: int maxLevel>;	if $i3 < $i2 goto i12 = 0;	$r35 = new com.alibaba.fastjson2.JSONException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("level too large : ");	$i11 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r35.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r27);	throw $r35
;block_num 2