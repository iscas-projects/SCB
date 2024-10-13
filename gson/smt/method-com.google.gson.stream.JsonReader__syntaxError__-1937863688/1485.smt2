(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var550 0)
(declare-sort var2924 0)
(declare-sort var915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var915-init () var915)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/1083242436 (var550) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/910050957 (var915 String) void)
(declare-const null-var550 var550)
(declare-const null-String String)
(declare-const var2933 var550) ; Statement: r3 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2933 null-var550)))
(declare-const var3001 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3001 null-String)))
(define-const var2616 var915 var915-init) ; Statement: $r0 = new com.google.gson.stream.MalformedJsonException 
(define-const var2823 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2823)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2823!1 String)
(assert (= var2823!1 ""))
(assert true)
(define-const var520 String (append/672562846 var2823!1 var3001)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2823!2 String)
(assert (= var2823!2 (str.++ var2823!1 var3001)))
(assert true)
(define-const var650 String (locationString/1083242436 var2933)) ; Statement: $r4 = virtualinvoke r3.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var1385 String (append/672562846 var520 var650)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var520!1 String)
(assert (= var520!1 (str.++ var520 var650)))
(assert true)
(define-const var910 String (toString/-2075883882 var1385)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/910050957 var2616 var910)) ; Statement: specialinvoke $r0.<com.google.gson.stream.MalformedJsonException: void <init>(java.lang.String)>($r7) 

(declare-const var2616!1 var915)
(declare-const var910!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var915-init=([], com.google.gson.stream.MalformedJsonException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/910050957=([com.google.gson.stream.MalformedJsonException, java.lang.String], void)}
; {var550=com.google.gson.stream.JsonReader, var2933=r3, var3001=r2, var2924=null_type, var915=com.google.gson.stream.MalformedJsonException, var2616=$r0, var2823=$r1, var520=$r5, var650=$r4, var1385=$r6, var910=$r7}
; {com.google.gson.stream.JsonReader=var550, r3=var2933, r2=var3001, null_type=var2924, com.google.gson.stream.MalformedJsonException=var915, $r0=var2616, $r1=var2823, $r5=var520, $r4=var650, $r6=var1385, $r7=var910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.gson.stream.JsonReader;	r2 := @parameter0: java.lang.String;	$r0 = new com.google.gson.stream.MalformedJsonException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke r3.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.google.gson.stream.MalformedJsonException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1