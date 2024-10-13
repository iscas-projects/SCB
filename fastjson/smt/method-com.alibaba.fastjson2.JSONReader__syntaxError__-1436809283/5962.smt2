(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3373-init () var3373)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3373 String) void)
(declare-const null-Int Int)
(declare-const var1039 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1039 null-Int)))
(define-const var2626 var3373 var3373-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3703 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3703)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3703!1 String)
(assert (= var3703!1 ""))
(assert true)
(define-const var2356 String (append/672562846 var3703!1 "syntax error, expect \u0027,\u0027, but \u0027")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax error, expect \',\', but \'") 
(declare-const var3703!2 String)
(assert (= var3703!2 (str.++ var3703!1 "syntax error, expect \u0027,\u0027, but \u0027")))
(define-const var859 Int (cast-from-Int-to-Int var1039)) ; Statement: $c1 = (char) i0 
(assert true)
(define-const var992 String (append/-1166366385 var2356 var859)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2356!1 String)
(assert (str.prefixof var2356 var2356!1))
(assert true)
(define-const var1327 String (append/672562846 var992 "\u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var992!1 String)
(assert (= var992!1 (str.++ var992 "\u0027")))
(assert true)
(define-const var3872 String (toString/-2075883882 var1327)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2626 var3872)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5) 

(declare-const var2626!1 var3373)
(declare-const var3872!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3373-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1039=i0, var3373=com.alibaba.fastjson2.JSONException, var2626=$r0, var3703=$r1, var2356=$r2, var859=$c1, var992=$r3, var1327=$r4, var3872=$r5}
; {i0=var1039, com.alibaba.fastjson2.JSONException=var3373, $r0=var2626, $r1=var3703, $r2=var2356, $c1=var859, $r3=var992, $r4=var1327, $r5=var3872}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax error, expect \',\', but \'");	$c1 = (char) i0;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5);	return $r0
;block_num 1