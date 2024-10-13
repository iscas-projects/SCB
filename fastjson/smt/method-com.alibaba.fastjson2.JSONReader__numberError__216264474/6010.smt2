(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1537-init () var1537)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1537 String) void)
(declare-const null-Int Int)
(declare-const var2245 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2245 null-Int)))
(declare-const var1426 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1426 null-Int)))
(define-const var2751 var1537 var1537-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3788 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3788)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3788!1 String)
(assert (= var3788!1 ""))
(assert true)
(define-const var833 String (append/672562846 var3788!1 "illegal number, offset ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal number, offset ") 
(declare-const var3788!2 String)
(assert (= var3788!2 (str.++ var3788!1 "illegal number, offset ")))
(assert true)
(define-const var3176 String (append/-1001720160 var833 var2245)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var833!1 String)
(assert (str.prefixof var833 var833!1))
(assert true)
(define-const var3035 String (append/672562846 var3176 ", char ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ") 
(declare-const var3176!1 String)
(assert (= var3176!1 (str.++ var3176 ", char ")))
(define-const var585 Int (cast-from-Int-to-Int var1426)) ; Statement: $c2 = (char) i1 
(assert true)
(define-const var3865 String (append/-1166366385 var3035 var585)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3035!1 String)
(assert (str.prefixof var3035 var3035!1))
(assert true)
(define-const var3993 String (toString/-2075883882 var3865)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2751 var3993)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var2751!1 var1537)
(declare-const var3993!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1537-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2245=i0, var1426=i1, var1537=com.alibaba.fastjson2.JSONException, var2751=$r0, var3788=$r1, var833=$r2, var3176=$r3, var3035=$r4, var585=$c2, var3865=$r5, var3993=$r6}
; {i0=var2245, i1=var1426, com.alibaba.fastjson2.JSONException=var1537, $r0=var2751, $r1=var3788, $r2=var833, $r3=var3176, $r4=var3035, $c2=var585, $r5=var3865, $r6=var3993}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal number, offset ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", char ");	$c2 = (char) i1;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1