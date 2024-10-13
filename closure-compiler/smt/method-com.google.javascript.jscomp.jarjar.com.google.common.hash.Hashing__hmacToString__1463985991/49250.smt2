(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var6 0)
(declare-sort var174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var174_getAlgorithm/-1569158064 (var174) String)
(declare-fun var174_getFormat/435209092 (var174) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var174 var174)
(declare-const var538 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var538 null-String)))
(declare-const var3410 var174) ; Statement: r4 := @parameter1: java.security.Key 
(assert (not (= var3410 null-var174)))
(define-const var199 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var199)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var199!1 String)
(assert (= var199!1 ""))
(assert true)
(define-const var2523 String (append/672562846 var199!1 "Hashing.")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.") 
(declare-const var199!2 String)
(assert (= var199!2 (str.++ var199!1 "Hashing.")))
(assert true)
(define-const var1089 String (append/672562846 var2523 var538)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2523!1 String)
(assert (= var2523!1 (str.++ var2523 var538)))
(assert true)
(define-const var126 String (append/672562846 var1089 "(Key[algorithm=")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Key[algorithm=") 
(declare-const var1089!1 String)
(assert (= var1089!1 (str.++ var1089 "(Key[algorithm=")))
(define-const var3298 String (var174_getAlgorithm/-1569158064 var3410)) ; Statement: $r5 = interfaceinvoke r4.<java.security.Key: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var3773 String (append/672562846 var126 var3298)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var126!1 String)
(assert (= var126!1 (str.++ var126 var3298)))
(assert true)
(define-const var1979 String (append/672562846 var3773 ", format=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", format=") 
(declare-const var3773!1 String)
(assert (= var3773!1 (str.++ var3773 ", format=")))
(define-const var49 String (var174_getFormat/435209092 var3410)) ; Statement: $r8 = interfaceinvoke r4.<java.security.Key: java.lang.String getFormat()>() 
(assert true)
(define-const var317 String (append/672562846 var1979 var49)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1979!1 String)
(assert (= var1979!1 (str.++ var1979 var49)))
(assert true)
(define-const var1546 String (append/672562846 var317 "])")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("])") 
(declare-const var317!1 String)
(assert (= var317!1 (str.++ var317 "])")))
(assert true)
(define-const var2626 String (toString/-2075883882 var1546)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var174_getAlgorithm/-1569158064=([java.security.Key], java.lang.String), var174_getFormat/435209092=([java.security.Key], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var538=r1, var6=null_type, var174=java.security.Key, var3410=r4, var199=$r0, var2523=$r2, var1089=$r3, var126=$r6, var3298=$r5, var3773=$r7, var1979=$r9, var49=$r8, var317=$r10, var1546=$r11, var2626=$r12}
; {r1=var538, null_type=var6, java.security.Key=var174, r4=var3410, $r0=var199, $r2=var2523, $r3=var1089, $r6=var126, $r5=var3298, $r7=var3773, $r9=var1979, $r8=var49, $r10=var317, $r11=var1546, $r12=var2626}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.security.Key;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Key[algorithm=");	$r5 = interfaceinvoke r4.<java.security.Key: java.lang.String getAlgorithm()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", format=");	$r8 = interfaceinvoke r4.<java.security.Key: java.lang.String getFormat()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("])");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1