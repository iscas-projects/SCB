(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var31 0)
(declare-sort var1304 0)
(declare-sort var2645 0)
(declare-sort var745 0)
(declare-sort var2849 0)
(declare-sort var760 0)
(declare-sort var449 0)
(declare-sort var2829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var1304) Int)
(declare-fun wasNull/942798865 (var1304) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_valueOf/-440343065 (Int) Int)
(declare-fun schema/-488737871 (var2849) var745)
(declare-fun cast-from-var31-to-var2849 (var31) var2849)
(declare-fun var449-init () var449)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2849) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1304 String) String)
(declare-fun <init>/-743866570 (var449 String var2829) void)
(declare-fun cast-from-var760-to-var2829 (var760) var2829)
(declare-const null-var31 var31)
(declare-const null-var1304 var1304)
(declare-const null-var2645 var2645)
(declare-const null-var745 var745)
(declare-const null-var760 var760)
(declare-const var97 var31) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Field 
(assert (not (= var97 null-var31)))
(declare-const var1278 var1304) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1278 null-var1304)))
(declare-const var3151 var2645) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3151 null-var2645)))
(assert true)
(define-const var673 Int (readInt32Value/1995748807 var1278)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(assert true)
(define-const var1199 Bool (wasNull/942798865 var1278)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull()>() 
 ; Statement: if $z0 == 0 goto $s1 = (short) i0 
(assert (= (ite var1199 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3288 Int (cast-from-Int-to-Int var673)) ; Statement: $s1 = (short) i0 
(define-const var3984 Int (Int_valueOf/-440343065 var3288)) ; Statement: r15 = staticinvoke <java.lang.Short: java.lang.Short valueOf(short)>($s1) 
(assert true) ; Non Conditional
(define-const var3342 var745 (schema/-488737871 (cast-from-var31-to-var2849 var97))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.reflect.Field field> 
(assert (not (= var3342 null-var745))) ; Negate: Cond: $r2 == null  
(declare-const var2275 var760) ; Statement: $r6 := @caughtexception 
(assert (not (= var2275 null-var760)))
(define-const var3122 var449 var449-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1250 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1250)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1250!1 String)
(assert (= var1250!1 ""))
(assert true)
(define-const var3368 String (append/672562846 var1250!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1250!2 String)
(assert (= var1250!2 (str.++ var1250!1 "set ")))
(define-const var1876 String (fieldName/-488737871 (cast-from-var31-to-var2849 var97))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.String fieldName> 
(assert true)
(define-const var3074 String (append/672562846 var3368 var1876)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3368!1 String)
(assert (= var3368!1 (str.++ var3368 var1876)))
(assert true)
(define-const var1339 String (append/672562846 var3074 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3074!1 String)
(assert (= var3074!1 (str.++ var3074 " error")))
(assert true)
(define-const var3982 String (toString/-2075883882 var1339)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1537 String (info/-1659839707 var1278 var3982)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var3122 var1537 (cast-from-var760-to-var2829 var2275))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var3122!1 var449)
(declare-const var1537!1 String)
(declare-const var2275!1 var760)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), wasNull/942798865=([com.alibaba.fastjson2.JSONReader], boolean), cast-from-Int-to-Int=([int], short), Int_valueOf/-440343065=([short], java.lang.Short), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var31-to-var2849=([com.alibaba.fastjson2.reader.FieldReaderInt16Field], com.alibaba.fastjson2.reader.FieldReader), var449-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var760-to-var2829=([java.lang.Exception], java.lang.Throwable)}
; {var31=com.alibaba.fastjson2.reader.FieldReaderInt16Field, var97=r1, var1304=com.alibaba.fastjson2.JSONReader, var1278=r0, var2645=java.lang.Object, var3151=r3, var673=i0, var1199=$z0, var3288=$s1, var3984=r15, var745=com.alibaba.fastjson2.schema.JSONSchema, var2849=com.alibaba.fastjson2.reader.FieldReader, var3342=$r2, var760=java.lang.Exception, var2275=$r6, var449=com.alibaba.fastjson2.JSONException, var3122=$r7, var1250=$r8, var3368=$r10, var1876=$r9, var3074=$r11, var1339=$r12, var3982=$r13, var1537=$r14, var2829=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16Field=var31, r1=var97, com.alibaba.fastjson2.JSONReader=var1304, r0=var1278, java.lang.Object=var2645, r3=var3151, i0=var673, $z0=var1199, $s1=var3288, r15=var3984, com.alibaba.fastjson2.schema.JSONSchema=var745, com.alibaba.fastjson2.reader.FieldReader=var2849, $r2=var3342, java.lang.Exception=var760, $r6=var2275, com.alibaba.fastjson2.JSONException=var449, $r7=var3122, $r8=var1250, $r10=var3368, $r9=var1876, $r11=var3074, $r12=var1339, $r13=var3982, $r14=var1537, java.lang.Throwable=var2829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16Field;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull()>();	if $z0 == 0 goto $s1 = (short) i0;	$s1 = (short) i0;	r15 = staticinvoke <java.lang.Short: java.lang.Short valueOf(short)>($s1);	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16Field: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 4