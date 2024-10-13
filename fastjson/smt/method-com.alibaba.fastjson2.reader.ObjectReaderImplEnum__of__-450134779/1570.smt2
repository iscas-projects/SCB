(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3657 0)
(declare-sort var2419 0)
(declare-sort var2028 0)
(declare-sort var3503 0)
(declare-sort var2715 0)
(declare-sort var1523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun valueField/1678935919 (var3657) var2028)
(declare-fun var2715-init () var2715)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun enumClass/1678935919 (var3657) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2715 String var1523) void)
(declare-fun cast-from-var3503-to-var1523 (var3503) var1523)
(declare-const null-var3657 var3657)
(declare-const null-Int Int)
(declare-const null-var2419 var2419)
(declare-const null-var2028 var2028)
(declare-const null-var3503 var3503)
(declare-const var1844 var3657) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum 
(assert (not (= var1844 null-var3657)))
(declare-const var470 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var470 null-Int)))
(define-const var2326 var2419 null-var2419) ; Statement: r31 = null 
(define-const var2652 var2028 (valueField/1678935919 var1844)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Member valueField> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Member valueField> 
(assert (not (not (= var2652 null-var2028)))) ; Negate: Cond: $r1 != null  
(declare-const var2828 var3503) ; Statement: $r21 := @caughtexception 
(assert (not (= var2828 null-var3503)))
(define-const var3244 var2715 var2715-init) ; Statement: $r22 = new com.alibaba.fastjson2.JSONException 
(define-const var70 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var70)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var70!1 String)
(assert (= var70!1 ""))
(assert true)
(define-const var3314 String (append/672562846 var70!1 "parse enum error, class ")) ; Statement: $r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parse enum error, class ") 
(declare-const var70!2 String)
(assert (= var70!2 (str.++ var70!1 "parse enum error, class ")))
(define-const var522 ClassObject (enumClass/1678935919 var1844)) ; Statement: $r24 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass> 
(assert true)
(define-const var1646 String (getName/-1958580599 var522)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3846 String (append/672562846 var3314 var1646)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3314!1 String)
(assert (= var3314!1 (str.++ var3314 var1646)))
(assert true)
(define-const var791 String (append/672562846 var3846 ", value ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value ") 
(declare-const var3846!1 String)
(assert (= var3846!1 (str.++ var3846 ", value ")))
(assert true)
(define-const var3255 String (append/-1001720160 var791 var470)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var791!1 String)
(assert (str.prefixof var791 var791!1))
(assert true)
(define-const var2216 String (toString/-2075883882 var3255)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3244 var2216 (cast-from-var3503-to-var1523 var2828))) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r21) 

(declare-const var3244!1 var2715)
(declare-const var2216!1 String)
(declare-const var2828!1 var3503)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {valueField/1678935919=([com.alibaba.fastjson2.reader.ObjectReaderImplEnum], java.lang.reflect.Member), var2715-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), enumClass/1678935919=([com.alibaba.fastjson2.reader.ObjectReaderImplEnum], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3503-to-var1523=([java.lang.Exception], java.lang.Throwable)}
; {var3657=com.alibaba.fastjson2.reader.ObjectReaderImplEnum, var1844=r0, var470=i1, var2419=java.lang.Enum, var2326=r31, var2028=java.lang.reflect.Member, var2652=$r1, var3503=java.lang.Exception, var2828=$r21, var2715=com.alibaba.fastjson2.JSONException, var3244=$r22, var70=$r23, var3314=$r26, var522=$r24, var1646=$r25, var3846=$r27, var791=$r28, var3255=$r29, var2216=$r30, var1523=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.ObjectReaderImplEnum=var3657, r0=var1844, i1=var470, java.lang.Enum=var2419, r31=var2326, java.lang.reflect.Member=var2028, $r1=var2652, java.lang.Exception=var3503, $r21=var2828, com.alibaba.fastjson2.JSONException=var2715, $r22=var3244, $r23=var70, $r26=var3314, $r24=var522, $r25=var1646, $r27=var3846, $r28=var791, $r29=var3255, $r30=var2216, java.lang.Throwable=var1523}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplEnum;	i1 := @parameter0: int;	r31 = null;	$r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Member valueField>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.reflect.Member valueField>;	$r21 := @caughtexception;	$r22 = new com.alibaba.fastjson2.JSONException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parse enum error, class ");	$r24 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplEnum: java.lang.Class enumClass>;	$r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r21);	throw $r22
;block_num 2