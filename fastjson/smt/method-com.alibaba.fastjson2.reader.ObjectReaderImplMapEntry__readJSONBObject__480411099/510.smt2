(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3035 0)
(declare-sort var1424 0)
(declare-sort var402 0)
(declare-sort var941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun startArray/-1126310615 (var1424) Int)
(declare-fun var941-init () var941)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1424 String) String)
(declare-fun <init>/-2099196170 (var941 String) void)
(declare-const null-var3035 var3035)
(declare-const null-var1424 var1424)
(declare-const null-ClassObject ClassObject)
(declare-const null-var402 var402)
(declare-const null-Int Int)
(declare-const var2930 var3035) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMapEntry 
(assert (not (= var2930 null-var3035)))
(declare-const var3012 var1424) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3012 null-var1424)))
(declare-const var3784 ClassObject) ; Statement: r4 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3784 null-ClassObject)))
(declare-const var1912 var402) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var1912 null-var402)))
(declare-const var1249 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1249 null-Int)))
(assert true)
(define-const var3599 Int (startArray/-1126310615 var3012)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
 ; Statement: if i0 == 2 goto $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplMapEntry: java.lang.reflect.Type keyType> 
(assert (not (= var3599 2))) ; Negate: Cond: i0 == 2  
(define-const var3284 var941 var941-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var3735 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3735)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3735!1 String)
(assert (= var3735!1 ""))
(assert true)
(define-const var898 String (append/672562846 var3735!1 "entryCnt must be 2, but ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entryCnt must be 2, but ") 
(declare-const var3735!2 String)
(assert (= var3735!2 (str.++ var3735!1 "entryCnt must be 2, but ")))
(assert true)
(define-const var1070 String (append/-1001720160 var898 var3599)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var898!1 String)
(assert (str.prefixof var898 var898!1))
(assert true)
(define-const var2004 String (toString/-2075883882 var1070)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3773 String (info/-1659839707 var3012 var2004)) ; Statement: $r18 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r17) 
(assert true)
;(assert (<init>/-2099196170 var3284 var3773)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r18) 

(declare-const var3284!1 var941)
(declare-const var3773!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {startArray/-1126310615=([com.alibaba.fastjson2.JSONReader], int), var941-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3035=com.alibaba.fastjson2.reader.ObjectReaderImplMapEntry, var2930=r1, var1424=com.alibaba.fastjson2.JSONReader, var3012=r0, var3784=r4, var402=java.lang.Object, var1912=r5, var1249=l1, var3599=i0, var941=com.alibaba.fastjson2.JSONException, var3284=$r13, var3735=$r14, var898=$r15, var1070=$r16, var2004=$r17, var3773=$r18}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMapEntry=var3035, r1=var2930, com.alibaba.fastjson2.JSONReader=var1424, r0=var3012, r4=var3784, java.lang.Object=var402, r5=var1912, l1=var1249, i0=var3599, com.alibaba.fastjson2.JSONException=var941, $r13=var3284, $r14=var3735, $r15=var898, $r16=var1070, $r17=var2004, $r18=var3773}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMapEntry;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.reflect.Type;	r5 := @parameter2: java.lang.Object;	l1 := @parameter3: long;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	if i0 == 2 goto $r2 = r1.<com.alibaba.fastjson2.reader.ObjectReaderImplMapEntry: java.lang.reflect.Type keyType>;	$r13 = new com.alibaba.fastjson2.JSONException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("entryCnt must be 2, but ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r17);	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 2