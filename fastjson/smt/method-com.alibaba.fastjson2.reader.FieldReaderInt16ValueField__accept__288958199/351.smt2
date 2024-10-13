(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3008 0)
(declare-sort var1938 0)
(declare-sort var3800 0)
(declare-sort var3336 0)
(declare-sort var34 0)
(declare-sort var3090 0)
(declare-sort var1010 0)
(declare-sort var446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3800_toShortValue/1194113744 (var1938) Int)
(declare-fun schema/-488737871 (var34) var3336)
(declare-fun cast-from-var3008-to-var34 (var3008) var34)
(declare-fun var1010-init () var1010)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var34) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1010 String var446) void)
(declare-fun cast-from-var3090-to-var446 (var3090) var446)
(declare-const null-var3008 var3008)
(declare-const null-var1938 var1938)
(declare-const null-var3336 var3336)
(declare-const null-var3090 var3090)
(declare-const var1673 var3008) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField 
(assert (not (= var1673 null-var3008)))
(declare-const var1905 var1938) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1905 null-var1938)))
(declare-const var316 var1938) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var316 null-var1938)))
(define-const var658 Int (var3800_toShortValue/1194113744 var316)) ; Statement: s0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: short toShortValue(java.lang.Object)>(r0) 
(define-const var803 var3336 (schema/-488737871 (cast-from-var3008-to-var34 var1673))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field> 
(assert (not (= var803 null-var3336))) ; Negate: Cond: $r2 == null  
(declare-const var1585 var3090) ; Statement: $r6 := @caughtexception 
(assert (not (= var1585 null-var3090)))
(define-const var2681 var1010 var1010-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1689 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1689)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1689!1 String)
(assert (= var1689!1 ""))
(assert true)
(define-const var3933 String (append/672562846 var1689!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1689!2 String)
(assert (= var1689!2 (str.++ var1689!1 "set ")))
(define-const var1563 String (fieldName/-488737871 (cast-from-var3008-to-var34 var1673))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName> 
(assert true)
(define-const var3872 String (append/672562846 var3933 var1563)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3933!1 String)
(assert (= var3933!1 (str.++ var3933 var1563)))
(assert true)
(define-const var729 String (append/672562846 var3872 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3872!1 String)
(assert (= var3872!1 (str.++ var3872 " error")))
(assert true)
(define-const var1704 String (toString/-2075883882 var729)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2681 var1704 (cast-from-var3090-to-var446 var1585))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var2681!1 var1010)
(declare-const var1704!1 String)
(declare-const var1585!1 var3090)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3800_toShortValue/1194113744=([java.lang.Object], short), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3008-to-var34=([com.alibaba.fastjson2.reader.FieldReaderInt16ValueField], com.alibaba.fastjson2.reader.FieldReader), var1010-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3090-to-var446=([java.lang.Exception], java.lang.Throwable)}
; {var3008=com.alibaba.fastjson2.reader.FieldReaderInt16ValueField, var1673=r1, var1938=java.lang.Object, var1905=r3, var316=r0, var3800=com.alibaba.fastjson2.util.TypeUtils, var658=s0, var3336=com.alibaba.fastjson2.schema.JSONSchema, var34=com.alibaba.fastjson2.reader.FieldReader, var803=$r2, var3090=java.lang.Exception, var1585=$r6, var1010=com.alibaba.fastjson2.JSONException, var2681=$r7, var1689=$r8, var3933=$r10, var1563=$r9, var3872=$r11, var729=$r12, var1704=$r13, var446=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16ValueField=var3008, r1=var1673, java.lang.Object=var1938, r3=var1905, r0=var316, com.alibaba.fastjson2.util.TypeUtils=var3800, s0=var658, com.alibaba.fastjson2.schema.JSONSchema=var3336, com.alibaba.fastjson2.reader.FieldReader=var34, $r2=var803, java.lang.Exception=var3090, $r6=var1585, com.alibaba.fastjson2.JSONException=var1010, $r7=var2681, $r8=var1689, $r10=var3933, $r9=var1563, $r11=var3872, $r12=var729, $r13=var1704, java.lang.Throwable=var446}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	s0 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: short toShortValue(java.lang.Object)>(r0);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2