(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var2427 0)
(declare-sort var3980 0)
(declare-sort var2142 0)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var2427) String)
(declare-fun cast-from-var2365-to-var2427 (var2365) var2427)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3980-init () var3980)
(declare-fun cast-from-var2365-to-var2142 (var2365) var2142)
(declare-fun arr-var1901-init () (Array Int var1901))
(declare-fun <init>/-1237328469 (var3980 String var2142 (Array Int var1901)) void)
(declare-const null-var2365 var2365)
(declare-const var2445 var2365) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPathSegment 
(assert (not (= var2445 null-var2365)))
(define-const var2824 Bool false) ; Statement: $z0 = r0 instanceof com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment 
 ; Statement: if $z0 != 0 goto r11 = "$" 
(assert (not (= (ite var2824 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1982 String "$") ; Statement: r11 = "$" 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var744 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var744)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var744!1 String)
(assert (= var744!1 ""))
(assert true)
(define-const var1803 String (append/672562846 var744!1 var1982)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var744!2 String)
(assert (= var744!2 (str.++ var744!1 var1982)))
(assert true)
(define-const var1262 String (toString/-522406933 (cast-from-var2365-to-var2427 var2445))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3622 String (append/672562846 var1803 var1262)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1803!1 String)
(assert (= var1803!1 (str.++ var1803 var1262)))
(assert true)
(define-const var3898 String (toString/-2075883882 var3622)) ; Statement: $r10 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3559 Bool false) ; Statement: $z1 = r0 instanceof com.alibaba.fastjson2.JSONPathSegmentName 
 ; Statement: if $z1 == 0 goto $r5 = new com.alibaba.fastjson2.JSONPathSingle 
(assert (not (= (ite var3559 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1276 var3980 var3980-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONPathSingleName 
(define-const var206 var2142 (cast-from-var2365-to-var2142 var2445)) ; Statement: $r9 = (com.alibaba.fastjson2.JSONPathSegmentName) r0 
(define-const var92 (Array Int var1901) arr-var1901-init) ; Statement: $r8 = newarray (com.alibaba.fastjson2.JSONPath$Feature)[0] 
(assert true)
;(assert (<init>/-1237328469 var1276 var3898 var206 var92)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONPathSingleName: void <init>(java.lang.String,com.alibaba.fastjson2.JSONPathSegmentName,com.alibaba.fastjson2.JSONPath$Feature[])>($r10, $r9, $r8) 

(declare-const var1276!1 var3980)
(declare-const var3898!1 String)
(declare-const var206!1 var2142)
(declare-const var92!1 (Array Int var1901))
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2365-to-var2427=([com.alibaba.fastjson2.JSONPathSegment], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3980-init=([], com.alibaba.fastjson2.JSONPathSingleName), cast-from-var2365-to-var2142=([com.alibaba.fastjson2.JSONPathSegment], com.alibaba.fastjson2.JSONPathSegmentName), arr-var1901-init=([], com.alibaba.fastjson2.JSONPath$Feature[]), <init>/-1237328469=([com.alibaba.fastjson2.JSONPathSingleName, java.lang.String, com.alibaba.fastjson2.JSONPathSegmentName, com.alibaba.fastjson2.JSONPath$Feature[]], void)}
; {var2365=com.alibaba.fastjson2.JSONPathSegment, var2445=r0, var2824=$z0, var1982=r11, var744=$r1, var1803=$r3, var2427=java.lang.Object, var1262=$r2, var3622=$r4, var3898=$r10, var3559=$z1, var3980=com.alibaba.fastjson2.JSONPathSingleName, var1276=$r7, var2142=com.alibaba.fastjson2.JSONPathSegmentName, var206=$r9, var1901=com.alibaba.fastjson2.JSONPath$Feature, var92=$r8}
; {com.alibaba.fastjson2.JSONPathSegment=var2365, r0=var2445, $z0=var2824, r11=var1982, $r1=var744, $r3=var1803, java.lang.Object=var2427, $r2=var1262, $r4=var3622, $r10=var3898, $z1=var3559, com.alibaba.fastjson2.JSONPathSingleName=var3980, $r7=var1276, com.alibaba.fastjson2.JSONPathSegmentName=var2142, $r9=var206, com.alibaba.fastjson2.JSONPath$Feature=var1901, $r8=var92}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.alibaba.fastjson2.JSONPathSegment;	$z0 = r0 instanceof com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment;	if $z0 != 0 goto r11 = "$";	r11 = "$";	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r10 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r0 instanceof com.alibaba.fastjson2.JSONPathSegmentName;	if $z1 == 0 goto $r5 = new com.alibaba.fastjson2.JSONPathSingle;	$r7 = new com.alibaba.fastjson2.JSONPathSingleName;	$r9 = (com.alibaba.fastjson2.JSONPathSegmentName) r0;	$r8 = newarray (com.alibaba.fastjson2.JSONPath$Feature)[0];	specialinvoke $r7.<com.alibaba.fastjson2.JSONPathSingleName: void <init>(java.lang.String,com.alibaba.fastjson2.JSONPathSegmentName,com.alibaba.fastjson2.JSONPath$Feature[])>($r10, $r9, $r8);	return $r7
;block_num 4