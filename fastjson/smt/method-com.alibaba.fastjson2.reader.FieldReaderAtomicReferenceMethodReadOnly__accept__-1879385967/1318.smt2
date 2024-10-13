(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort var3464 0)
(declare-sort var156 0)
(declare-sort var1492 0)
(declare-sort var1661 0)
(declare-sort var240 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1492-init () var1492)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1661) String)
(declare-fun cast-from-var3362-to-var1661 (var3362) var1661)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1492 String var240) void)
(declare-fun cast-from-var156-to-var240 (var156) var240)
(declare-const null-var3362 var3362)
(declare-const null-var3464 var3464)
(declare-const null-var156 var156)
(declare-const var1910 var3362) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly 
(assert (not (= var1910 null-var3362)))
(declare-const var3579 var3464) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3579 null-var3464)))
(declare-const var2583 var3464) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2583 null-var3464)))
 ; Statement: if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly: java.lang.reflect.Method method> 
(assert (not (not (= var2583 null-var3464)))) ; Negate: Cond: r0 != null  
(declare-const var1428 var156) ; Statement: $r6 := @caughtexception 
(assert (not (= var1428 null-var156)))
(define-const var2622 var1492 var1492-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var838 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var838)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var838!1 String)
(assert (= var838!1 ""))
(assert true)
(define-const var3598 String (append/672562846 var838!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var838!2 String)
(assert (= var838!2 (str.++ var838!1 "set ")))
(define-const var1350 String (fieldName/-488737871 (cast-from-var3362-to-var1661 var1910))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var1220 String (append/672562846 var3598 var1350)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3598!1 String)
(assert (= var3598!1 (str.++ var3598 var1350)))
(assert true)
(define-const var1225 String (append/672562846 var1220 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1220!1 String)
(assert (= var1220!1 (str.++ var1220 " error")))
(assert true)
(define-const var3630 String (toString/-2075883882 var1225)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2622 var3630 (cast-from-var156-to-var240 var1428))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var2622!1 var1492)
(declare-const var3630!1 String)
(declare-const var1428!1 var156)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1492-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var3362-to-var1661=([com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var156-to-var240=([java.lang.Exception], java.lang.Throwable)}
; {var3362=com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly, var1910=r1, var3464=java.lang.Object, var3579=r2, var2583=r0, var156=java.lang.Exception, var1428=$r6, var1492=com.alibaba.fastjson2.JSONException, var2622=$r7, var838=$r8, var3598=$r10, var1661=com.alibaba.fastjson2.reader.FieldReader, var1350=$r9, var1220=$r11, var1225=$r12, var3630=$r13, var240=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly=var3362, r1=var1910, java.lang.Object=var3464, r2=var3579, r0=var2583, java.lang.Exception=var156, $r6=var1428, com.alibaba.fastjson2.JSONException=var1492, $r7=var2622, $r8=var838, $r10=var3598, com.alibaba.fastjson2.reader.FieldReader=var1661, $r9=var1350, $r11=var1220, $r12=var1225, $r13=var3630, java.lang.Throwable=var240}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly: java.lang.reflect.Method method>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderAtomicReferenceMethodReadOnly: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2