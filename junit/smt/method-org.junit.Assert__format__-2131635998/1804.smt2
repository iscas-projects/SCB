(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1587 0)
(declare-sort var1523 0)
(declare-sort var1685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var1523) String)
(declare-fun var1685_equalsRegardingNull/-2097659078 (var1523 var1523) Bool)
(declare-fun cast-from-String-to-var1523 (String) var1523)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var1523 var1523)
(declare-const var6 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var6 null-String)))
(declare-const var756 var1523) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var756 null-var1523)))
(declare-const var956 var1523) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var956 null-var1523)))
(define-const var3860 String "") ; Statement: r24 = "" 
 ; Statement: if r0 == null goto $r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert (= var6 null-String)) ; Cond: r0 == null 
(define-const var3504 String (String_valueOf/-333372740 var756)) ; Statement: $r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(define-const var3107 String (String_valueOf/-333372740 var956)) ; Statement: $r26 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
(define-const var693 Bool (var1685_equalsRegardingNull/-2097659078 (cast-from-String-to-var1523 var3504) (cast-from-String-to-var1523 var3107))) ; Statement: $z1 = staticinvoke <org.junit.Assert: boolean equalsRegardingNull(java.lang.Object,java.lang.Object)>($r25, $r26) 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var693 1 0) 0)) ; Cond: $z1 == 0 
(define-const var23 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var23)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var23!1 String)
(assert (= var23!1 ""))
(assert true)
(define-const var2502 String (append/672562846 var23!1 var3860)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24) 
(declare-const var23!2 String)
(assert (= var23!2 (str.++ var23!1 var3860)))
(assert true)
(define-const var2735 String (append/672562846 var2502 "expected:<")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected:<") 
(declare-const var2502!1 String)
(assert (= var2502!1 (str.++ var2502 "expected:<")))
(assert true)
(define-const var3701 String (append/672562846 var2735 var3504)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2735!1 String)
(assert (= var2735!1 (str.++ var2735 var3504)))
(assert true)
(define-const var840 String (append/672562846 var3701 "> but was:<")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> but was:<") 
(declare-const var3701!1 String)
(assert (= var3701!1 (str.++ var3701 "> but was:<")))
(assert true)
(define-const var874 String (append/672562846 var840 var3107)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var840!1 String)
(assert (= var840!1 (str.++ var840 var3107)))
(assert true)
(define-const var2183 String (append/672562846 var874 ">")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var874!1 String)
(assert (= var874!1 (str.++ var874 ">")))
(assert true)
(define-const var3354 String (toString/-2075883882 var2183)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), var1685_equalsRegardingNull/-2097659078=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var1523=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var6=r0, var1587=null_type, var1523=java.lang.Object, var756=r1, var956=r2, var3860=r24, var3504=$r25, var3107=$r26, var1685=org.junit.Assert, var693=$z1, var23=$r3, var2502=$r4, var2735=$r5, var3701=$r6, var840=$r7, var874=$r8, var2183=$r9, var3354=$r10}
; {r0=var6, null_type=var1587, java.lang.Object=var1523, r1=var756, r2=var956, r24=var3860, $r25=var3504, $r26=var3107, org.junit.Assert=var1685, $z1=var693, $r3=var23, $r4=var2502, $r5=var2735, $r6=var3701, $r7=var840, $r8=var874, $r9=var2183, $r10=var3354}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	r24 = "";	if r0 == null goto $r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r25 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r26 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	$z1 = staticinvoke <org.junit.Assert: boolean equalsRegardingNull(java.lang.Object,java.lang.Object)>($r25, $r26);	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r24);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected:<");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> but was:<");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3