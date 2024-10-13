(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1497 0)
(declare-sort var3750 0)
(declare-sort var3137 0)
(declare-sort var2151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var1497-to-var1497 ((arg var1497)) var1497 arg)
(declare-fun var3137_toCanonicalHost/367558819 (String) String)
(declare-fun var2151-init () var2151)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2151 String) void)
(declare-const null-var1497 var1497)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var963 var1497) ; Statement: r0 := @this: okhttp3.Cookie$Builder 
(assert (not (= var963 null-var1497)))
(declare-const var3020 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3020 null-String)))
(declare-const var2578 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2578 null-Bool)))
(define-const var3883 var1497 (cast-from-var1497-to-var1497 var963)) ; Statement: $r1 = (okhttp3.Cookie$Builder) r0 
(define-const var180 String (var3137_toCanonicalHost/367558819 var3020)) ; Statement: $r3 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>(r2) 
 ; Statement: if $r3 != null goto $r1.<okhttp3.Cookie$Builder: java.lang.String domain> = $r3 
(assert (not (not (= var180 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var191 var2151 var2151-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3319 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3319)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3319!1 String)
(assert (= var3319!1 ""))
(assert true)
(define-const var3887 String (append/672562846 var3319!1 "unexpected domain: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected domain: ") 
(declare-const var3319!2 String)
(assert (= var3319!2 (str.++ var3319!1 "unexpected domain: ")))
(assert true)
(define-const var3905 String (append/672562846 var3887 var3020)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3887!1 String)
(assert (= var3887!1 (str.++ var3887 var3020)))
(assert true)
(define-const var993 String (toString/-2075883882 var3905)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var191 var993)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var191!1 var2151)
(declare-const var993!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1497-to-var1497=([okhttp3.Cookie$Builder], okhttp3.Cookie$Builder), var3137_toCanonicalHost/367558819=([java.lang.String], java.lang.String), var2151-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1497=okhttp3.Cookie$Builder, var963=r0, var3020=r2, var3750=null_type, var2578=z0, var3883=$r1, var3137=okhttp3.internal.HostnamesKt, var180=$r3, var2151=java.lang.IllegalArgumentException, var191=$r5, var3319=$r6, var3887=$r7, var3905=$r8, var993=$r9}
; {okhttp3.Cookie$Builder=var1497, r0=var963, r2=var3020, null_type=var3750, z0=var2578, $r1=var3883, okhttp3.internal.HostnamesKt=var3137, $r3=var180, java.lang.IllegalArgumentException=var2151, $r5=var191, $r6=var3319, $r7=var3887, $r8=var3905, $r9=var993}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Cookie$Builder;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = (okhttp3.Cookie$Builder) r0;	$r3 = staticinvoke <okhttp3.internal.HostnamesKt: java.lang.String toCanonicalHost(java.lang.String)>(r2);	if $r3 != null goto $r1.<okhttp3.Cookie$Builder: java.lang.String domain> = $r3;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected domain: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2