(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var2085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2085-init () var2085)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun typeName/1914013406 (var2932) String)
(declare-fun objectClass/1914013406 (var2932) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2085 String) void)
(declare-const null-var2932 var2932)
(declare-const var369 var2932) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderBean 
(assert (not (= var369 null-var2932)))
(define-const var974 var2085 var2085-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var383)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var383!1 String)
(assert (= var383!1 ""))
(assert true)
(define-const var3373 String (append/672562846 var383!1 "type not match. ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("type not match. ") 
(declare-const var383!2 String)
(assert (= var383!2 (str.++ var383!1 "type not match. ")))
(define-const var2377 String (typeName/1914013406 var369)) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.ObjectReaderBean: java.lang.String typeName> 
(assert true)
(define-const var1470 String (append/672562846 var3373 var2377)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3373!1 String)
(assert (= var3373!1 (str.++ var3373 var2377)))
(assert true)
(define-const var431 String (append/672562846 var1470 " -> ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var1470!1 String)
(assert (= var1470!1 (str.++ var1470 " -> ")))
(define-const var37 ClassObject (objectClass/1914013406 var369)) ; Statement: $r6 = r2.<com.alibaba.fastjson2.reader.ObjectReaderBean: java.lang.Class objectClass> 
(assert true)
(define-const var2821 String (getName/-1958580599 var37)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2938 String (append/672562846 var431 var2821)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var431!1 String)
(assert (= var431!1 (str.++ var431 var2821)))
(assert true)
(define-const var2826 String (toString/-2075883882 var2938)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var974 var2826)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var974!1 var2085)
(declare-const var2826!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2085-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), typeName/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.String), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2932=com.alibaba.fastjson2.reader.ObjectReaderBean, var369=r2, var2085=com.alibaba.fastjson2.JSONException, var974=$r0, var383=$r1, var3373=$r4, var2377=$r3, var1470=$r5, var431=$r8, var37=$r6, var2821=$r7, var2938=$r9, var2826=$r10}
; {com.alibaba.fastjson2.reader.ObjectReaderBean=var2932, r2=var369, com.alibaba.fastjson2.JSONException=var2085, $r0=var974, $r1=var383, $r4=var3373, $r3=var2377, $r5=var1470, $r8=var431, $r6=var37, $r7=var2821, $r9=var2938, $r10=var2826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderBean;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("type not match. ");	$r3 = r2.<com.alibaba.fastjson2.reader.ObjectReaderBean: java.lang.String typeName>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r6 = r2.<com.alibaba.fastjson2.reader.ObjectReaderBean: java.lang.Class objectClass>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	return $r0
;block_num 1