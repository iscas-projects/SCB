(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var288 0)
(declare-sort var906 0)
(declare-sort var2621 0)
(declare-sort var653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var906) String)
(declare-fun cast-from-var288-to-var906 (var288) var906)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2621-init () var2621)
(declare-fun arr-var653-init () (Array Int var653))
(declare-fun <init>/-466687209 (var2621 var288 String (Array Int var653)) void)
(declare-const null-var288 var288)
(declare-const var3184 var288) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPathSegment 
(assert (not (= var3184 null-var288)))
(define-const var2542 Bool false) ; Statement: $z0 = r0 instanceof com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment 
 ; Statement: if $z0 != 0 goto r11 = "$" 
(assert (not (= (ite var2542 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3879 String "$") ; Statement: r11 = "$" 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2096 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2096)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2096!1 String)
(assert (= var2096!1 ""))
(assert true)
(define-const var950 String (append/672562846 var2096!1 var3879)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var2096!2 String)
(assert (= var2096!2 (str.++ var2096!1 var3879)))
(assert true)
(define-const var1828 String (toString/-522406933 (cast-from-var288-to-var906 var3184))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2920 String (append/672562846 var950 var1828)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var950!1 String)
(assert (= var950!1 (str.++ var950 var1828)))
(assert true)
(define-const var3758 String (toString/-2075883882 var2920)) ; Statement: $r10 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3282 Bool false) ; Statement: $z1 = r0 instanceof com.alibaba.fastjson2.JSONPathSegmentName 
 ; Statement: if $z1 == 0 goto $r5 = new com.alibaba.fastjson2.JSONPathSingle 
(assert (= (ite var3282 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1249 var2621 var2621-init) ; Statement: $r5 = new com.alibaba.fastjson2.JSONPathSingle 
(define-const var1965 (Array Int var653) arr-var653-init) ; Statement: $r6 = newarray (com.alibaba.fastjson2.JSONPath$Feature)[0] 
(assert true)
;(assert (<init>/-466687209 var1249 var3184 var3758 var1965)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.JSONPathSingle: void <init>(com.alibaba.fastjson2.JSONPathSegment,java.lang.String,com.alibaba.fastjson2.JSONPath$Feature[])>(r0, $r10, $r6) 

(declare-const var1249!1 var2621)
(declare-const var3184!1 var288)
(declare-const var3758!1 String)
(declare-const var1965!1 (Array Int var653))
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var288-to-var906=([com.alibaba.fastjson2.JSONPathSegment], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2621-init=([], com.alibaba.fastjson2.JSONPathSingle), arr-var653-init=([], com.alibaba.fastjson2.JSONPath$Feature[]), <init>/-466687209=([com.alibaba.fastjson2.JSONPathSingle, com.alibaba.fastjson2.JSONPathSegment, java.lang.String, com.alibaba.fastjson2.JSONPath$Feature[]], void)}
; {var288=com.alibaba.fastjson2.JSONPathSegment, var3184=r0, var2542=$z0, var3879=r11, var2096=$r1, var950=$r3, var906=java.lang.Object, var1828=$r2, var2920=$r4, var3758=$r10, var3282=$z1, var2621=com.alibaba.fastjson2.JSONPathSingle, var1249=$r5, var653=com.alibaba.fastjson2.JSONPath$Feature, var1965=$r6}
; {com.alibaba.fastjson2.JSONPathSegment=var288, r0=var3184, $z0=var2542, r11=var3879, $r1=var2096, $r3=var950, java.lang.Object=var906, $r2=var1828, $r4=var2920, $r10=var3758, $z1=var3282, com.alibaba.fastjson2.JSONPathSingle=var2621, $r5=var1249, com.alibaba.fastjson2.JSONPath$Feature=var653, $r6=var1965}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.alibaba.fastjson2.JSONPathSegment;	$z0 = r0 instanceof com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment;	if $z0 != 0 goto r11 = "$";	r11 = "$";	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r10 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r0 instanceof com.alibaba.fastjson2.JSONPathSegmentName;	if $z1 == 0 goto $r5 = new com.alibaba.fastjson2.JSONPathSingle;	$r5 = new com.alibaba.fastjson2.JSONPathSingle;	$r6 = newarray (com.alibaba.fastjson2.JSONPath$Feature)[0];	specialinvoke $r5.<com.alibaba.fastjson2.JSONPathSingle: void <init>(com.alibaba.fastjson2.JSONPathSegment,java.lang.String,com.alibaba.fastjson2.JSONPath$Feature[])>(r0, $r10, $r6);	return $r5
;block_num 4