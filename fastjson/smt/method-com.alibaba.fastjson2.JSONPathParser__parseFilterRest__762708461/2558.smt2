(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var636 0)
(declare-sort var3897 0)
(declare-sort var3176 0)
(declare-sort var3064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonReader/1677379915 (var636) var3176)
(declare-fun ch/1287024874 (var3176) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3064-init () var3064)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3064 String) void)
(declare-const null-var636 var636)
(declare-const null-var3897 var3897)
(declare-const var123 var636) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONPathParser 
(assert (not (= var123 null-var636)))
(declare-const var2471 var3897) ; Statement: r4 := @parameter0: com.alibaba.fastjson2.JSONPathSegment 
(assert (not (= var2471 null-var3897)))
(define-const var128 var3176 (jsonReader/1677379915 var123)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader> 
(define-const var1371 Int (ch/1287024874 var128)) ; Statement: $c0 = $r1.<com.alibaba.fastjson2.JSONReader: char ch> 
(define-const var291 Int (cast-from-Int-to-Int var1371)) ; Statement: $i5 = (int) $c0 
 ; Statement: lookupswitch($i5) {     case 38: goto $r34 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 65: goto $r27 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 79: goto $r20 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 97: goto $r27 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 111: goto $r20 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 124: goto $r2 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     default: goto $r56 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (not (= var291 124)) (and (not (= var291 111)) (and (not (= var291 97)) (and (not (= var291 79)) (and (not (= var291 65)) (and (not (= var291 38)) true))))))) ; Intersect: Negate: Cond: $i5 == 124   and Intersect: Negate: Cond: $i5 == 111   and Intersect: Negate: Cond: $i5 == 97   and Intersect: Negate: Cond: $i5 == 79   and Intersect: Negate: Cond: $i5 == 65   and Intersect: Negate: Cond: $i5 == 38   and Non Conditional      
(define-const var774 var3064 var3064-init) ; Statement: $r56 = new com.alibaba.fastjson2.JSONException 
(define-const var3247 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3247)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3247!1 String)
(assert (= var3247!1 ""))
(assert true)
(define-const var338 String (append/672562846 var3247!1 "TODO : ")) ; Statement: $r42 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ") 
(declare-const var3247!2 String)
(assert (= var3247!2 (str.++ var3247!1 "TODO : ")))
(define-const var2272 var3176 (jsonReader/1677379915 var123)) ; Statement: $r41 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader> 
(define-const var3445 Int (ch/1287024874 var2272)) ; Statement: $c3 = $r41.<com.alibaba.fastjson2.JSONReader: char ch> 
(assert true)
(define-const var2120 String (append/-1166366385 var338 var3445)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var338!1 String)
(assert (str.prefixof var338 var338!1))
(assert true)
(define-const var3706 String (toString/-2075883882 var2120)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var774 var3706)) ; Statement: specialinvoke $r56.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r44) 

(declare-const var774!1 var3064)
(declare-const var3706!1 String)
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonReader/1677379915=([com.alibaba.fastjson2.JSONPathParser], com.alibaba.fastjson2.JSONReader), ch/1287024874=([com.alibaba.fastjson2.JSONReader], char), cast-from-Int-to-Int=([char], int), var3064-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var636=com.alibaba.fastjson2.JSONPathParser, var123=r0, var3897=com.alibaba.fastjson2.JSONPathSegment, var2471=r4, var3176=com.alibaba.fastjson2.JSONReader, var128=$r1, var1371=$c0, var291=$i5, var3064=com.alibaba.fastjson2.JSONException, var774=$r56, var3247=$r55, var338=$r42, var2272=$r41, var3445=$c3, var2120=$r43, var3706=$r44}
; {com.alibaba.fastjson2.JSONPathParser=var636, r0=var123, com.alibaba.fastjson2.JSONPathSegment=var3897, r4=var2471, com.alibaba.fastjson2.JSONReader=var3176, $r1=var128, $c0=var1371, $i5=var291, com.alibaba.fastjson2.JSONException=var3064, $r56=var774, $r55=var3247, $r42=var338, $r41=var2272, $c3=var3445, $r43=var2120, $r44=var3706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONPathParser;	r4 := @parameter0: com.alibaba.fastjson2.JSONPathSegment;	$r1 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;	$c0 = $r1.<com.alibaba.fastjson2.JSONReader: char ch>;	$i5 = (int) $c0;	lookupswitch($i5) {     case 38: goto $r34 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 65: goto $r27 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 79: goto $r20 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 97: goto $r27 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 111: goto $r20 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     case 124: goto $r2 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;     default: goto $r56 = new com.alibaba.fastjson2.JSONException; };	$r56 = new com.alibaba.fastjson2.JSONException;	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ");	$r41 = r0.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONReader jsonReader>;	$c3 = $r41.<com.alibaba.fastjson2.JSONReader: char ch>;	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r56.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r44);	throw $r56
;block_num 2