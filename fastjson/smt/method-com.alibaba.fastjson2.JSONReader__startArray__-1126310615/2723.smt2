(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var728 0)
(declare-sort var1229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfArrayStart/1644613984 (var728) Bool)
(declare-fun var1229-init () var1229)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ch/1287024874 (var728) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var728 String) String)
(declare-fun <init>/-2099196170 (var1229 String) void)
(declare-const null-var728 var728)
(declare-const var3565 var728) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3565 null-var728)))
(assert true)
(define-const var3626 Bool (nextIfArrayStart/1644613984 var3565)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>() 
 ; Statement: if $z0 != 0 goto return 2147483647 
(assert (not (not (= (ite var3626 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2947 var1229 var1229-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONException 
(define-const var2507 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2507)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2507!1 String)
(assert (= var2507!1 ""))
(assert true)
(define-const var2857 String (append/672562846 var2507!1 "illegal input, expect \u0027[\u0027, but ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, expect \'[\', but ") 
(declare-const var2507!2 String)
(assert (= var2507!2 (str.++ var2507!1 "illegal input, expect \u0027[\u0027, but ")))
(define-const var2438 Int (ch/1287024874 var3565)) ; Statement: $c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(assert true)
(define-const var1683 String (append/-1166366385 var2857 var2438)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var2857!1 String)
(assert (str.prefixof var2857 var2857!1))
(assert true)
(define-const var2006 String (toString/-2075883882 var1683)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var24 String (info/-1659839707 var3565 var2006)) ; Statement: $r6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r5) 
(assert true)
;(assert (<init>/-2099196170 var2947 var24)) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var2947!1 var1229)
(declare-const var24!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfArrayStart/1644613984=([com.alibaba.fastjson2.JSONReader], boolean), var1229-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var728=com.alibaba.fastjson2.JSONReader, var3565=r0, var3626=$z0, var1229=com.alibaba.fastjson2.JSONException, var2947=$r1, var2507=$r2, var2857=$r3, var2438=$c0, var1683=$r4, var2006=$r5, var24=$r6}
; {com.alibaba.fastjson2.JSONReader=var728, r0=var3565, $z0=var3626, com.alibaba.fastjson2.JSONException=var1229, $r1=var2947, $r2=var2507, $r3=var2857, $c0=var2438, $r4=var1683, $r5=var2006, $r6=var24}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>();	if $z0 != 0 goto return 2147483647;	$r1 = new com.alibaba.fastjson2.JSONException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, expect \'[\', but ");	$c0 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r5);	specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2