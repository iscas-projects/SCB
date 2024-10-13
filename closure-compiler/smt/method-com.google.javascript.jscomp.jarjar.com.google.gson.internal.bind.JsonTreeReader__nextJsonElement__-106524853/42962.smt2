(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2215 0)
(declare-sort var3856 0)
(declare-sort var328 0)
(declare-sort var2648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var2215) var3856)
(declare-fun var328-init () var328)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2648) String)
(declare-fun cast-from-var3856-to-var2648 (var3856) var2648)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var328 String) void)
(declare-const null-var2215 var2215)
(declare-const var3856-NAME var3856)
(declare-const var1649 var2215) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var1649 null-var2215)))
(assert true)
(define-const var1599 var3856 (peek/1179433192 var1649)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var410 var3856 var3856-NAME) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NAME> 
 ; Statement: if r1 == $r2 goto $r8 = new java.lang.IllegalStateException 
(assert (= var1599 var410)) ; Cond: r1 == $r2 
(define-const var1910 var328 var328-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var1360 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1360)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1360!1 String)
(assert (= var1360!1 ""))
(assert true)
(define-const var1901 String (append/672562846 var1360!1 "Unexpected ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected ") 
(declare-const var1360!2 String)
(assert (= var1360!2 (str.++ var1360!1 "Unexpected ")))
(assert true)
(define-const var547 String (append/-1031950772 var1901 (cast-from-var3856-to-var2648 var1599))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1901!1 String)
(assert (str.prefixof var1901 var1901!1))
(assert true)
(define-const var1581 String (append/672562846 var547 " when reading a JsonElement.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when reading a JsonElement.") 
(declare-const var547!1 String)
(assert (= var547!1 (str.++ var547 " when reading a JsonElement.")))
(assert true)
(define-const var3486 String (toString/-2075883882 var1581)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1910 var3486)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13) 

(declare-const var1910!1 var328)
(declare-const var3486!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), var328-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3856-to-var2648=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2215=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var1649=r0, var3856=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var1599=r1, var410=$r2, var328=java.lang.IllegalStateException, var1910=$r8, var1360=$r9, var1901=$r10, var2648=java.lang.Object, var547=$r11, var1581=$r12, var3486=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var2215, r0=var1649, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var3856, r1=var1599, $r2=var410, java.lang.IllegalStateException=var328, $r8=var1910, $r9=var1360, $r10=var1901, java.lang.Object=var2648, $r11=var547, $r12=var1581, $r13=var3486}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NAME>;	if r1 == $r2 goto $r8 = new java.lang.IllegalStateException;	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when reading a JsonElement.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2