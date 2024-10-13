(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var410 0)
(declare-sort var396 0)
(declare-sort var2473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2473-init () var2473)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2473 String) void)
(declare-const null-var279 var279)
(declare-const null-var410 var410)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var3010 var279) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var3010 null-var279)))
(declare-const var3415 var410) ; Statement: r0 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3415 null-var410)))
(declare-const var2809 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2809 null-Bool)))
(declare-const var458 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var458 null-String)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (not (= var3415 null-var410)))) ; Negate: Cond: r0 != null  
(define-const var1180 var2473 var2473-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var651 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var651)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var651!1 String)
(assert (= var651!1 ""))
(assert true)
(define-const var1859 String (append/672562846 var651!1 "Invalid ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ") 
(declare-const var651!2 String)
(assert (= var651!2 (str.++ var651!1 "Invalid ")))
(assert true)
(define-const var383 String (append/672562846 var1859 var458)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1859!1 String)
(assert (= var1859!1 (str.++ var1859 var458)))
(assert true)
(define-const var3067 String (append/672562846 var383 " (must not be null)")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null)") 
(declare-const var383!1 String)
(assert (= var383!1 (str.++ var383 " (must not be null)")))
(assert true)
(define-const var1231 String (toString/-2075883882 var3067)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1180 var1231)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var1180!1 var2473)
(declare-const var1231!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2473-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var279=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var3010=r1, var410=jdk.internal.org.objectweb.asm.Label, var3415=r0, var2809=z0, var458=r6, var396=null_type, var2473=java.lang.IllegalArgumentException, var1180=$r11, var651=$r12, var1859=$r13, var383=$r14, var3067=$r15, var1231=$r16}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var279, r1=var3010, jdk.internal.org.objectweb.asm.Label=var410, r0=var3415, z0=var2809, r6=var458, null_type=var396, java.lang.IllegalArgumentException=var2473, $r11=var1180, $r12=var651, $r13=var1859, $r14=var383, $r15=var3067, $r16=var1231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	r0 := @parameter0: jdk.internal.org.objectweb.asm.Label;	z0 := @parameter1: boolean;	r6 := @parameter2: java.lang.String;	if r0 != null goto (branch);	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null)");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2