(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var99 0)
(declare-sort var1129 0)
(declare-sort var409 0)
(declare-sort var1872 0)
(declare-sort var3026 0)
(declare-sort var721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var409-init () var409)
(declare-fun <init>/-201242697 (var409) void)
(declare-fun var3026_put/1464166817 (var3026 var721 var721) var721)
(declare-fun cast-from-var409-to-var3026 (var409) var3026)
(declare-fun cast-from-String-to-var721 (String) var721)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var99 var99)
(declare-const null-String String)
(declare-const var1872-OS_ARCH String)
(declare-const var1872-OS_NAME String)
(declare-const var1872-OS_VERSION String)
(declare-const var1872-JVM_VERSION String)
(declare-const var1872-JVM_VENDOR String)
(declare-const var1530 var99) ; Statement: r15 := @this: com.mysql.cj.protocol.x.XProtocol 
(assert (not (= var1530 null-var99)))
(declare-const var2987 String) ; Statement: r16 := @parameter0: java.lang.String 
(assert (not (= var2987 null-String)))
(define-const var867 var409 var409-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var867)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var867!1 var409)
 ; Statement: if r16 == null goto $r18 = <com.mysql.cj.Constants: java.lang.String OS_ARCH> 
(assert (= var2987 null-String)) ; Cond: r16 == null 
(define-const var475 String var1872-OS_ARCH) ; Statement: $r18 = <com.mysql.cj.Constants: java.lang.String OS_ARCH> 
;(assert (var3026_put/1464166817 (cast-from-var409-to-var3026 var867!1) (cast-from-String-to-var721 "_platform") (cast-from-String-to-var721 var475))) ; Statement: interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_platform", $r18) 

(declare-const var867!2 var409)
(declare-const var1583 String)
(declare-const var475!1 String)
(define-const var3436 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3436)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3436!1 String)
(assert (= var3436!1 ""))
(define-const var3863 String var1872-OS_NAME) ; Statement: $r20 = <com.mysql.cj.Constants: java.lang.String OS_NAME> 
(assert true)
(define-const var2693 String (append/672562846 var3436!1 var3863)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3436!2 String)
(assert (= var3436!2 (str.++ var3436!1 var3863)))
(assert true)
(define-const var227 String (append/672562846 var2693 "-")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var2693!1 String)
(assert (= var2693!1 (str.++ var2693 "-")))
(define-const var2328 String var1872-OS_VERSION) ; Statement: $r23 = <com.mysql.cj.Constants: java.lang.String OS_VERSION> 
(assert true)
(define-const var478 String (append/672562846 var227 var2328)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var227!1 String)
(assert (= var227!1 (str.++ var227 var2328)))
(assert true)
(define-const var1086 String (toString/-2075883882 var478)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3026_put/1464166817 (cast-from-var409-to-var3026 var867!2) (cast-from-String-to-var721 "_os") (cast-from-String-to-var721 var1086))) ; Statement: interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_os", $r25) 

(declare-const var867!3 var409)
(declare-const var2683 String)
(declare-const var1086!1 String)
;(assert (var3026_put/1464166817 (cast-from-var409-to-var3026 var867!3) (cast-from-String-to-var721 "_client_name") (cast-from-String-to-var721 "MySQL Connector/J"))) ; Statement: interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_client_name", "MySQL Connector/J") 

(declare-const var867!4 var409)
(declare-const var3170 String)
(declare-const var3937 String)
;(assert (var3026_put/1464166817 (cast-from-var409-to-var3026 var867!4) (cast-from-String-to-var721 "_client_version") (cast-from-String-to-var721 "9.0.0"))) ; Statement: interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_client_version", "9.0.0") 

(declare-const var867!5 var409)
(declare-const var547 String)
(declare-const var3737 String)
;(assert (var3026_put/1464166817 (cast-from-var409-to-var3026 var867!5) (cast-from-String-to-var721 "_client_license") (cast-from-String-to-var721 "GPL"))) ; Statement: interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_client_license", "GPL") 

(declare-const var867!6 var409)
(declare-const var1152 String)
(declare-const var967 String)
(define-const var2317 String var1872-JVM_VERSION) ; Statement: $r26 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION> 
;(assert (var3026_put/1464166817 (cast-from-var409-to-var3026 var867!6) (cast-from-String-to-var721 "_runtime_version") (cast-from-String-to-var721 var2317))) ; Statement: interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_runtime_version", $r26) 

(declare-const var867!7 var409)
(declare-const var1834 String)
(declare-const var2317!1 String)
(define-const var3407 String var1872-JVM_VENDOR) ; Statement: $r27 = <com.mysql.cj.Constants: java.lang.String JVM_VENDOR> 
;(assert (var3026_put/1464166817 (cast-from-var409-to-var3026 var867!7) (cast-from-String-to-var721 "_runtime_vendor") (cast-from-String-to-var721 var3407))) ; Statement: interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_runtime_vendor", $r27) 

(declare-const var867!8 var409)
(declare-const var780 String)
(declare-const var3407!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var409-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var3026_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var409-to-var3026=([java.util.HashMap], java.util.Map), cast-from-String-to-var721=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var99=com.mysql.cj.protocol.x.XProtocol, var1530=r15, var2987=r16, var1129=null_type, var409=java.util.HashMap, var867=$r0, var1872=com.mysql.cj.Constants, var475=$r18, var3026=java.util.Map, var721=java.lang.Object, var1583="_platform", var3436=$r19, var3863=$r20, var2693=$r21, var227=$r22, var2328=$r23, var478=$r24, var1086=$r25, var2683="_os", var3170="_client_name", var3937="MySQL Connector/J", var547="_client_version", var3737="9.0.0", var1152="_client_license", var967="GPL", var2317=$r26, var1834="_runtime_version", var3407=$r27, var780="_runtime_vendor"}
; {com.mysql.cj.protocol.x.XProtocol=var99, r15=var1530, r16=var2987, null_type=var1129, java.util.HashMap=var409, $r0=var867, com.mysql.cj.Constants=var1872, $r18=var475, java.util.Map=var3026, java.lang.Object=var721, "_platform"=var1583, $r19=var3436, $r20=var3863, $r21=var2693, $r22=var227, $r23=var2328, $r24=var478, $r25=var1086, "_os"=var2683, "_client_name"=var3170, "MySQL Connector/J"=var3937, "_client_version"=var547, "9.0.0"=var3737, "_client_license"=var1152, "GPL"=var967, $r26=var2317, "_runtime_version"=var1834, $r27=var3407, "_runtime_vendor"=var780}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: com.mysql.cj.protocol.x.XProtocol;	r16 := @parameter0: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	if r16 == null goto $r18 = <com.mysql.cj.Constants: java.lang.String OS_ARCH>;	$r18 = <com.mysql.cj.Constants: java.lang.String OS_ARCH>;	interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_platform", $r18);	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = <com.mysql.cj.Constants: java.lang.String OS_NAME>;	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r23 = <com.mysql.cj.Constants: java.lang.String OS_VERSION>;	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_os", $r25);	interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_client_name", "MySQL Connector/J");	interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_client_version", "9.0.0");	interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_client_license", "GPL");	$r26 = <com.mysql.cj.Constants: java.lang.String JVM_VERSION>;	interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_runtime_version", $r26);	$r27 = <com.mysql.cj.Constants: java.lang.String JVM_VENDOR>;	interfaceinvoke $r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("_runtime_vendor", $r27);	return $r0
;block_num 2