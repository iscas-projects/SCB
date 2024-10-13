(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3843 0)
(declare-sort var2601 0)
(declare-sort var3742 0)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startArray/-1126310615 (var2601) Int)
(declare-fun var2410-init () var2410)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/1950851072 (var2601) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2410 String) void)
(declare-const null-var3843 var3843)
(declare-const null-var2601 var2601)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3742 var3742)
(declare-const null-Int Int)
(declare-const var608 var3843) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField 
(assert (not (= var608 null-var3843)))
(declare-const var1004 var2601) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1004 null-var2601)))
(declare-const var2293 ClassObject) ; Statement: r12 := @parameter1: java.lang.reflect.Type 
(assert (not (= var2293 null-ClassObject)))
(declare-const var2422 var3742) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var2422 null-var3742)))
(declare-const var574 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var574 null-Int)))
(assert true)
(define-const var2209 Int (startArray/-1126310615 var1004)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
 ; Statement: if i0 == 2 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert (not (= var2209 2))) ; Negate: Cond: i0 == 2  
(define-const var2461 var2410 var2410-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var221 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var221)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var221!1 String)
(assert (= var221!1 ""))
(assert true)
(define-const var1089 String (append/672562846 var221!1 "not support input ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ") 
(declare-const var221!2 String)
(assert (= var221!2 (str.++ var221!1 "not support input ")))
(assert true)
(define-const var3737 String (info/1950851072 var1004)) ; Statement: $r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>() 
(assert true)
(define-const var3859 String (append/672562846 var1089 var3737)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1089!1 String)
(assert (= var1089!1 (str.++ var1089 var3737)))
(assert true)
(define-const var3798 String (toString/-2075883882 var3859)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2461 var3798)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var2461!1 var2410)
(declare-const var3798!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), var2410-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/1950851072=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3843=com.alibaba.fastjson2.reader.ObjectReaderImplField, var608=r3, var2601=com.alibaba.fastjson2.JSONReader, var1004=r0, var2293=r12, var3742=java.lang.Object, var2422=r13, var574=l1, var2209=i0, var2410=com.alibaba.fastjson2.JSONException, var2461=$r6, var221=$r7, var1089=$r9, var3737=$r8, var3859=$r10, var3798=$r11}
; {com.alibaba.fastjson2.reader.ObjectReaderImplField=var3843, r3=var608, com.alibaba.fastjson2.JSONReader=var2601, r0=var1004, r12=var2293, java.lang.Object=var3742, r13=var2422, l1=var574, i0=var2209, com.alibaba.fastjson2.JSONException=var2410, $r6=var2461, $r7=var221, $r9=var1089, $r8=var3737, $r10=var3859, $r11=var3798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r12 := @parameter1: java.lang.reflect.Type;	r13 := @parameter2: java.lang.Object;	l1 := @parameter3: long;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	if i0 == 2 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ");	$r8 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2