(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var611 0)
(declare-sort var2770 0)
(declare-sort var962 0)
(declare-sort var2002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfObjectStart/-245382802 (var2770) Bool)
(declare-fun isSupportBeanArray/-617469871 (var2770 Int) Bool)
(declare-fun var2002-init () var2002)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/1950851072 (var2770) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2002 String) void)
(declare-const null-var611 var611)
(declare-const null-var2770 var2770)
(declare-const null-ClassObject ClassObject)
(declare-const null-var962 var962)
(declare-const null-Int Int)
(declare-const var464 var611) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField 
(assert (not (= var464 null-var611)))
(declare-const var1101 var2770) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1101 null-var2770)))
(declare-const var1012 ClassObject) ; Statement: r10 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1012 null-ClassObject)))
(declare-const var311 var962) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var311 null-var962)))
(declare-const var2171 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var2171 null-Int)))
(assert true)
(define-const var3304 Bool (nextIfObjectStart/-245382802 var1101)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>() 
 ; Statement: if z0 != 0 goto r14 = null 
(assert (not (not (= (ite var3304 1 0) 0)))) ; Negate: Cond: z0 != 0  
(assert true)
(define-const var2711 Bool (isSupportBeanArray/-617469871 var1101 var2171)) ; Statement: $z3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isSupportBeanArray(long)>(l0) 
 ; Statement: if $z3 == 0 goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var2711 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2707 var2002 var2002-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var335 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var335)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var335!1 String)
(assert (= var335!1 ""))
(assert true)
(define-const var3829 String (append/672562846 var335!1 "not support input ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ") 
(declare-const var335!2 String)
(assert (= var335!2 (str.++ var335!1 "not support input ")))
(assert true)
(define-const var475 String (info/1950851072 var1101)) ; Statement: $r6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>() 
(assert true)
(define-const var3172 String (append/672562846 var3829 var475)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3829!1 String)
(assert (= var3829!1 (str.++ var3829 var475)))
(assert true)
(define-const var3939 String (toString/-2075883882 var3172)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2707 var3939)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2707!1 var2002)
(declare-const var3939!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfObjectStart/-245382802=([com.alibaba.fastjson2.JSONReader], boolean), isSupportBeanArray/-617469871=([com.alibaba.fastjson2.JSONReader, long], boolean), var2002-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/1950851072=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var611=com.alibaba.fastjson2.reader.ObjectReaderImplField, var464=r1, var2770=com.alibaba.fastjson2.JSONReader, var1101=r0, var1012=r10, var962=java.lang.Object, var311=r11, var2171=l0, var3304=z0, var2711=$z3, var2002=com.alibaba.fastjson2.JSONException, var2707=$r4, var335=$r5, var3829=$r7, var475=$r6, var3172=$r8, var3939=$r9}
; {com.alibaba.fastjson2.reader.ObjectReaderImplField=var611, r1=var464, com.alibaba.fastjson2.JSONReader=var2770, r0=var1101, r10=var1012, java.lang.Object=var962, r11=var311, l0=var2171, z0=var3304, $z3=var2711, com.alibaba.fastjson2.JSONException=var2002, $r4=var2707, $r5=var335, $r7=var3829, $r6=var475, $r8=var3172, $r9=var3939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r10 := @parameter1: java.lang.reflect.Type;	r11 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>();	if z0 != 0 goto r14 = null;	$z3 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean isSupportBeanArray(long)>(l0);	if $z3 == 0 goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ");	$r6 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 3