(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2961 0)
(declare-sort var1029 0)
(declare-sort var2631 0)
(declare-sort var3813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfObjectStart/-245382802 (var1029) Bool)
(declare-fun isSupportBeanArray/-617469871 (var1029 Int) Bool)
(declare-fun var3813-init () var3813)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/1950851072 (var1029) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3813 String) void)
(declare-const null-var2961 var2961)
(declare-const null-var1029 var1029)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2631 var2631)
(declare-const null-Int Int)
(declare-const var3168 var2961) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod 
(assert (not (= var3168 null-var2961)))
(declare-const var2014 var1029) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2014 null-var1029)))
(declare-const var3427 ClassObject) ; Statement: r10 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3427 null-ClassObject)))
(declare-const var3128 var2631) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var3128 null-var2631)))
(declare-const var3925 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var3925 null-Int)))
(assert true)
(define-const var2426 Bool (nextIfObjectStart/-245382802 var2014)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>() 
 ; Statement: if z0 != 0 goto r14 = null 
(assert (not (not (= (ite var2426 1 0) 0)))) ; Negate: Cond: z0 != 0  
(assert true)
(define-const var1473 Bool (isSupportBeanArray/-617469871 var2014 var3925)) ; Statement: $z3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isSupportBeanArray(long)>(l0) 
 ; Statement: if $z3 == 0 goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1473 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2698 var3813 var3813-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3448 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3448)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3448!1 String)
(assert (= var3448!1 ""))
(assert true)
(define-const var1918 String (append/672562846 var3448!1 "not support input ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ") 
(declare-const var3448!2 String)
(assert (= var3448!2 (str.++ var3448!1 "not support input ")))
(assert true)
(define-const var112 String (info/1950851072 var2014)) ; Statement: $r6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>() 
(assert true)
(define-const var2806 String (append/672562846 var1918 var112)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1918!1 String)
(assert (= var1918!1 (str.++ var1918 var112)))
(assert true)
(define-const var1968 String (toString/-2075883882 var2806)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2698 var1968)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2698!1 var3813)
(declare-const var1968!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfObjectStart/-245382802=([com.alibaba.fastjson2.JSONReader], boolean), isSupportBeanArray/-617469871=([com.alibaba.fastjson2.JSONReader, long], boolean), var3813-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/1950851072=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2961=com.alibaba.fastjson2.reader.ObjectReaderImplMethod, var3168=r1, var1029=com.alibaba.fastjson2.JSONReader, var2014=r0, var3427=r10, var2631=java.lang.Object, var3128=r11, var3925=l0, var2426=z0, var1473=$z3, var3813=com.alibaba.fastjson2.JSONException, var2698=$r4, var3448=$r5, var1918=$r7, var112=$r6, var2806=$r8, var1968=$r9}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMethod=var2961, r1=var3168, com.alibaba.fastjson2.JSONReader=var1029, r0=var2014, r10=var3427, java.lang.Object=var2631, r11=var3128, l0=var3925, z0=var2426, $z3=var1473, com.alibaba.fastjson2.JSONException=var3813, $r4=var2698, $r5=var3448, $r7=var1918, $r6=var112, $r8=var2806, $r9=var1968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r10 := @parameter1: java.lang.reflect.Type;	r11 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>();	if z0 != 0 goto r14 = null;	$z3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isSupportBeanArray(long)>(l0);	if $z3 == 0 goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ");	$r6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 3