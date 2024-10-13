(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3739 0)
(declare-sort var674 0)
(declare-sort var3705 0)
(declare-sort var570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfArrayStart/1644613984 (var674) Bool)
(declare-fun var570-init () var570)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/1950851072 (var674) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var570 String) void)
(declare-const null-var3739 var3739)
(declare-const null-var674 var674)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3705 var3705)
(declare-const null-Int Int)
(declare-const var394 var3739) ; Statement: r4 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod 
(assert (not (= var394 null-var3739)))
(declare-const var83 var674) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var83 null-var674)))
(declare-const var59 ClassObject) ; Statement: r19 := @parameter1: java.lang.reflect.Type 
(assert (not (= var59 null-ClassObject)))
(declare-const var3741 var3705) ; Statement: r20 := @parameter2: java.lang.Object 
(assert (not (= var3741 null-var3705)))
(declare-const var3276 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var3276 null-Int)))
(assert true)
(define-const var3184 Bool (nextIfArrayStart/1644613984 var83)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>() 
 ; Statement: if z0 != 0 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert (not (not (= (ite var3184 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var243 var570 var570-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var1990 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1990)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1990!1 String)
(assert (= var1990!1 ""))
(assert true)
(define-const var861 String (append/672562846 var1990!1 "not support input ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ") 
(declare-const var1990!2 String)
(assert (= var1990!2 (str.++ var1990!1 "not support input ")))
(assert true)
(define-const var1659 String (info/1950851072 var83)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>() 
(assert true)
(define-const var2294 String (append/672562846 var861 var1659)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var861!1 String)
(assert (= var861!1 (str.++ var861 var1659)))
(assert true)
(define-const var3945 String (toString/-2075883882 var2294)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var243 var3945)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r18) 

(declare-const var243!1 var570)
(declare-const var3945!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfArrayStart/1644613984=([com.alibaba.fastjson2.JSONReader], boolean), var570-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/1950851072=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3739=com.alibaba.fastjson2.reader.ObjectReaderImplMethod, var394=r4, var674=com.alibaba.fastjson2.JSONReader, var83=r0, var59=r19, var3705=java.lang.Object, var3741=r20, var3276=l0, var3184=z0, var570=com.alibaba.fastjson2.JSONException, var243=$r13, var1990=$r14, var861=$r16, var1659=$r15, var2294=$r17, var3945=$r18}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMethod=var3739, r4=var394, com.alibaba.fastjson2.JSONReader=var674, r0=var83, r19=var59, java.lang.Object=var3705, r20=var3741, l0=var3276, z0=var3184, com.alibaba.fastjson2.JSONException=var570, $r13=var243, $r14=var1990, $r16=var861, $r15=var1659, $r17=var2294, $r18=var3945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r19 := @parameter1: java.lang.reflect.Type;	r20 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>();	if z0 != 0 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r13 = new com.alibaba.fastjson2.JSONException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ");	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 2