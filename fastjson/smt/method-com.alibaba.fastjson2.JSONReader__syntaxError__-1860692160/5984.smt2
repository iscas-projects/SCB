(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var158-init () var158)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var158 String) void)
(declare-const null-Int Int)
(declare-const var3920 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3920 null-Int)))
(declare-const var1966 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1966 null-Int)))
(define-const var1516 var158 var158-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var2740 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2740)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2740!1 String)
(assert (= var2740!1 ""))
(assert true)
(define-const var703 String (append/672562846 var2740!1 "syntax error, offset ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax error, offset ") 
(declare-const var2740!2 String)
(assert (= var2740!2 (str.++ var2740!1 "syntax error, offset ")))
(assert true)
(define-const var918 String (append/-1001720160 var703 var3920)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var703!1 String)
(assert (str.prefixof var703 var703!1))
(assert true)
(define-const var1128 String (append/672562846 var918 ", char ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ") 
(declare-const var918!1 String)
(assert (= var918!1 (str.++ var918 ", char ")))
(define-const var3116 Int (cast-from-Int-to-Int var1966)) ; Statement: $c2 = (char) i1 
(assert true)
(define-const var1366 String (append/-1166366385 var1128 var3116)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var1128!1 String)
(assert (str.prefixof var1128 var1128!1))
(assert true)
(define-const var1859 String (toString/-2075883882 var1366)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1516 var1859)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var1516!1 var158)
(declare-const var1859!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var158-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3920=i0, var1966=i1, var158=com.alibaba.fastjson2.JSONException, var1516=$r0, var2740=$r1, var703=$r2, var918=$r3, var1128=$r4, var3116=$c2, var1366=$r5, var1859=$r6}
; {i0=var3920, i1=var1966, com.alibaba.fastjson2.JSONException=var158, $r0=var1516, $r1=var2740, $r2=var703, $r3=var918, $r4=var1128, $c2=var3116, $r5=var1366, $r6=var1859}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("syntax error, offset ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ");	$c2 = (char) i1;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1