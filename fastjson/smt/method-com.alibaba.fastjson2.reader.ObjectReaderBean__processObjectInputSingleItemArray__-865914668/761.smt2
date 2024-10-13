(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var151 0)
(declare-sort var1616 0)
(declare-sort var1546 0)
(declare-sort var112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun typeName/1914013406 (var2751) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var151 String) String)
(declare-fun features/1261973284 (var151 Int) Int)
(declare-fun mask/1918454044 (var1546) Int)
(declare-fun var112-init () var112)
(declare-fun <init>/-2099196170 (var112 String) void)
(declare-const null-var2751 var2751)
(declare-const null-var151 var151)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1616 var1616)
(declare-const null-Int Int)
(declare-const var1546-SupportSmartMatch var1546)
(declare-const var1021 var2751) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderBean 
(assert (not (= var1021 null-var2751)))
(declare-const var2111 var151) ; Statement: r6 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2111 null-var151)))
(declare-const var576 ClassObject) ; Statement: r8 := @parameter1: java.lang.reflect.Type 
(assert (not (= var576 null-ClassObject)))
(declare-const var1793 var1616) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var1793 null-var1616)))
(declare-const var982 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var982 null-Int)))
(define-const var3416 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3416)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3416!1 String)
(assert (= var3416!1 ""))
(assert true)
(define-const var2714 String (append/672562846 var3416!1 "expect {, but [, class ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect {, but [, class ") 
(declare-const var3416!2 String)
(assert (= var3416!2 (str.++ var3416!1 "expect {, but [, class ")))
(define-const var1980 String (typeName/1914013406 var1021)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderBean: java.lang.String typeName> 
(assert true)
(define-const var2974 String (append/672562846 var2714 var1980)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2714!1 String)
(assert (= var2714!1 (str.++ var2714 var1980)))
(assert true)
(define-const var855 String (toString/-2075883882 var2974)) ; Statement: r16 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if r5 == null goto $r15 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>(r16) 
(assert (= var1793 null-var1616)) ; Cond: r5 == null 
(assert true)
(define-const var725 String (info/-1659839707 var2111 var855)) ; Statement: $r15 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>(r16) 
(assert true)
(define-const var869 Int (features/1261973284 var2111 var982)) ; Statement: $l6 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: long features(long)>(l0) 
(define-const var1944 var1546 var1546-SupportSmartMatch) ; Statement: $r7 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature SupportSmartMatch> 
(define-const var2941 Int (mask/1918454044 var1944)) ; Statement: $l1 = $r7.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var2984 Int (bv2nat (bvand ((_ int2bv 64) var869) ((_ int2bv 64) var2941)))) ; Statement: $l2 = $l6 & $l1 
(define-const var2718 Int (ite (> var2984 0) 1 (ite (< var2984 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
 ; Statement: if $b3 == 0 goto $r18 = new com.alibaba.fastjson2.JSONException 
(assert (= var2718 0)) ; Cond: $b3 == 0 
(define-const var1582 var112 var112-init) ; Statement: $r18 = new com.alibaba.fastjson2.JSONException 
(assert true)
;(assert (<init>/-2099196170 var1582 var725)) ; Statement: specialinvoke $r18.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r15) 

(declare-const var1582!1 var112)
(declare-const var725!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), typeName/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), features/1261973284=([com.alibaba.fastjson2.JSONReader, long], long), mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), var112-init=([], com.alibaba.fastjson2.JSONException), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2751=com.alibaba.fastjson2.reader.ObjectReaderBean, var1021=r1, var151=com.alibaba.fastjson2.JSONReader, var2111=r6, var576=r8, var1616=java.lang.Object, var1793=r5, var982=l0, var3416=$r0, var2714=$r3, var1980=$r2, var2974=$r4, var855=r16, var725=$r15, var869=$l6, var1546=com.alibaba.fastjson2.JSONReader$Feature, var1944=$r7, var2941=$l1, var2984=$l2, var2718=$b3, var112=com.alibaba.fastjson2.JSONException, var1582=$r18}
; {com.alibaba.fastjson2.reader.ObjectReaderBean=var2751, r1=var1021, com.alibaba.fastjson2.JSONReader=var151, r6=var2111, r8=var576, java.lang.Object=var1616, r5=var1793, l0=var982, $r0=var3416, $r3=var2714, $r2=var1980, $r4=var2974, r16=var855, $r15=var725, $l6=var869, com.alibaba.fastjson2.JSONReader$Feature=var1546, $r7=var1944, $l1=var2941, $l2=var2984, $b3=var2718, com.alibaba.fastjson2.JSONException=var112, $r18=var1582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderBean;	r6 := @parameter0: com.alibaba.fastjson2.JSONReader;	r8 := @parameter1: java.lang.reflect.Type;	r5 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect {, but [, class ");	$r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderBean: java.lang.String typeName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r16 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	if r5 == null goto $r15 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>(r16);	$r15 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>(r16);	$l6 = virtualinvoke r6.<com.alibaba.fastjson2.JSONReader: long features(long)>(l0);	$r7 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature SupportSmartMatch>;	$l1 = $r7.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l2 = $l6 & $l1;	$b3 = $l2 cmp 0L;	if $b3 == 0 goto $r18 = new com.alibaba.fastjson2.JSONException;	$r18 = new com.alibaba.fastjson2.JSONException;	specialinvoke $r18.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r15);	throw $r18
;block_num 3