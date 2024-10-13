(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3856 0)
(declare-sort var3906 0)
(declare-sort var3013 0)
(declare-sort var3334 0)
(declare-sort var51 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3013_checkNotNullParameter/-2060636419 (var3334 String) void)
(declare-fun cast-from-String-to-var3334 (String) var3334)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var51-init () var51)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var51 String) void)
(declare-const null-var3856 var3856)
(declare-const null-String String)
(declare-const var366 var3856) ; Statement: r1 := @this: okhttp3.TlsVersion$Companion 
(assert (not (= var366 null-var3856)))
(declare-const var3739 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3739 null-String)))
;(assert (var3013_checkNotNullParameter/-2060636419 (cast-from-String-to-var3334 var3739) "javaName")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "javaName") 

(declare-const var3739!1 String)
(declare-const var1998 String)
(assert true)
(define-const var2708 Int (hashCode/-467973558 var3739!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -503070503: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1.1");     case -503070502: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1.2");     case -503070501: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1.3");     case 79201641: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SSLv3");     case 79923350: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1");     default: goto $r3 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2708 79923350)) (and (not (= var2708 79201641)) (and (not (= var2708 (- 503070501))) (and (not (= var2708 (- 503070502))) (and (not (= var2708 (- 503070503))) true)))))) ; Intersect: Negate: Cond: $i0 == 79923350   and Intersect: Negate: Cond: $i0 == 79201641   and Intersect: Negate: Cond: $i0 == -503070501   and Intersect: Negate: Cond: $i0 == -503070502   and Intersect: Negate: Cond: $i0 == -503070503   and Non Conditional     
(define-const var863 var51 var51-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1180 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1180)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1180!1 String)
(assert (= var1180!1 ""))
(assert true)
(define-const var3189 String (append/672562846 var1180!1 "Unexpected TLS version: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected TLS version: ") 
(declare-const var1180!2 String)
(assert (= var1180!2 (str.++ var1180!1 "Unexpected TLS version: ")))
(assert true)
(define-const var2040 String (append/672562846 var3189 var3739!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3189!1 String)
(assert (= var3189!1 (str.++ var3189 var3739!1)))
(assert true)
(define-const var2895 String (toString/-2075883882 var2040)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var863 var2895)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var863!1 var51)
(declare-const var2895!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3013_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3334=([java.lang.String], java.lang.Object), hashCode/-467973558=([java.lang.String], int), var51-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3856=okhttp3.TlsVersion$Companion, var366=r1, var3739=r0, var3906=null_type, var3013=kotlin.jvm.internal.Intrinsics, var3334=java.lang.Object, var1998="javaName", var2708=$i0, var51=java.lang.IllegalArgumentException, var863=$r3, var1180=$r4, var3189=$r5, var2040=$r6, var2895=$r7}
; {okhttp3.TlsVersion$Companion=var3856, r1=var366, r0=var3739, null_type=var3906, kotlin.jvm.internal.Intrinsics=var3013, java.lang.Object=var3334, "javaName"=var1998, $i0=var2708, java.lang.IllegalArgumentException=var51, $r3=var863, $r4=var1180, $r5=var3189, $r6=var2040, $r7=var2895}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.TlsVersion$Companion;	r0 := @parameter0: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "javaName");	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -503070503: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1.1");     case -503070502: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1.2");     case -503070501: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1.3");     case 79201641: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SSLv3");     case 79923350: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TLSv1");     default: goto $r3 = new java.lang.IllegalArgumentException; };	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected TLS version: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2