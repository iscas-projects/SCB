(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var646 0)
(declare-sort var3770 0)
(declare-sort var3833 0)
(declare-sort var2506 0)
(declare-sort var600 0)
(declare-sort var1121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mask/1918454044 (var3770) Int)
(declare-fun creator/1914013406 (var2506) var3833)
(declare-fun cast-from-var646-to-var2506 (var646) var2506)
(declare-fun var600-init () var600)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun objectClass/1914013406 (var2506) ClassObject)
(declare-fun append/-1031950772 (String var1121) String)
(declare-fun cast-from-ClassObject-to-var1121 (ClassObject) var1121)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var600 String) void)
(declare-const null-var646 var646)
(declare-const null-Int Int)
(declare-const var3770-UseDefaultConstructorAsPossible var3770)
(declare-const null-var3833 var3833)
(declare-const var3003 var646) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderAdapter 
(assert (not (= var3003 null-var646)))
(declare-const var1527 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1527 null-Int)))
(define-const var3268 var3770 var3770-UseDefaultConstructorAsPossible) ; Statement: $r0 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature UseDefaultConstructorAsPossible> 
(define-const var3089 Int (mask/1918454044 var3268)) ; Statement: $l1 = $r0.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var280 Int (bv2nat (bvand ((_ int2bv 64) var1527) ((_ int2bv 64) var3089)))) ; Statement: $l2 = l0 & $l1 
(define-const var2969 Int (ite (> var280 0) 1 (ite (< var280 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
 ; Statement: if $b3 == 0 goto $r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert (= var2969 0)) ; Cond: $b3 == 0 
(define-const var2708 var3833 (creator/1914013406 (cast-from-var646-to-var2506 var3003))) ; Statement: $r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
 ; Statement: if $r22 != null goto $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert (not (not (= var2708 null-var3833)))) ; Negate: Cond: $r22 != null  
(define-const var2889 var600 var600-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3265 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3265)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3265!1 String)
(assert (= var3265!1 ""))
(assert true)
(define-const var468 String (append/672562846 var3265!1 "create instance error, ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create instance error, ") 
(declare-const var3265!2 String)
(assert (= var3265!2 (str.++ var3265!1 "create instance error, ")))
(define-const var1955 ClassObject (objectClass/1914013406 (cast-from-var646-to-var2506 var3003))) ; Statement: $r6 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.Class objectClass> 
(assert true)
(define-const var2947 String (append/-1031950772 var468 (cast-from-ClassObject-to-var1121 var1955))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var468!1 String)
(assert (str.prefixof var468 var468!1))
(assert true)
(define-const var299 String (toString/-2075883882 var2947)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2889 var299)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2889!1 var600)
(declare-const var299!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), creator/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.util.function.Supplier), cast-from-var646-to-var2506=([com.alibaba.fastjson2.reader.ObjectReaderAdapter], com.alibaba.fastjson2.reader.ObjectReaderBean), var600-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1121=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var646=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var3003=r1, var1527=l0, var3770=com.alibaba.fastjson2.JSONReader$Feature, var3268=$r0, var3089=$l1, var280=$l2, var2969=$b3, var3833=java.util.function.Supplier, var2506=com.alibaba.fastjson2.reader.ObjectReaderBean, var2708=$r22, var600=com.alibaba.fastjson2.JSONException, var2889=$r4, var3265=$r5, var468=$r7, var1955=$r6, var1121=java.lang.Object, var2947=$r8, var299=$r9}
; {com.alibaba.fastjson2.reader.ObjectReaderAdapter=var646, r1=var3003, l0=var1527, com.alibaba.fastjson2.JSONReader$Feature=var3770, $r0=var3268, $l1=var3089, $l2=var280, $b3=var2969, java.util.function.Supplier=var3833, com.alibaba.fastjson2.reader.ObjectReaderBean=var2506, $r22=var2708, com.alibaba.fastjson2.JSONException=var600, $r4=var2889, $r5=var3265, $r7=var468, $r6=var1955, java.lang.Object=var1121, $r8=var2947, $r9=var299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderAdapter;	l0 := @parameter0: long;	$r0 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature UseDefaultConstructorAsPossible>;	$l1 = $r0.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l2 = l0 & $l1;	$b3 = $l2 cmp 0L;	if $b3 == 0 goto $r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	$r22 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	if $r22 != null goto $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create instance error, ");	$r6 = r1.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.lang.Class objectClass>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 3