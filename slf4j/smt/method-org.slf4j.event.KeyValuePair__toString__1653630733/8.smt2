(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var918 0)
(declare-sort var2889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/1106669109 (var918) String)
(declare-fun String_valueOf/-333372740 (var2889) String)
(declare-fun cast-from-String-to-var2889 (String) var2889)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1106669109 (var918) var2889)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var918 var918)
(declare-const var373 var918) ; Statement: r1 := @this: org.slf4j.event.KeyValuePair 
(assert (not (= var373 null-var918)))
(define-const var2281 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2281)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2281!1 String)
(assert (= var2281!1 ""))
(define-const var91 String (key/1106669109 var373)) ; Statement: $r2 = r1.<org.slf4j.event.KeyValuePair: java.lang.String key> 
(define-const var1220 String (String_valueOf/-333372740 (cast-from-String-to-var2889 var91))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
(define-const var3595 String (append/672562846 var2281!1 var1220)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2281!2 String)
(assert (= var2281!2 (str.++ var2281!1 var1220)))
(assert true)
(define-const var296 String (append/672562846 var3595 "=\u0022")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\"") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 "=\u0022")))
(define-const var1732 var2889 (value/1106669109 var373)) ; Statement: $r5 = r1.<org.slf4j.event.KeyValuePair: java.lang.Object value> 
(define-const var3502 String (String_valueOf/-333372740 var1732)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5) 
(assert true)
(define-const var1316 String (append/672562846 var296 var3502)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var296!1 String)
(assert (= var296!1 (str.++ var296 var3502)))
(assert true)
(define-const var140 String (append/672562846 var1316 "\u0022")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1316!1 String)
(assert (= var1316!1 (str.++ var1316 "\u0022")))
(assert true)
(define-const var2846 String (toString/-2075883882 var140)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/1106669109=([org.slf4j.event.KeyValuePair], java.lang.String), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var2889=([java.lang.String], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1106669109=([org.slf4j.event.KeyValuePair], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var918=org.slf4j.event.KeyValuePair, var373=r1, var2281=$r0, var91=$r2, var2889=java.lang.Object, var1220=$r3, var3595=$r4, var296=$r7, var1732=$r5, var3502=$r6, var1316=$r8, var140=$r9, var2846=$r10}
; {org.slf4j.event.KeyValuePair=var918, r1=var373, $r0=var2281, $r2=var91, java.lang.Object=var2889, $r3=var1220, $r4=var3595, $r7=var296, $r5=var1732, $r6=var3502, $r8=var1316, $r9=var140, $r10=var2846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.slf4j.event.KeyValuePair;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.slf4j.event.KeyValuePair: java.lang.String key>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=\"");	$r5 = r1.<org.slf4j.event.KeyValuePair: java.lang.Object value>;	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1