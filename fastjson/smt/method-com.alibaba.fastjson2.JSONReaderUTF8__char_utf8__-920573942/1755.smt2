(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1422 0)
(declare-sort var635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/956814203 (var1422) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var635-init () var635)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var635 String) void)
(declare-const null-var1422 var1422)
(declare-const null-Int Int)
(declare-const var3092 var1422) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8 
(assert (not (= var3092 null-var1422)))
(declare-const var1833 Int) ; Statement: i20 := @parameter0: int 
(assert (not (= var1833 null-Int)))
(declare-const var3034 Int) ; Statement: i21 := @parameter1: int 
(assert (not (= var3034 null-Int)))
(define-const var1030 (Array Int Int) (bytes/956814203 var3092)) ; Statement: r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes> 
(define-const var2377 Int (bv2nat (bvand ((_ int2bv 64) var1833) ((_ int2bv 64) 255)))) ; Statement: $i0 = i20 & 255 
(define-const var2310 Int (div var2377 (to_int (^ 2 4)))) ; Statement: $i1 = $i0 >> 4 
 ; Statement: tableswitch($i1) {     case 12: goto $i7 = i20 & 255;     case 13: goto $i7 = i20 & 255;     case 14: goto $i5 = i20 & 255;     default: goto $i8 = i20 >> 3; } 
(assert (and (not (= var2310 14)) (and (not (= var2310 13)) (and (not (= var2310 12)) true)))) ; Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Non Conditional   
(define-const var1043 Int (div var1833 (to_int (^ 2 3)))) ; Statement: $i8 = i20 >> 3 
(define-const var3728 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i29 = (int) -2 
 ; Statement: if $i8 != $i29 goto $r8 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var1043 var3728))) ; Cond: $i8 != $i29 
(define-const var1938 var635 var635-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var983 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var983)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var983!1 String)
(assert (= var983!1 ""))
(assert true)
(define-const var94 String (append/672562846 var983!1 "malformed input around byte ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ") 
(declare-const var983!2 String)
(assert (= var983!2 (str.++ var983!1 "malformed input around byte ")))
(assert true)
(define-const var2941 String (append/-1001720160 var94 var3034)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i21) 
(declare-const var94!1 String)
(assert (str.prefixof var94 var94!1))
(assert true)
(define-const var502 String (toString/-2075883882 var2941)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1938 var502)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var1938!1 var635)
(declare-const var502!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/956814203=([com.alibaba.fastjson2.JSONReaderUTF8], byte[]), cast-from-Int-to-Int=([int], int), var635-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1422=com.alibaba.fastjson2.JSONReaderUTF8, var3092=r0, var1833=i20, var3034=i21, var1030=r1, var2377=$i0, var2310=$i1, var1043=$i8, var3728=$i29, var635=com.alibaba.fastjson2.JSONException, var1938=$r8, var983=$r7, var94=$r4, var2941=$r5, var502=$r6}
; {com.alibaba.fastjson2.JSONReaderUTF8=var1422, r0=var3092, i20=var1833, i21=var3034, r1=var1030, $i0=var2377, $i1=var2310, $i8=var1043, $i29=var3728, com.alibaba.fastjson2.JSONException=var635, $r8=var1938, $r7=var983, $r4=var94, $r5=var2941, $r6=var502}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF8;	i20 := @parameter0: int;	i21 := @parameter1: int;	r1 = r0.<com.alibaba.fastjson2.JSONReaderUTF8: byte[] bytes>;	$i0 = i20 & 255;	$i1 = $i0 >> 4;	tableswitch($i1) {     case 12: goto $i7 = i20 & 255;     case 13: goto $i7 = i20 & 255;     case 14: goto $i5 = i20 & 255;     default: goto $i8 = i20 >> 3; };	$i8 = i20 >> 3;	$i29 = (int) -2;	if $i8 != $i29 goto $r8 = new com.alibaba.fastjson2.JSONException;	$r8 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i21);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 3