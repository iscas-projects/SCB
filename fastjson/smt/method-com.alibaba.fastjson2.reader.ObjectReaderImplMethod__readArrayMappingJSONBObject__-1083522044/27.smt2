(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var443 0)
(declare-sort var3599 0)
(declare-sort var576 0)
(declare-sort var1595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startArray/-1126310615 (var3599) Int)
(declare-fun var1595-init () var1595)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/1950851072 (var3599) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1595 String) void)
(declare-const null-var443 var443)
(declare-const null-var3599 var3599)
(declare-const null-ClassObject ClassObject)
(declare-const null-var576 var576)
(declare-const null-Int Int)
(declare-const var2987 var443) ; Statement: r4 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod 
(assert (not (= var2987 null-var443)))
(declare-const var1422 var3599) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1422 null-var3599)))
(declare-const var1215 ClassObject) ; Statement: r13 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1215 null-ClassObject)))
(declare-const var2650 var576) ; Statement: r14 := @parameter2: java.lang.Object 
(assert (not (= var2650 null-var576)))
(declare-const var3925 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var3925 null-Int)))
(assert true)
(define-const var257 Int (startArray/-1126310615 var1422)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
 ; Statement: if i0 == 3 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert (not (= var257 3))) ; Negate: Cond: i0 == 3  
(define-const var2967 var1595 var1595-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3927 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3927)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3927!1 String)
(assert (= var3927!1 ""))
(assert true)
(define-const var345 String (append/672562846 var3927!1 "not support input ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ") 
(declare-const var3927!2 String)
(assert (= var3927!2 (str.++ var3927!1 "not support input ")))
(assert true)
(define-const var2093 String (info/1950851072 var1422)) ; Statement: $r9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>() 
(assert true)
(define-const var2549 String (append/672562846 var345 var2093)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var345!1 String)
(assert (= var345!1 (str.++ var345 var2093)))
(assert true)
(define-const var1192 String (toString/-2075883882 var2549)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2967 var1192)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r12) 

(declare-const var2967!1 var1595)
(declare-const var1192!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), var1595-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/1950851072=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var443=com.alibaba.fastjson2.reader.ObjectReaderImplMethod, var2987=r4, var3599=com.alibaba.fastjson2.JSONReader, var1422=r0, var1215=r13, var576=java.lang.Object, var2650=r14, var3925=l1, var257=i0, var1595=com.alibaba.fastjson2.JSONException, var2967=$r7, var3927=$r8, var345=$r10, var2093=$r9, var2549=$r11, var1192=$r12}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMethod=var443, r4=var2987, com.alibaba.fastjson2.JSONReader=var3599, r0=var1422, r13=var1215, java.lang.Object=var576, r14=var2650, l1=var3925, i0=var257, com.alibaba.fastjson2.JSONException=var1595, $r7=var2967, $r8=var3927, $r10=var345, $r9=var2093, $r11=var2549, $r12=var1192}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r13 := @parameter1: java.lang.reflect.Type;	r14 := @parameter2: java.lang.Object;	l1 := @parameter3: long;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	if i0 == 3 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ");	$r9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2