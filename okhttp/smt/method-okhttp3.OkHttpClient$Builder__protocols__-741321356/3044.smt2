(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1878 0)
(declare-sort var1040 0)
(declare-sort var270 0)
(declare-sort var3605 0)
(declare-sort var902 0)
(declare-sort var11 0)
(declare-sort var1610 0)
(declare-sort var817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var270_checkNotNullParameter/-2060636419 (var3605 String) void)
(declare-fun cast-from-var1040-to-var3605 (var1040) var3605)
(define-fun cast-from-var1878-to-var1878 ((arg var1878)) var1878 arg)
(declare-fun cast-from-var1040-to-var902 (var1040) var902)
(declare-fun var11_toMutableList/1186637850 (var902) var1040)
(declare-fun var1040_contains/-441121415 (var1040 var3605) Bool)
(declare-fun cast-from-var1610-to-var3605 (var1610) var3605)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3605) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var817-init () var817)
(declare-fun toString/-522406933 (var3605) String)
(declare-fun cast-from-String-to-var3605 (String) var3605)
(declare-fun <init>/875830710 (var817 String) void)
(declare-const null-var1878 var1878)
(declare-const null-var1040 var1040)
(declare-const var1610-H2_PRIOR_KNOWLEDGE var1610)
(declare-const var1610-HTTP_1_1 var1610)
(declare-const var1891 var1878) ; Statement: r1 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var1891 null-var1878)))
(declare-const var621 var1040) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var621 null-var1040)))
;(assert (var270_checkNotNullParameter/-2060636419 (cast-from-var1040-to-var3605 var621) "protocols")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "protocols") 

(declare-const var621!1 var1040)
(declare-const var2413 String)
(define-const var3482 var1878 (cast-from-var1878-to-var1878 var1891)) ; Statement: $r2 = (okhttp3.OkHttpClient$Builder) r1 
(define-const var3917 var902 (cast-from-var1040-to-var902 var621!1)) ; Statement: $r3 = (java.util.Collection) r0 
(define-const var500 var1040 (var11_toMutableList/1186637850 var3917)) ; Statement: r4 = staticinvoke <kotlin.collections.CollectionsKt: java.util.List toMutableList(java.util.Collection)>($r3) 
(define-const var795 var1610 var1610-H2_PRIOR_KNOWLEDGE) ; Statement: $r5 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE> 
(define-const var3815 Bool (var1040_contains/-441121415 var500 (cast-from-var1610-to-var3605 var795))) ; Statement: $z0 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (not (= (ite var3815 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2187 var1610 var1610-HTTP_1_1) ; Statement: $r29 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_1> 
(define-const var1048 Bool (var1040_contains/-441121415 var500 (cast-from-var1610-to-var3605 var2187))) ; Statement: $z5 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r29) 
 ; Statement: if $z5 == 0 goto $z6 = 0 
(assert (not (= (ite var1048 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var2684 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z6 != 0 goto $r6 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE> 
(assert (not (not (= (ite var2684 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var2430 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2430)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2430!1 String)
(assert (= var2430!1 ""))
(assert true)
(define-const var1441 String (append/672562846 var2430!1 "protocols must contain h2_prior_knowledge or http/1.1: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protocols must contain h2_prior_knowledge or http/1.1: ") 
(declare-const var2430!2 String)
(assert (= var2430!2 (str.++ var2430!1 "protocols must contain h2_prior_knowledge or http/1.1: ")))
(assert true)
(define-const var523 String (append/-1031950772 var1441 (cast-from-var1040-to-var3605 var500))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1441!1 String)
(assert (str.prefixof var1441 var1441!1))
(assert true)
(define-const var3251 String (toString/-2075883882 var523)) ; Statement: $r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3199 var817 var817-init) ; Statement: $r27 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3718 String (toString/-522406933 (cast-from-String-to-var3605 var3251))) ; Statement: $r28 = virtualinvoke $r30.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3199 var3718)) ; Statement: specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r28) 

(declare-const var3199!1 var817)
(declare-const var3718!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var270_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1040-to-var3605=([java.util.List], java.lang.Object), cast-from-var1878-to-var1878=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), cast-from-var1040-to-var902=([java.util.List], java.util.Collection), var11_toMutableList/1186637850=([java.util.Collection], java.util.List), var1040_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var1610-to-var3605=([okhttp3.Protocol], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var817-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3605=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1878=okhttp3.OkHttpClient$Builder, var1891=r1, var1040=java.util.List, var621=r0, var270=kotlin.jvm.internal.Intrinsics, var3605=java.lang.Object, var2413="protocols", var3482=$r2, var902=java.util.Collection, var3917=$r3, var11=kotlin.collections.CollectionsKt, var500=r4, var1610=okhttp3.Protocol, var795=$r5, var3815=$z0, var2187=$r29, var1048=$z5, var2684=$z6, var2430=$r24, var1441=$r25, var523=$r26, var3251=$r30, var817=java.lang.IllegalArgumentException, var3199=$r27, var3718=$r28}
; {okhttp3.OkHttpClient$Builder=var1878, r1=var1891, java.util.List=var1040, r0=var621, kotlin.jvm.internal.Intrinsics=var270, java.lang.Object=var3605, "protocols"=var2413, $r2=var3482, java.util.Collection=var902, $r3=var3917, kotlin.collections.CollectionsKt=var11, r4=var500, okhttp3.Protocol=var1610, $r5=var795, $z0=var3815, $r29=var2187, $z5=var1048, $z6=var2684, $r24=var2430, $r25=var1441, $r26=var523, $r30=var3251, java.lang.IllegalArgumentException=var817, $r27=var3199, $r28=var3718}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.OkHttpClient$Builder;	r0 := @parameter0: java.util.List;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "protocols");	$r2 = (okhttp3.OkHttpClient$Builder) r1;	$r3 = (java.util.Collection) r0;	r4 = staticinvoke <kotlin.collections.CollectionsKt: java.util.List toMutableList(java.util.Collection)>($r3);	$r5 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE>;	$z0 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r5);	if $z0 != 0 goto $z6 = 1;	$r29 = <okhttp3.Protocol: okhttp3.Protocol HTTP_1_1>;	$z5 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r29);	if $z5 == 0 goto $z6 = 0;	$z6 = 1;	goto [?= (branch)];	if $z6 != 0 goto $r6 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE>;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protocols must contain h2_prior_knowledge or http/1.1: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = new java.lang.IllegalArgumentException;	$r28 = virtualinvoke $r30.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r28);	throw $r27
;block_num 5