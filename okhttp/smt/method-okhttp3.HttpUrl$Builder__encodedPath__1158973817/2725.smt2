(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var294 0)
(declare-sort var2033 0)
(declare-sort var891 0)
(declare-sort var3208 0)
(declare-sort var736 0)
(declare-sort var2215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var891_checkNotNullParameter/-2060636419 (var3208 String) void)
(declare-fun cast-from-String-to-var3208 (String) var3208)
(define-fun cast-from-var294-to-var294 ((arg var294)) var294 arg)
(declare-fun var736_startsWith$default/493066340 (String String Bool Int var3208) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2215-init () var2215)
(declare-fun toString/-522406933 (var3208) String)
(declare-fun <init>/875830710 (var2215 String) void)
(declare-const null-var294 var294)
(declare-const null-String String)
(declare-const null-var3208 var3208)
(declare-const var2533 var294) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2533 null-var294)))
(declare-const var636 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var636 null-String)))
;(assert (var891_checkNotNullParameter/-2060636419 (cast-from-String-to-var3208 var636) "encodedPath")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPath") 

(declare-const var636!1 String)
(declare-const var1910 String)
(define-const var3801 var294 (cast-from-var294-to-var294 var2533)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r1 
(define-const var3180 Bool (var736_startsWith$default/493066340 var636!1 "/" (ite (= 1 0) true false) 2 null-var3208)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "/", 0, 2, null) 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= (ite var3180 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1997 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1997)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1997!1 String)
(assert (= var1997!1 ""))
(assert true)
(define-const var2426 String (append/672562846 var1997!1 "unexpected encodedPath: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected encodedPath: ") 
(declare-const var1997!2 String)
(assert (= var1997!2 (str.++ var1997!1 "unexpected encodedPath: ")))
(assert true)
(define-const var3695 String (append/672562846 var2426 var636!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 var636!1)))
(assert true)
(define-const var3147 String (toString/-2075883882 var3695)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1855 var2215 var2215-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3228 String (toString/-522406933 (cast-from-String-to-var3208 var3147))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1855 var3228)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1855!1 var2215)
(declare-const var3228!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var891_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3208=([java.lang.String], java.lang.Object), cast-from-var294-to-var294=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), var736_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2215-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var294=okhttp3.HttpUrl$Builder, var2533=r1, var636=r0, var2033=null_type, var891=kotlin.jvm.internal.Intrinsics, var3208=java.lang.Object, var1910="encodedPath", var3801=$r2, var736=kotlin.text.StringsKt, var3180=$z0, var1997=$r4, var2426=$r5, var3695=$r6, var3147=$r9, var2215=java.lang.IllegalArgumentException, var1855=$r7, var3228=$r8}
; {okhttp3.HttpUrl$Builder=var294, r1=var2533, r0=var636, null_type=var2033, kotlin.jvm.internal.Intrinsics=var891, java.lang.Object=var3208, "encodedPath"=var1910, $r2=var3801, kotlin.text.StringsKt=var736, $z0=var3180, $r4=var1997, $r5=var2426, $r6=var3695, $r9=var3147, java.lang.IllegalArgumentException=var2215, $r7=var1855, $r8=var3228}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "encodedPath");	$r2 = (okhttp3.HttpUrl$Builder) r1;	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>(r0, "/", 0, 2, null);	if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected encodedPath: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 2