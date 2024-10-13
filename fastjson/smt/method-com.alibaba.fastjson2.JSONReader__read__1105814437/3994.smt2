(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3019 0)
(declare-sort var2629 0)
(declare-sort var3309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfArrayStart/1644613984 (var3019) Bool)
(declare-fun var3309-init () var3309)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offset/1287024874 (var3019) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var3019) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3309 String) void)
(declare-const null-var3019 var3019)
(declare-const null-var2629 var2629)
(declare-const var3957 var3019) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3957 null-var3019)))
(declare-const var834 var2629) ; Statement: r4 := @parameter0: java.util.List 
(assert (not (= var834 null-var2629)))
(assert true)
(define-const var3743 Bool (nextIfArrayStart/1644613984 var3957)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>() 
 ; Statement: if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(assert (not (not (= (ite var3743 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1986 var3309 var3309-init) ; Statement: $r10 = new com.alibaba.fastjson2.JSONException 
(define-const var1886 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1886)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1886!1 String)
(assert (= var1886!1 ""))
(assert true)
(define-const var2258 String (append/672562846 var1886!1 "illegal input, offset ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, offset ") 
(declare-const var1886!2 String)
(assert (= var1886!2 (str.++ var1886!1 "illegal input, offset ")))
(define-const var1216 Int (offset/1287024874 var3957)) ; Statement: $i7 = r0.<com.alibaba.fastjson2.JSONReader: int offset> 
(assert true)
(define-const var1017 String (append/-1001720160 var2258 var1216)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var2258!1 String)
(assert (str.prefixof var2258 var2258!1))
(assert true)
(define-const var2892 String (append/672562846 var1017 ", char ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ") 
(declare-const var1017!1 String)
(assert (= var1017!1 (str.++ var1017 ", char ")))
(define-const var714 Int (ch/1287024874 var3957)) ; Statement: $c8 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(assert true)
(define-const var943 String (append/-1166366385 var2892 var714)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c8) 
(declare-const var2892!1 String)
(assert (str.prefixof var2892 var2892!1))
(assert true)
(define-const var2962 String (toString/-2075883882 var943)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1986 var2962)) ; Statement: specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r16) 

(declare-const var1986!1 var3309)
(declare-const var2962!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfArrayStart/1644613984=([com.alibaba.fastjson2.JSONReader], boolean), var3309-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3019=com.alibaba.fastjson2.JSONReader, var3957=r0, var2629=java.util.List, var834=r4, var3743=$z0, var3309=com.alibaba.fastjson2.JSONException, var1986=$r10, var1886=$r11, var2258=$r12, var1216=$i7, var1017=$r13, var2892=$r14, var714=$c8, var943=$r15, var2962=$r16}
; {com.alibaba.fastjson2.JSONReader=var3019, r0=var3957, java.util.List=var2629, r4=var834, $z0=var3743, com.alibaba.fastjson2.JSONException=var3309, $r10=var1986, $r11=var1886, $r12=var2258, $i7=var1216, $r13=var1017, $r14=var2892, $c8=var714, $r15=var943, $r16=var2962}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r4 := @parameter0: java.util.List;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>();	if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$r10 = new com.alibaba.fastjson2.JSONException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, offset ");	$i7 = r0.<com.alibaba.fastjson2.JSONReader: int offset>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ");	$c8 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c8);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r16);	throw $r10
;block_num 2