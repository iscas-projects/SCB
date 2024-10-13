(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2230 0)
(declare-sort var372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2230-init () var2230)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var372) String)
(declare-fun cast-from-ClassObject-to-var372 (ClassObject) var372)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2230 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const var433 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var433 null-ClassObject)))
(assert true)
(define-const var939 String (getName/-1958580599 var433)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var1414 String "com.google.common.collect.ArrayListMultimap") ; Statement: $r2 = "com.google.common.collect.ArrayListMultimap" 
(assert true)
(define-const var2147 Bool (= var1414 var939)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r20 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var2147 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1345 var2230 var2230-init) ; Statement: $r20 = new com.alibaba.fastjson2.JSONException 
(define-const var741 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var741)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var741!1 String)
(assert (= var741!1 ""))
(assert true)
(define-const var3811 String (append/672562846 var741!1 "create map error : ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create map error : ") 
(declare-const var741!2 String)
(assert (= var741!2 (str.++ var741!1 "create map error : ")))
(assert true)
(define-const var82 String (append/-1031950772 var3811 (cast-from-ClassObject-to-var372 var433))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3811!1 String)
(assert (str.prefixof var3811 var3811!1))
(assert true)
(define-const var397 String (toString/-2075883882 var82)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1345 var397)) ; Statement: specialinvoke $r20.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r24) 

(declare-const var1345!1 var2230)
(declare-const var397!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), var2230-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var372=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var433=r0, var939=r1, var1414=$r2, var2147=$z0, var2230=com.alibaba.fastjson2.JSONException, var1345=$r20, var741=$r21, var3811=$r22, var372=java.lang.Object, var82=$r23, var397=$r24}
; {r0=var433, r1=var939, $r2=var1414, $z0=var2147, com.alibaba.fastjson2.JSONException=var2230, $r20=var1345, $r21=var741, $r22=var3811, java.lang.Object=var372, $r23=var82, $r24=var397}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r2 = "com.google.common.collect.ArrayListMultimap";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r20 = new com.alibaba.fastjson2.JSONException;	$r20 = new com.alibaba.fastjson2.JSONException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create map error : ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r24);	throw $r20
;block_num 2