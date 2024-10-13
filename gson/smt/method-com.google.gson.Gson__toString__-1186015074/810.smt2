(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var263 0)
(declare-sort var1144 0)
(declare-sort var648 0)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun serializeNulls/1896892294 (var263) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun factories/1896892294 (var263) var1144)
(declare-fun append/-1031950772 (String var648) String)
(declare-fun cast-from-var1144-to-var648 (var1144) var648)
(declare-fun constructorConstructor/1896892294 (var263) var2606)
(declare-fun cast-from-var2606-to-var648 (var2606) var648)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var263 var263)
(declare-const var523 var263) ; Statement: r1 := @this: com.google.gson.Gson 
(assert (not (= var523 null-var263)))
(define-const var3671 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3671)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3671!1 String)
(assert (= var3671!1 ""))
(assert true)
(define-const var1158 String (append/672562846 var3671!1 "{serializeNulls:")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{serializeNulls:") 
(declare-const var3671!2 String)
(assert (= var3671!2 (str.++ var3671!1 "{serializeNulls:")))
(define-const var1085 Bool (serializeNulls/1896892294 var523)) ; Statement: $z0 = r1.<com.google.gson.Gson: boolean serializeNulls> 
(assert true)
(define-const var1976 String (append/-388390247 var1158 var1085)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var1158!1 String)
(assert (str.prefixof var1158 var1158!1))
(assert true)
(define-const var1984 String (append/672562846 var1976 ",factories:")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",factories:") 
(declare-const var1976!1 String)
(assert (= var1976!1 (str.++ var1976 ",factories:")))
(define-const var3297 var1144 (factories/1896892294 var523)) ; Statement: $r4 = r1.<com.google.gson.Gson: java.util.List factories> 
(assert true)
(define-const var2630 String (append/-1031950772 var1984 (cast-from-var1144-to-var648 var3297))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1984!1 String)
(assert (str.prefixof var1984 var1984!1))
(assert true)
(define-const var605 String (append/672562846 var2630 ",instanceCreators:")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",instanceCreators:") 
(declare-const var2630!1 String)
(assert (= var2630!1 (str.++ var2630 ",instanceCreators:")))
(define-const var3701 var2606 (constructorConstructor/1896892294 var523)) ; Statement: $r7 = r1.<com.google.gson.Gson: com.google.gson.internal.ConstructorConstructor constructorConstructor> 
(assert true)
(define-const var3590 String (append/-1031950772 var605 (cast-from-var2606-to-var648 var3701))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var605!1 String)
(assert (str.prefixof var605 var605!1))
(assert true)
(define-const var934 String (append/672562846 var3590 "}")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3590!1 String)
(assert (= var3590!1 (str.++ var3590 "}")))
(assert true)
(define-const var832 String (toString/-2075883882 var934)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), serializeNulls/1896892294=([com.google.gson.Gson], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), factories/1896892294=([com.google.gson.Gson], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1144-to-var648=([java.util.List], java.lang.Object), constructorConstructor/1896892294=([com.google.gson.Gson], com.google.gson.internal.ConstructorConstructor), cast-from-var2606-to-var648=([com.google.gson.internal.ConstructorConstructor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var263=com.google.gson.Gson, var523=r1, var3671=$r0, var1158=$r2, var1085=$z0, var1976=$r3, var1984=$r5, var1144=java.util.List, var3297=$r4, var648=java.lang.Object, var2630=$r6, var605=$r8, var2606=com.google.gson.internal.ConstructorConstructor, var3701=$r7, var3590=$r9, var934=$r10, var832=$r11}
; {com.google.gson.Gson=var263, r1=var523, $r0=var3671, $r2=var1158, $z0=var1085, $r3=var1976, $r5=var1984, java.util.List=var1144, $r4=var3297, java.lang.Object=var648, $r6=var2630, $r8=var605, com.google.gson.internal.ConstructorConstructor=var2606, $r7=var3701, $r9=var3590, $r10=var934, $r11=var832}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.Gson;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{serializeNulls:");	$z0 = r1.<com.google.gson.Gson: boolean serializeNulls>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",factories:");	$r4 = r1.<com.google.gson.Gson: java.util.List factories>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",instanceCreators:");	$r7 = r1.<com.google.gson.Gson: com.google.gson.internal.ConstructorConstructor constructorConstructor>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1