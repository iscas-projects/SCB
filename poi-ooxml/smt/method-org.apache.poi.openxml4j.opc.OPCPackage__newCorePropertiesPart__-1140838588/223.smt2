(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1482 0)
(declare-sort var3777 0)
(declare-sort var3484 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1482-init () var1482)
(declare-fun var3484-init () var3484)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var443) String)
(declare-fun cast-from-var3777-to-var443 (var3777) var443)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/151292387 (var3484 String var443) void)
(declare-const null-var3777 var3777)
(define-const var3559 var1482 var1482-init) ; Statement: $r0 = new org.apache.poi.openxml4j.opc.internal.ContentType 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var132 var3777) ; Statement: $r1 := @caughtexception 
(assert (not (= var132 null-var3777)))
(define-const var3201 var3484 var3484-init) ; Statement: $r2 = new org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException 
(define-const var3095 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3095)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3095!1 String)
(assert (= var3095!1 ""))
(assert true)
(define-const var3350 String (append/672562846 var3095!1 "Package.init() : this exception should never happen, if you read this message please send a mail to the developers team. : ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Package.init() : this exception should never happen, if you read this message please send a mail to the developers team. : ") 
(declare-const var3095!2 String)
(assert (= var3095!2 (str.++ var3095!1 "Package.init() : this exception should never happen, if you read this message please send a mail to the developers team. : ")))
(assert true)
(define-const var3493 String (getMessage/849299655 (cast-from-var3777-to-var443 var132))) ; Statement: $r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: java.lang.String getMessage()>() 
(assert true)
(define-const var1264 String (append/672562846 var3350 var3493)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3350!1 String)
(assert (= var3350!1 (str.++ var3350 var3493)))
(assert true)
(define-const var1580 String (toString/-2075883882 var1264)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/151292387 var3201 var1580 (cast-from-var3777-to-var443 var132))) ; Statement: specialinvoke $r2.<org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1) 

(declare-const var3201!1 var3484)
(declare-const var1580!1 String)
(declare-const var132!1 var3777)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1482-init=([], org.apache.poi.openxml4j.opc.internal.ContentType), var3484-init=([], org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3777-to-var443=([org.apache.poi.openxml4j.exceptions.InvalidFormatException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/151292387=([org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var1482=org.apache.poi.openxml4j.opc.internal.ContentType, var3559=$r0, var3777=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var132=$r1, var3484=org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException, var3201=$r2, var3095=$r3, var3350=$r5, var443=java.lang.Throwable, var3493=$r4, var1264=$r6, var1580=$r7}
; {org.apache.poi.openxml4j.opc.internal.ContentType=var1482, $r0=var3559, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var3777, $r1=var132, org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException=var3484, $r2=var3201, $r3=var3095, $r5=var3350, java.lang.Throwable=var443, $r4=var3493, $r6=var1264, $r7=var1580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new org.apache.poi.openxml4j.opc.internal.ContentType;	$r1 := @caughtexception;	$r2 = new org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Package.init() : this exception should never happen, if you read this message please send a mail to the developers team. : ");	$r4 = virtualinvoke $r1.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: java.lang.String getMessage()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r1);	throw $r2
;block_num 2