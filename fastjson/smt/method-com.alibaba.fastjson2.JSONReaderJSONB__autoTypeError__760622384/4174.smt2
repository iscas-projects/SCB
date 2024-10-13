(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1758 0)
(declare-sort var3536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3536-init () var3536)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getString/1235960311 (var1758) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3536 String) void)
(declare-const null-var1758 var1758)
(declare-const var2503 var1758) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var2503 null-var1758)))
(define-const var2946 var3536 var3536-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3383 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3383)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3383!1 String)
(assert (= var3383!1 ""))
(assert true)
(define-const var2082 String (append/672562846 var3383!1 "auotype not support : ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("auotype not support : ") 
(declare-const var3383!2 String)
(assert (= var3383!2 (str.++ var3383!1 "auotype not support : ")))
(assert true)
(define-const var3203 String (getString/1235960311 var2503)) ; Statement: $r3 = virtualinvoke r2.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String getString()>() 
(assert true)
(define-const var409 String (append/672562846 var2082 var3203)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2082!1 String)
(assert (= var2082!1 (str.++ var2082 var3203)))
(assert true)
(define-const var2877 String (toString/-2075883882 var409)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2946 var2877)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var2946!1 var3536)
(declare-const var2877!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3536-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getString/1235960311=([com.alibaba.fastjson2.JSONReaderJSONB], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1758=com.alibaba.fastjson2.JSONReaderJSONB, var2503=r2, var3536=com.alibaba.fastjson2.JSONException, var2946=$r0, var3383=$r1, var2082=$r4, var3203=$r3, var409=$r5, var2877=$r6}
; {com.alibaba.fastjson2.JSONReaderJSONB=var1758, r2=var2503, com.alibaba.fastjson2.JSONException=var3536, $r0=var2946, $r1=var3383, $r4=var2082, $r3=var3203, $r5=var409, $r6=var2877}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("auotype not support : ");	$r3 = virtualinvoke r2.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String getString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1