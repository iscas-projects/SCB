(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1786 0)
(declare-sort var897 0)
(declare-sort var1582 0)
(declare-sort var2260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfMatch/-1486561452 (var897 Int) Bool)
(declare-fun readTypeHashCode/-2035886982 (var897) Int)
(declare-fun var2260-init () var2260)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1018493317 (var897) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2260 String) void)
(declare-const null-var1786 var1786)
(declare-const null-var897 var897)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1582 var1582)
(declare-const null-Int Int)
(declare-const var1786-HASH_TYPE Int)
(declare-const var2390 var1786) ; Statement: r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray 
(assert (not (= var2390 null-var1786)))
(declare-const var2835 var897) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2835 null-var897)))
(declare-const var1544 ClassObject) ; Statement: r10 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1544 null-ClassObject)))
(declare-const var1064 var1582) ; Statement: r11 := @parameter2: java.lang.Object 
(assert (not (= var1064 null-var1582)))
(declare-const var1135 Int) ; Statement: l3 := @parameter3: long 
(assert (not (= var1135 null-Int)))
(assert true)
(define-const var954 Bool (nextIfMatch/-1486561452 var2835 (- 110))) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= (ite var954 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1625 Int (readTypeHashCode/-2035886982 var2835)) ; Statement: l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>() 
(define-const var2028 Int var1786-HASH_TYPE) ; Statement: $l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray: long HASH_TYPE> 
(define-const var2477 Int (ite (> var1625 var2028) 1 (ite (< var1625 var2028) (- 1) 0))) ; Statement: $b1 = l4 cmp $l0 
 ; Statement: if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>() 
(assert (not (= var2477 0))) ; Negate: Cond: $b1 == 0  
(define-const var3087 var2260 var2260-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var803 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var803)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var803!1 String)
(assert (= var803!1 ""))
(assert true)
(define-const var1898 String (append/672562846 var803!1 "not support autoType : ")) ; Statement: $r6 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ") 
(declare-const var803!2 String)
(assert (= var803!2 (str.++ var803!1 "not support autoType : ")))
(assert true)
(define-const var1961 String (getString/1018493317 var2835)) ; Statement: $r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>() 
(assert true)
(define-const var3151 String (append/672562846 var1898 var1961)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1898!1 String)
(assert (= var1898!1 (str.++ var1898 var1961)))
(assert true)
(define-const var3562 String (toString/-2075883882 var3151)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3087 var3562)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var3087!1 var2260)
(declare-const var3562!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), readTypeHashCode/-2035886982=([com.alibaba.fastjson2.JSONReader], long), var2260-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1018493317=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1786=com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray, var2390=r9, var897=com.alibaba.fastjson2.JSONReader, var2835=r0, var1544=r10, var1582=java.lang.Object, var1064=r11, var1135=l3, var954=$z0, var1625=l4, var2028=$l0, var2477=$b1, var2260=com.alibaba.fastjson2.JSONException, var3087=$r13, var803=$r12, var1898=$r6, var1961=$r5, var3151=$r7, var3562=$r8}
; {com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray=var1786, r9=var2390, com.alibaba.fastjson2.JSONReader=var897, r0=var2835, r10=var1544, java.lang.Object=var1582, r11=var1064, l3=var1135, $z0=var954, l4=var1625, $l0=var2028, $b1=var2477, com.alibaba.fastjson2.JSONException=var2260, $r13=var3087, $r12=var803, $r6=var1898, $r5=var1961, $r7=var3151, $r8=var3562}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r10 := @parameter1: java.lang.reflect.Type;	r11 := @parameter2: java.lang.Object;	l3 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-110);	if $z0 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	l4 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readTypeHashCode()>();	$l0 = <com.alibaba.fastjson2.reader.ObjectReaderImplFloatArray: long HASH_TYPE>;	$b1 = l4 cmp $l0;	if $b1 == 0 goto $i2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int startArray()>();	$r13 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support autoType : ");	$r5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String getString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r13
;block_num 3