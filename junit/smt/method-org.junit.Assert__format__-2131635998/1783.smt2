(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var376 0)
(declare-sort var784 0)
(declare-sort var525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var784) String)
(declare-fun var525_equalsRegardingNull/-2097659078 (var784 var784) Bool)
(declare-fun cast-from-String-to-var784 (String) var784)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var525_formatClassAndValue/847476221 (var784 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var784 var784)
(declare-const var3874 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3874 null-String)))
(declare-const var2524 var784) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2524 null-var784)))
(declare-const var2377 var784) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var2377 null-var784)))
(define-const var589 String "") ; Statement: r24 = "" 
 ; Statement: if r0 == null goto $r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert (= var3874 null-String)) ; Cond: r0 == null 
(define-const var1528 String (String_valueOf/-333372740 var2524)) ; Statement: $r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(define-const var3323 String (String_valueOf/-333372740 var2377)) ; Statement: $r26 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
(define-const var2263 Bool (var525_equalsRegardingNull/-2097659078 (cast-from-String-to-var784 var1528) (cast-from-String-to-var784 var3323))) ; Statement: $z1 = staticinvoke <org.junit.Assert: boolean equalsRegardingNull(java.lang.Object,java.lang.Object)>($r25, $r26) 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var2263 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2395 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2395)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2395!1 String)
(assert (= var2395!1 ""))
(assert true)
(define-const var3370 String (append/672562846 var2395!1 var589)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var2395!2 String)
(assert (= var2395!2 (str.++ var2395!1 var589)))
(assert true)
(define-const var1204 String (append/672562846 var3370 "expected: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected: ") 
(declare-const var3370!1 String)
(assert (= var3370!1 (str.++ var3370 "expected: ")))
(define-const var173 String (var525_formatClassAndValue/847476221 var2524 var1528)) ; Statement: $r13 = staticinvoke <org.junit.Assert: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r1, $r25) 
(assert true)
(define-const var1450 String (append/672562846 var1204 var173)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1204!1 String)
(assert (= var1204!1 (str.++ var1204 var173)))
(assert true)
(define-const var1533 String (append/672562846 var1450 " but was: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was: ") 
(declare-const var1450!1 String)
(assert (= var1450!1 (str.++ var1450 " but was: ")))
(define-const var292 String (var525_formatClassAndValue/847476221 var2377 var3323)) ; Statement: $r16 = staticinvoke <org.junit.Assert: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r2, $r26) 
(assert true)
(define-const var1492 String (append/672562846 var1533 var292)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1533!1 String)
(assert (= var1533!1 (str.++ var1533 var292)))
(assert true)
(define-const var1643 String (toString/-2075883882 var1492)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), var525_equalsRegardingNull/-2097659078=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var784=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var525_formatClassAndValue/847476221=([java.lang.Object, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3874=r0, var376=null_type, var784=java.lang.Object, var2524=r1, var2377=r2, var589=r24, var1528=$r25, var3323=$r26, var525=org.junit.Assert, var2263=$z1, var2395=$r11, var3370=$r12, var1204=$r14, var173=$r13, var1450=$r15, var1533=$r17, var292=$r16, var1492=$r18, var1643=$r19}
; {r0=var3874, null_type=var376, java.lang.Object=var784, r1=var2524, r2=var2377, r24=var589, $r25=var1528, $r26=var3323, org.junit.Assert=var525, $z1=var2263, $r11=var2395, $r12=var3370, $r14=var1204, $r13=var173, $r15=var1450, $r17=var1533, $r16=var292, $r18=var1492, $r19=var1643}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	r24 = "";	if r0 == null goto $r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r26 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	$z1 = staticinvoke <org.junit.Assert: boolean equalsRegardingNull(java.lang.Object,java.lang.Object)>($r25, $r26);	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected: ");	$r13 = staticinvoke <org.junit.Assert: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r1, $r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but was: ");	$r16 = staticinvoke <org.junit.Assert: java.lang.String formatClassAndValue(java.lang.Object,java.lang.String)>(r2, $r26);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 3