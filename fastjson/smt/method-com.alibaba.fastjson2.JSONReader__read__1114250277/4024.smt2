(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3819 0)
(declare-sort var1537 0)
(declare-sort var3908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfArrayStart/1644613984 (var3819) Bool)
(declare-fun var3908-init () var3908)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offset/1287024874 (var3819) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun ch/1287024874 (var3819) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3908 String) void)
(declare-const null-var3819 var3819)
(declare-const null-var1537 var1537)
(declare-const var1962 var3819) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1962 null-var3819)))
(declare-const var2103 var1537) ; Statement: r3 := @parameter0: java.util.Collection 
(assert (not (= var2103 null-var1537)))
(assert true)
(define-const var1926 Bool (nextIfArrayStart/1644613984 var1962)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>() 
 ; Statement: if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReader: int level> 
(assert (not (not (= (ite var1926 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1034 var3908 var3908-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var984 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var984)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var984!1 String)
(assert (= var984!1 ""))
(assert true)
(define-const var3448 String (append/672562846 var984!1 "illegal input, offset ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, offset ") 
(declare-const var984!2 String)
(assert (= var984!2 (str.++ var984!1 "illegal input, offset ")))
(define-const var3379 Int (offset/1287024874 var1962)) ; Statement: $i7 = r0.<com.alibaba.fastjson2.JSONReader: int offset> 
(assert true)
(define-const var2201 String (append/-1001720160 var3448 var3379)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var3448!1 String)
(assert (str.prefixof var3448 var3448!1))
(assert true)
(define-const var902 String (append/672562846 var2201 ", char ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ") 
(declare-const var2201!1 String)
(assert (= var2201!1 (str.++ var2201 ", char ")))
(define-const var823 Int (ch/1287024874 var1962)) ; Statement: $c8 = r0.<com.alibaba.fastjson2.JSONReader: char ch> 
(assert true)
(define-const var1610 String (append/-1166366385 var902 var823)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c8) 
(declare-const var902!1 String)
(assert (str.prefixof var902 var902!1))
(assert true)
(define-const var2914 String (toString/-2075883882 var1610)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1034 var2914)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r15) 

(declare-const var1034!1 var3908)
(declare-const var2914!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfArrayStart/1644613984=([com.alibaba.fastjson2.JSONReader], boolean), var3908-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3819=com.alibaba.fastjson2.JSONReader, var1962=r0, var1537=java.util.Collection, var2103=r3, var1926=$z0, var3908=com.alibaba.fastjson2.JSONException, var1034=$r9, var984=$r10, var3448=$r11, var3379=$i7, var2201=$r12, var902=$r13, var823=$c8, var1610=$r14, var2914=$r15}
; {com.alibaba.fastjson2.JSONReader=var3819, r0=var1962, java.util.Collection=var1537, r3=var2103, $z0=var1926, com.alibaba.fastjson2.JSONException=var3908, $r9=var1034, $r10=var984, $r11=var3448, $i7=var3379, $r12=var2201, $r13=var902, $c8=var823, $r14=var1610, $r15=var2914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r3 := @parameter0: java.util.Collection;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>();	if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReader: int level>;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal input, offset ");	$i7 = r0.<com.alibaba.fastjson2.JSONReader: int offset>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ");	$c8 = r0.<com.alibaba.fastjson2.JSONReader: char ch>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c8);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2