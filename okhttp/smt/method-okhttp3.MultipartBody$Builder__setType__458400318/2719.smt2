(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2007 0)
(declare-sort var2850 0)
(declare-sort var3202 0)
(declare-sort var1731 0)
(declare-sort var1 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3202_checkNotNullParameter/-2060636419 (var1731 String) void)
(declare-fun cast-from-var2850-to-var1731 (var2850) var1731)
(define-fun cast-from-var2007-to-var2007 ((arg var2007)) var2007 arg)
(declare-fun type/-970379247 (var2850) String)
(declare-fun var3202_areEqual/-886455880 (var1731 var1731) Bool)
(declare-fun cast-from-String-to-var1731 (String) var1731)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1731) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1-init () var1)
(declare-fun toString/-522406933 (var1731) String)
(declare-fun <init>/875830710 (var1 String) void)
(declare-const null-var2007 var2007)
(declare-const null-var2850 var2850)
(declare-const var3335 var2007) ; Statement: r1 := @this: okhttp3.MultipartBody$Builder 
(assert (not (= var3335 null-var2007)))
(declare-const var812 var2850) ; Statement: r0 := @parameter0: okhttp3.MediaType 
(assert (not (= var812 null-var2850)))
;(assert (var3202_checkNotNullParameter/-2060636419 (cast-from-var2850-to-var1731 var812) "type")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "type") 

(declare-const var812!1 var2850)
(declare-const var2624 String)
(define-const var3890 var2007 (cast-from-var2007-to-var2007 var3335)) ; Statement: $r2 = (okhttp3.MultipartBody$Builder) r1 
(assert true)
(define-const var14 String (type/-970379247 var812!1)) ; Statement: $r3 = virtualinvoke r0.<okhttp3.MediaType: java.lang.String type()>() 
(define-const var3174 Bool (var3202_areEqual/-886455880 (cast-from-String-to-var1731 var14) (cast-from-String-to-var1731 "multipart"))) ; Statement: $z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>($r3, "multipart") 
 ; Statement: if $z0 != 0 goto $r2.<okhttp3.MultipartBody$Builder: okhttp3.MediaType type> = r0 
(assert (not (not (= (ite var3174 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3455 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3455)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3455!1 String)
(assert (= var3455!1 ""))
(assert true)
(define-const var1730 String (append/672562846 var3455!1 "multipart != ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("multipart != ") 
(declare-const var3455!2 String)
(assert (= var3455!2 (str.++ var3455!1 "multipart != ")))
(assert true)
(define-const var3756 String (append/-1031950772 var1730 (cast-from-var2850-to-var1731 var812!1))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1730!1 String)
(assert (str.prefixof var1730 var1730!1))
(assert true)
(define-const var3571 String (toString/-2075883882 var3756)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3919 var1 var1-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2677 String (toString/-522406933 (cast-from-String-to-var1731 var3571))) ; Statement: $r9 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3919 var2677)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3919!1 var1)
(declare-const var2677!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3202_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2850-to-var1731=([okhttp3.MediaType], java.lang.Object), cast-from-var2007-to-var2007=([okhttp3.MultipartBody$Builder], okhttp3.MultipartBody$Builder), type/-970379247=([okhttp3.MediaType], java.lang.String), var3202_areEqual/-886455880=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var1731=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2007=okhttp3.MultipartBody$Builder, var3335=r1, var2850=okhttp3.MediaType, var812=r0, var3202=kotlin.jvm.internal.Intrinsics, var1731=java.lang.Object, var2624="type", var3890=$r2, var14=$r3, var3174=$z0, var3455=$r5, var1730=$r6, var3756=$r7, var3571=$r10, var1=java.lang.IllegalArgumentException, var3919=$r8, var2677=$r9}
; {okhttp3.MultipartBody$Builder=var2007, r1=var3335, okhttp3.MediaType=var2850, r0=var812, kotlin.jvm.internal.Intrinsics=var3202, java.lang.Object=var1731, "type"=var2624, $r2=var3890, $r3=var14, $z0=var3174, $r5=var3455, $r6=var1730, $r7=var3756, $r10=var3571, java.lang.IllegalArgumentException=var1, $r8=var3919, $r9=var2677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.MultipartBody$Builder;	r0 := @parameter0: okhttp3.MediaType;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "type");	$r2 = (okhttp3.MultipartBody$Builder) r1;	$r3 = virtualinvoke r0.<okhttp3.MediaType: java.lang.String type()>();	$z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>($r3, "multipart");	if $z0 != 0 goto $r2.<okhttp3.MultipartBody$Builder: okhttp3.MediaType type> = r0;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("multipart != ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.IllegalArgumentException;	$r9 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r8
;block_num 2