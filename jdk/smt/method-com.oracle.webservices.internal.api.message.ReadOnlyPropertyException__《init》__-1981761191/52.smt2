(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3597 0)
(declare-sort var3225 0)
(declare-sort var2760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2760 String) void)
(declare-fun cast-from-var3597-to-var2760 (var3597) var2760)
(declare-fun propertyName/-1436665301 (var3597) String)
(declare-const null-var3597 var3597)
(declare-const null-String String)
(declare-const var3456 var3597) ; Statement: r0 := @this: com.oracle.webservices.internal.api.message.ReadOnlyPropertyException 
(assert (not (= var3456 null-var3597)))
(declare-const var2624 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2624 null-String)))
(define-const var2612 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2612)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2612!1 String)
(assert (= var2612!1 ""))
(assert true)
(define-const var1466 String (append/672562846 var2612!1 var2624)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2612!2 String)
(assert (= var2612!2 (str.++ var2612!1 var2624)))
(assert true)
(define-const var1292 String (append/672562846 var1466 " is a read-only property.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is a read-only property.") 
(declare-const var1466!1 String)
(assert (= var1466!1 (str.++ var1466 " is a read-only property.")))
(assert true)
(define-const var459 String (toString/-2075883882 var1292)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 (cast-from-var3597-to-var2760 var3456) var459)) ; Statement: specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3456!1 var3597)
(declare-const var459!1 String)
(declare-const var3456!2 var3597)
(assert (not (= var3456!2 null-var3597)))
(assert (= (propertyName/-1436665301 var3456!2) var2624)) ; Statement: r0.<com.oracle.webservices.internal.api.message.ReadOnlyPropertyException: java.lang.String propertyName> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), cast-from-var3597-to-var2760=([com.oracle.webservices.internal.api.message.ReadOnlyPropertyException], java.lang.IllegalArgumentException), propertyName/-1436665301=([com.oracle.webservices.internal.api.message.ReadOnlyPropertyException], java.lang.String)}
; {var3597=com.oracle.webservices.internal.api.message.ReadOnlyPropertyException, var3456=r0, var2624=r2, var3225=null_type, var2612=$r1, var1466=$r3, var1292=$r4, var459=$r5, var2760=java.lang.IllegalArgumentException}
; {com.oracle.webservices.internal.api.message.ReadOnlyPropertyException=var3597, r0=var3456, r2=var2624, null_type=var3225, $r1=var2612, $r3=var1466, $r4=var1292, $r5=var459, java.lang.IllegalArgumentException=var2760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.oracle.webservices.internal.api.message.ReadOnlyPropertyException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is a read-only property.");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	r0.<com.oracle.webservices.internal.api.message.ReadOnlyPropertyException: java.lang.String propertyName> = r2;	return
;block_num 1