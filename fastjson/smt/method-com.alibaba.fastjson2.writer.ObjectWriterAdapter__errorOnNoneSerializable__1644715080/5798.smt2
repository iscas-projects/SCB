(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var991 0)
(declare-sort var2694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2694-init () var2694)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun objectClass/464190305 (var991) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2694 String) void)
(declare-const null-var991 var991)
(declare-const var1657 var991) ; Statement: r2 := @this: com.alibaba.fastjson2.writer.ObjectWriterAdapter 
(assert (not (= var1657 null-var991)))
(define-const var3199 var2694 var2694-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var983 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var983)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var983!1 String)
(assert (= var983!1 ""))
(assert true)
(define-const var204 String (append/672562846 var983!1 "not support none serializable class ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support none serializable class ") 
(declare-const var983!2 String)
(assert (= var983!2 (str.++ var983!1 "not support none serializable class ")))
(define-const var2491 ClassObject (objectClass/464190305 var1657)) ; Statement: $r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterAdapter: java.lang.Class objectClass> 
(assert true)
(define-const var574 String (getName/-1958580599 var2491)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1885 String (append/672562846 var204 var574)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var204!1 String)
(assert (= var204!1 (str.++ var204 var574)))
(assert true)
(define-const var2120 String (toString/-2075883882 var1885)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3199 var2120)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7) 

(declare-const var3199!1 var2694)
(declare-const var2120!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2694-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), objectClass/464190305=([com.alibaba.fastjson2.writer.ObjectWriterAdapter], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var991=com.alibaba.fastjson2.writer.ObjectWriterAdapter, var1657=r2, var2694=com.alibaba.fastjson2.JSONException, var3199=$r0, var983=$r1, var204=$r5, var2491=$r3, var574=$r4, var1885=$r6, var2120=$r7}
; {com.alibaba.fastjson2.writer.ObjectWriterAdapter=var991, r2=var1657, com.alibaba.fastjson2.JSONException=var2694, $r0=var3199, $r1=var983, $r5=var204, $r3=var2491, $r4=var574, $r6=var1885, $r7=var2120}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.writer.ObjectWriterAdapter;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support none serializable class ");	$r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterAdapter: java.lang.Class objectClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1