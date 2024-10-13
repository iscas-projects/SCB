(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3202 0)
(declare-sort var2213 0)
(declare-sort var2377 0)
(declare-sort var1095 0)
(declare-sort var1227 0)
(declare-sort var10 0)
(declare-sort var3085 0)
(declare-sort var2379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2377_checkNotNullParameter/-2060636419 (var1095 String) void)
(declare-fun cast-from-var2213-to-var1095 (var2213) var1095)
(define-fun cast-from-var3202-to-var3202 ((arg var3202)) var3202 arg)
(declare-fun cast-from-var2213-to-var1227 (var2213) var1227)
(declare-fun var10_toMutableList/1186637850 (var1227) var2213)
(declare-fun var2213_contains/-441121415 (var2213 var1095) Bool)
(declare-fun cast-from-var3085-to-var1095 (var3085) var1095)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1095) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2379-init () var2379)
(declare-fun toString/-522406933 (var1095) String)
(declare-fun cast-from-String-to-var1095 (String) var1095)
(declare-fun <init>/875830710 (var2379 String) void)
(declare-const null-var3202 var3202)
(declare-const null-var2213 var2213)
(declare-const var3085-H2_PRIOR_KNOWLEDGE var3085)
(declare-const var3085-HTTP_1_1 var3085)
(declare-const var3128 var3202) ; Statement: r1 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var3128 null-var3202)))
(declare-const var971 var2213) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var971 null-var2213)))
;(assert (var2377_checkNotNullParameter/-2060636419 (cast-from-var2213-to-var1095 var971) "protocols")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "protocols") 

(declare-const var971!1 var2213)
(declare-const var2247 String)
(define-const var786 var3202 (cast-from-var3202-to-var3202 var3128)) ; Statement: $r2 = (okhttp3.OkHttpClient$Builder) r1 
(define-const var1139 var1227 (cast-from-var2213-to-var1227 var971!1)) ; Statement: $r3 = (java.util.Collection) r0 
(define-const var1638 var2213 (var10_toMutableList/1186637850 var1139)) ; Statement: r4 = staticinvoke <kotlin.collections.CollectionsKt: java.util.List toMutableList(java.util.Collection)>($r3) 
(define-const var476 var3085 var3085-H2_PRIOR_KNOWLEDGE) ; Statement: $r5 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE> 
(define-const var1005 Bool (var2213_contains/-441121415 var1638 (cast-from-var3085-to-var1095 var476))) ; Statement: $z0 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (not (= (ite var1005 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var465 var3085 var3085-HTTP_1_1) ; Statement: $r29 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_1> 
(define-const var790 Bool (var2213_contains/-441121415 var1638 (cast-from-var3085-to-var1095 var465))) ; Statement: $z5 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r29) 
 ; Statement: if $z5 == 0 goto $z6 = 0 
(assert (= (ite var790 1 0) 0)) ; Cond: $z5 == 0 
(define-const var1244 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z6 != 0 goto $r6 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE> 
(assert (not (not (= (ite var1244 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var1084 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1084)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1084!1 String)
(assert (= var1084!1 ""))
(assert true)
(define-const var2137 String (append/672562846 var1084!1 "protocols must contain h2_prior_knowledge or http/1.1: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protocols must contain h2_prior_knowledge or http/1.1: ") 
(declare-const var1084!2 String)
(assert (= var1084!2 (str.++ var1084!1 "protocols must contain h2_prior_knowledge or http/1.1: ")))
(assert true)
(define-const var3132 String (append/-1031950772 var2137 (cast-from-var2213-to-var1095 var1638))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2137!1 String)
(assert (str.prefixof var2137 var2137!1))
(assert true)
(define-const var3144 String (toString/-2075883882 var3132)) ; Statement: $r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1949 var2379 var2379-init) ; Statement: $r27 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1306 String (toString/-522406933 (cast-from-String-to-var1095 var3144))) ; Statement: $r28 = virtualinvoke $r30.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1949 var1306)) ; Statement: specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r28) 

(declare-const var1949!1 var2379)
(declare-const var1306!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var2377_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2213-to-var1095=([java.util.List], java.lang.Object), cast-from-var3202-to-var3202=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), cast-from-var2213-to-var1227=([java.util.List], java.util.Collection), var10_toMutableList/1186637850=([java.util.Collection], java.util.List), var2213_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var3085-to-var1095=([okhttp3.Protocol], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2379-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1095=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3202=okhttp3.OkHttpClient$Builder, var3128=r1, var2213=java.util.List, var971=r0, var2377=kotlin.jvm.internal.Intrinsics, var1095=java.lang.Object, var2247="protocols", var786=$r2, var1227=java.util.Collection, var1139=$r3, var10=kotlin.collections.CollectionsKt, var1638=r4, var3085=okhttp3.Protocol, var476=$r5, var1005=$z0, var465=$r29, var790=$z5, var1244=$z6, var1084=$r24, var2137=$r25, var3132=$r26, var3144=$r30, var2379=java.lang.IllegalArgumentException, var1949=$r27, var1306=$r28}
; {okhttp3.OkHttpClient$Builder=var3202, r1=var3128, java.util.List=var2213, r0=var971, kotlin.jvm.internal.Intrinsics=var2377, java.lang.Object=var1095, "protocols"=var2247, $r2=var786, java.util.Collection=var1227, $r3=var1139, kotlin.collections.CollectionsKt=var10, r4=var1638, okhttp3.Protocol=var3085, $r5=var476, $z0=var1005, $r29=var465, $z5=var790, $z6=var1244, $r24=var1084, $r25=var2137, $r26=var3132, $r30=var3144, java.lang.IllegalArgumentException=var2379, $r27=var1949, $r28=var1306}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.OkHttpClient$Builder;	r0 := @parameter0: java.util.List;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "protocols");	$r2 = (okhttp3.OkHttpClient$Builder) r1;	$r3 = (java.util.Collection) r0;	r4 = staticinvoke <kotlin.collections.CollectionsKt: java.util.List toMutableList(java.util.Collection)>($r3);	$r5 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE>;	$z0 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r5);	if $z0 != 0 goto $z6 = 1;	$r29 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_1>;	$z5 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r29);	if $z5 == 0 goto $z6 = 0;	$z6 = 0;	if $z6 != 0 goto $r6 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE>;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protocols must contain h2_prior_knowledge or http/1.1: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = new java.lang.IllegalArgumentException;	$r28 = virtualinvoke $r30.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r28);	throw $r27
;block_num 5