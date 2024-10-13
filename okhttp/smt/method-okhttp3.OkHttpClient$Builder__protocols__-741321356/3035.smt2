(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3826 0)
(declare-sort var3363 0)
(declare-sort var3142 0)
(declare-sort var2179 0)
(declare-sort var3225 0)
(declare-sort var534 0)
(declare-sort var2829 0)
(declare-sort var1759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3142_checkNotNullParameter/-2060636419 (var2179 String) void)
(declare-fun cast-from-var3363-to-var2179 (var3363) var2179)
(define-fun cast-from-var3826-to-var3826 ((arg var3826)) var3826 arg)
(declare-fun cast-from-var3363-to-var3225 (var3363) var3225)
(declare-fun var534_toMutableList/1186637850 (var3225) var3363)
(declare-fun var3363_contains/-441121415 (var3363 var2179) Bool)
(declare-fun cast-from-var2829-to-var2179 (var2829) var2179)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2179) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1759-init () var1759)
(declare-fun toString/-522406933 (var2179) String)
(declare-fun cast-from-String-to-var2179 (String) var2179)
(declare-fun <init>/875830710 (var1759 String) void)
(declare-const null-var3826 var3826)
(declare-const null-var3363 var3363)
(declare-const var2829-H2_PRIOR_KNOWLEDGE var2829)
(declare-const var3504 var3826) ; Statement: r1 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var3504 null-var3826)))
(declare-const var2886 var3363) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2886 null-var3363)))
;(assert (var3142_checkNotNullParameter/-2060636419 (cast-from-var3363-to-var2179 var2886) "protocols")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "protocols") 

(declare-const var2886!1 var3363)
(declare-const var3567 String)
(define-const var3059 var3826 (cast-from-var3826-to-var3826 var3504)) ; Statement: $r2 = (okhttp3.OkHttpClient$Builder) r1 
(define-const var1227 var3225 (cast-from-var3363-to-var3225 var2886!1)) ; Statement: $r3 = (java.util.Collection) r0 
(define-const var2987 var3363 (var534_toMutableList/1186637850 var1227)) ; Statement: r4 = staticinvoke <kotlin.collections.CollectionsKt: java.util.List toMutableList(java.util.Collection)>($r3) 
(define-const var869 var2829 var2829-H2_PRIOR_KNOWLEDGE) ; Statement: $r5 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE> 
(define-const var125 Bool (var3363_contains/-441121415 var2987 (cast-from-var2829-to-var2179 var869))) ; Statement: $z0 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var125 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1476 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z6 != 0 goto $r6 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE> 
(assert (not (not (= (ite var1476 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var271 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var271)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var271!1 String)
(assert (= var271!1 ""))
(assert true)
(define-const var2166 String (append/672562846 var271!1 "protocols must contain h2_prior_knowledge or http/1.1: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protocols must contain h2_prior_knowledge or http/1.1: ") 
(declare-const var271!2 String)
(assert (= var271!2 (str.++ var271!1 "protocols must contain h2_prior_knowledge or http/1.1: ")))
(assert true)
(define-const var2735 String (append/-1031950772 var2166 (cast-from-var3363-to-var2179 var2987))) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2166!1 String)
(assert (str.prefixof var2166 var2166!1))
(assert true)
(define-const var2511 String (toString/-2075883882 var2735)) ; Statement: $r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var840 var1759 var1759-init) ; Statement: $r27 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var976 String (toString/-522406933 (cast-from-String-to-var2179 var2511))) ; Statement: $r28 = virtualinvoke $r30.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var840 var976)) ; Statement: specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r28) 

(declare-const var840!1 var1759)
(declare-const var976!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var3142_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3363-to-var2179=([java.util.List], java.lang.Object), cast-from-var3826-to-var3826=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), cast-from-var3363-to-var3225=([java.util.List], java.util.Collection), var534_toMutableList/1186637850=([java.util.Collection], java.util.List), var3363_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var2829-to-var2179=([okhttp3.Protocol], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1759-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2179=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3826=okhttp3.OkHttpClient$Builder, var3504=r1, var3363=java.util.List, var2886=r0, var3142=kotlin.jvm.internal.Intrinsics, var2179=java.lang.Object, var3567="protocols", var3059=$r2, var3225=java.util.Collection, var1227=$r3, var534=kotlin.collections.CollectionsKt, var2987=r4, var2829=okhttp3.Protocol, var869=$r5, var125=$z0, var1476=$z6, var271=$r24, var2166=$r25, var2735=$r26, var2511=$r30, var1759=java.lang.IllegalArgumentException, var840=$r27, var976=$r28}
; {okhttp3.OkHttpClient$Builder=var3826, r1=var3504, java.util.List=var3363, r0=var2886, kotlin.jvm.internal.Intrinsics=var3142, java.lang.Object=var2179, "protocols"=var3567, $r2=var3059, java.util.Collection=var3225, $r3=var1227, kotlin.collections.CollectionsKt=var534, r4=var2987, okhttp3.Protocol=var2829, $r5=var869, $z0=var125, $z6=var1476, $r24=var271, $r25=var2166, $r26=var2735, $r30=var2511, java.lang.IllegalArgumentException=var1759, $r27=var840, $r28=var976}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.OkHttpClient$Builder;	r0 := @parameter0: java.util.List;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "protocols");	$r2 = (okhttp3.OkHttpClient$Builder) r1;	$r3 = (java.util.Collection) r0;	r4 = staticinvoke <kotlin.collections.CollectionsKt: java.util.List toMutableList(java.util.Collection)>($r3);	$r5 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE>;	$z0 = interfaceinvoke r4.<java.util.List: boolean contains(java.lang.Object)>($r5);	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= (branch)];	if $z6 != 0 goto $r6 = <okhttp3.Protocol: okhttp3.Protocol H2_PRIOR_KNOWLEDGE>;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("protocols must contain h2_prior_knowledge or http/1.1: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = new java.lang.IllegalArgumentException;	$r28 = virtualinvoke $r30.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r28);	throw $r27
;block_num 4