(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3131 0)
(declare-sort var2936 0)
(declare-sort var3190 0)
(declare-sort var258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var2936 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var2936) Int)
(declare-fun var258-init () var258)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var2936) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var258 String) void)
(declare-const null-var3131 var3131)
(declare-const null-var2936 var2936)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3190 var3190)
(declare-const null-Int Int)
(declare-const var3131-TYPE_HASH Int)
(declare-const var3759 var3131) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray 
(assert (not (= var3759 null-var3131)))
(declare-const var3198 var2936) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3198 null-var2936)))
(declare-const var2255 ClassObject) ; Statement: r14 := @parameter1: java.lang.reflect.Type 
(assert (not (= var2255 null-ClassObject)))
(declare-const var2399 var3190) ; Statement: r15 := @parameter2: java.lang.Object 
(assert (not (= var2399 null-var3190)))
(declare-const var44 Int) ; Statement: l5 := @parameter3: long 
(assert (not (= var44 null-Int)))
(assert true)
(define-const var404 Bool (nextIfMatch/-1486561452 var3198 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>() 
(assert (not (= (ite var404 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var876 Int (readTypeHashCode/-2035886982 var3198)) ; Statement: l6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var3646 Int var3131-TYPE_HASH) ; Statement: $l3 = <com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray: long TYPE_HASH> 
(define-const var952 Int (ite (> var876 var3646) 1 (ite (< var876 var3646) (- 1) 0))) ; Statement: $b4 = l6 cmp $l3 
 ; Statement: if $b4 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>() 
(assert (not (= var952 0))) ; Negate: Cond: $b4 == 0  
(define-const var2397 var258 var258-init) ; Statement: $r18 = new com.alibaba.fastjson2.JSONException 
(define-const var3840 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3840)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3840!1 String)
(assert (= var3840!1 ""))
(assert true)
(define-const var3953 String (append/672562846 var3840!1 "not support autoType : ")) ; Statement: $r11 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var3840!2 String)
(assert (= var3840!2 (str.++ var3840!1 "not support autoType : ")))
(assert true)
(define-const var1253 String (getString/1018493317 var3198)) ; Statement: $r10 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var1919 String (append/672562846 var3953 var1253)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3953!1 String)
(assert (= var3953!1 (str.++ var3953 var1253)))
(assert true)
(define-const var2479 String (toString/-2075883882 var1919)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2397 var2479)) ; Statement: specialinvoke $r18.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var2397!1 var258)
(declare-const var2479!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var258-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3131=com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray, var3759=r2, var2936=com.alibaba.fastjson2.JSONReader, var3198=r0, var2255=r14, var3190=java.lang.Object, var2399=r15, var44=l5, var404=$z0, var876=l6, var3646=$l3, var952=$b4, var258=com.alibaba.fastjson2.JSONException, var2397=$r18, var3840=$r17, var3953=$r11, var1253=$r10, var1919=$r12, var2479=$r13}
; {com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray=var3131, r2=var3759, com.alibaba.fastjson2.JSONReader=var2936, r0=var3198, r14=var2255, java.lang.Object=var3190, r15=var2399, l5=var44, $z0=var404, l6=var876, $l3=var3646, $b4=var952, com.alibaba.fastjson2.JSONException=var258, $r18=var2397, $r17=var3840, $r11=var3953, $r10=var1253, $r12=var1919, $r13=var2479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r14 := @parameter1: java.lang.reflect.Type;	r15 := @parameter2: java.lang.Object;	l5 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>();	l6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l3 = <com.alibaba.fastjson2.reader.ObjectReaderImplCharValueArray: long TYPE_HASH>;	$b4 = l6 cmp $l3;	if $b4 == 0 goto $z1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isString()>();	$r18 = new com.alibaba.fastjson2.JSONException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r10 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r18
;block_num 3