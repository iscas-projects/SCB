(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3996 0)
(declare-sort var241 0)
(declare-sort var2640 0)
(declare-sort var841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/956814203 (var3996) (Array Int Int))
(declare-fun offset/1287024874 (var241) Int)
(declare-fun cast-from-var3996-to-var241 (var3996) var241)
(declare-fun end/956814203 (var3996) Int)
(declare-fun var841-init () var841)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var841 String) void)
(declare-const null-var3996 var3996)
(declare-const null-var2640 var2640)
(declare-const var1089 var3996) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var1089 null-var3996)))
(define-const var3884 (Array Int Int) (bytes/956814203 var1089)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var2260 Int (offset/1287024874 (cast-from-var3996-to-var241 var1089))) ; Statement: i59 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset> 
(define-const var2792 var2640 null-var2640) ; Statement: r13 = null 
(define-const var3764 Int (+ var2260 2)) ; Statement: $i1 = i59 + 2 
(define-const var2227 Int (end/956814203 var1089)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int end> 
 ; Statement: if $i1 >= $i0 goto $i62 = i59 + 1 
(assert (>= var3764 var2227)) ; Cond: $i1 >= $i0 
(define-const var1310 Int (+ var2260 1)) ; Statement: $i62 = i59 + 1 
(define-const var138 Int (end/956814203 var1089)) ; Statement: $i63 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int end> 
 ; Statement: if $i62 >= $i63 goto $r32 = new com.alibaba.fastjson2.JSONException 
(assert (>= var1310 var138)) ; Cond: $i62 >= $i63 
(define-const var3627 var841 var841-init) ; Statement: $r32 = new com.alibaba.fastjson2.JSONException 
(define-const var3806 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3806)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3806!1 String)
(assert (= var3806!1 ""))
(assert true)
(define-const var1284 String (append/672562846 var3806!1 "json syntax error, not match null or new Date")) ; Statement: $r21 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null or new Date") 
(declare-const var3806!2 String)
(assert (= var3806!2 (str.++ var3806!1 "json syntax error, not match null or new Date")))
(assert true)
(define-const var2226 String (append/-1001720160 var1284 var2260)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i59) 
(declare-const var1284!1 String)
(assert (str.prefixof var1284 var1284!1))
(assert true)
(define-const var2872 String (toString/-2075883882 var2226)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3627 var2872)) ; Statement: specialinvoke $r32.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r23) 

(declare-const var3627!1 var841)
(declare-const var2872!1 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var3996-to-var241=([com.alibaba.fastjson2.JSONReaderUTF8], com.alibaba.fastjson2.JSONReader), end/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], int), var841-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3996=com.alibaba.fastjson2.JSONReaderUTF8, var1089=r0, var3884=r1, var241=com.alibaba.fastjson2.JSONReader, var2260=i59, var2640=java.util.Date, var2792=r13, var3764=$i1, var2227=$i0, var1310=$i62, var138=$i63, var841=com.alibaba.fastjson2.JSONException, var3627=$r32, var3806=$r31, var1284=$r21, var2226=$r22, var2872=$r23}
; {com.alibaba.fastjson2.JSONReaderUTF8=var3996, r0=var1089, r1=var3884, com.alibaba.fastjson2.JSONReader=var241, i59=var2260, java.util.Date=var2640, r13=var2792, $i1=var3764, $i0=var2227, $i62=var1310, $i63=var138, com.alibaba.fastjson2.JSONException=var841, $r32=var3627, $r31=var3806, $r21=var1284, $r22=var2226, $r23=var2872}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	i59 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int offset>;	r13 = null;	$i1 = i59 + 2;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int end>;	if $i1 >= $i0 goto $i62 = i59 + 1;	$i62 = i59 + 1;	$i63 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: int end>;	if $i62 >= $i63 goto $r32 = new com.alibaba.fastjson2.JSONException;	$r32 = new com.alibaba.fastjson2.JSONException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("json syntax error, not match null or new Date");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i59);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r23);	throw $r32
;block_num 3