(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort var300 0)
(declare-sort var2860 0)
(declare-sort var1805 0)
(declare-sort var993 0)
(declare-sort var3199 0)
(declare-sort var403 0)
(declare-sort var3770 0)
(declare-sort var2587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBigInteger/77801293 (var300) var1805)
(declare-fun schema/-488737871 (var3199) var993)
(declare-fun cast-from-var2301-to-var3199 (var2301) var3199)
(declare-fun var3770-init () var3770)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3199) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var300 String) String)
(declare-fun <init>/-743866570 (var3770 String var2587) void)
(declare-fun cast-from-var403-to-var2587 (var403) var2587)
(declare-const null-var2301 var2301)
(declare-const null-var300 var300)
(declare-const null-var2860 var2860)
(declare-const null-var993 var993)
(declare-const null-var403 var403)
(declare-const var2000 var2301) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod 
(assert (not (= var2000 null-var2301)))
(declare-const var227 var300) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var227 null-var300)))
(declare-const var2991 var2860) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2991 null-var2860)))
(assert true)
(define-const var3407 var1805 (readBigInteger/77801293 var227)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigInteger readBigInteger()>() 
(define-const var3118 var993 (schema/-488737871 (cast-from-var2301-to-var3199 var2000))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method> 
(assert (not (= var3118 null-var993))) ; Negate: Cond: $r3 == null  
(declare-const var3683 var403) ; Statement: $r8 := @caughtexception 
(assert (not (= var3683 null-var403)))
(define-const var2583 var3770 var3770-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3183 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3183)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3183!1 String)
(assert (= var3183!1 ""))
(assert true)
(define-const var57 String (append/672562846 var3183!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3183!2 String)
(assert (= var3183!2 (str.++ var3183!1 "set ")))
(define-const var921 String (fieldName/-488737871 (cast-from-var2301-to-var3199 var2000))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName> 
(assert true)
(define-const var829 String (append/672562846 var57 var921)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var57!1 String)
(assert (= var57!1 (str.++ var57 var921)))
(assert true)
(define-const var2867 String (append/672562846 var829 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var829!1 String)
(assert (= var829!1 (str.++ var829 " error")))
(assert true)
(define-const var565 String (toString/-2075883882 var2867)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1058 String (info/-1659839707 var227 var565)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var2583 var1058 (cast-from-var403-to-var2587 var3683))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var2583!1 var3770)
(declare-const var1058!1 String)
(declare-const var3683!1 var403)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readBigInteger/77801293=([com.alibaba.fastjson2.JSONReader], java.math.BigInteger), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2301-to-var3199=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod], com.alibaba.fastjson2.reader.FieldReader), var3770-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var403-to-var2587=([java.lang.Exception], java.lang.Throwable)}
; {var2301=com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod, var2000=r2, var300=com.alibaba.fastjson2.JSONReader, var227=r0, var2860=java.lang.Object, var2991=r4, var1805=java.math.BigInteger, var3407=r1, var993=com.alibaba.fastjson2.schema.JSONSchema, var3199=com.alibaba.fastjson2.reader.FieldReader, var3118=$r3, var403=java.lang.Exception, var3683=$r8, var3770=com.alibaba.fastjson2.JSONException, var2583=$r9, var3183=$r10, var57=$r12, var921=$r11, var829=$r13, var2867=$r14, var565=$r15, var1058=$r16, var2587=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod=var2301, r2=var2000, com.alibaba.fastjson2.JSONReader=var300, r0=var227, java.lang.Object=var2860, r4=var2991, java.math.BigInteger=var1805, r1=var3407, com.alibaba.fastjson2.schema.JSONSchema=var993, com.alibaba.fastjson2.reader.FieldReader=var3199, $r3=var3118, java.lang.Exception=var403, $r8=var3683, com.alibaba.fastjson2.JSONException=var3770, $r9=var2583, $r10=var3183, $r12=var57, $r11=var921, $r13=var829, $r14=var2867, $r15=var565, $r16=var1058, java.lang.Throwable=var2587}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.math.BigInteger readBigInteger()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2