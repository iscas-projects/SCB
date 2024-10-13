(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1326 0)
(declare-sort var3095 0)
(declare-sort var262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var262-init () var262)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-139886048 (var262 String) void)
(declare-const null-var1326 var1326)
(declare-const null-String String)
(declare-const var1271 var1326) ; Statement: r6 := @this: org.apache.commons.io.serialization.ValidatingObjectInputStream 
(assert (not (= var1271 null-var1326)))
(declare-const var771 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var771 null-String)))
(define-const var3933 var262 var262-init) ; Statement: $r0 = new java.io.InvalidClassException 
(define-const var565 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var565)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var565!1 String)
(assert (= var565!1 ""))
(assert true)
(define-const var1785 String (append/672562846 var565!1 "Class name not accepted: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class name not accepted: ") 
(declare-const var565!2 String)
(assert (= var565!2 (str.++ var565!1 "Class name not accepted: ")))
(assert true)
(define-const var178 String (append/672562846 var1785 var771)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1785!1 String)
(assert (= var1785!1 (str.++ var1785 var771)))
(assert true)
(define-const var2067 String (toString/-2075883882 var178)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-139886048 var3933 var2067)) ; Statement: specialinvoke $r0.<java.io.InvalidClassException: void <init>(java.lang.String)>($r5) 

(declare-const var3933!1 var262)
(declare-const var2067!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var262-init=([], java.io.InvalidClassException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-139886048=([java.io.InvalidClassException, java.lang.String], void)}
; {var1326=org.apache.commons.io.serialization.ValidatingObjectInputStream, var1271=r6, var771=r2, var3095=null_type, var262=java.io.InvalidClassException, var3933=$r0, var565=$r1, var1785=$r3, var178=$r4, var2067=$r5}
; {org.apache.commons.io.serialization.ValidatingObjectInputStream=var1326, r6=var1271, r2=var771, null_type=var3095, java.io.InvalidClassException=var262, $r0=var3933, $r1=var565, $r3=var1785, $r4=var178, $r5=var2067}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.commons.io.serialization.ValidatingObjectInputStream;	r2 := @parameter0: java.lang.String;	$r0 = new java.io.InvalidClassException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class name not accepted: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.InvalidClassException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1