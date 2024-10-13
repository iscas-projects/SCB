(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3749 0)
(declare-sort var40 0)
(declare-sort var325 0)
(declare-sort var1543 0)
(declare-sort var881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var40_checkNotNullParameter/-2060636419 (var3749 String) void)
(declare-fun var1543_holdsLock/-145342167 (var3749) Bool)
(declare-fun var881-init () var881)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1543_currentThread/-1037784612 () var1543)
(declare-fun getName/-942182377 (var1543) String)
(declare-fun append/-1031950772 (String var3749) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var881 var3749) void)
(declare-fun cast-from-String-to-var3749 (String) var3749)
(declare-const null-var3749 var3749)
(declare-const var325-assertionsEnabled Bool)
(declare-const var1057 var3749) ; Statement: $r0 := @parameter0: java.lang.Object 
(assert (not (= var1057 null-var3749)))
;(assert (var40_checkNotNullParameter/-2060636419 var1057 "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var1057!1 var3749)
(declare-const var1648 String)
(define-const var356 Bool var325-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var356 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3704 Bool (var1543_holdsLock/-145342167 var1057!1)) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0) 
 ; Statement: if $z1 == 0 goto return 
(assert (not (= (ite var3704 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2752 var881 var881-init) ; Statement: $r1 = new java.lang.AssertionError 
(define-const var1066 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1066)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1066!1 String)
(assert (= var1066!1 ""))
(assert true)
(define-const var3411 String (append/672562846 var1066!1 "Thread ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var1066!2 String)
(assert (= var1066!2 (str.++ var1066!1 "Thread ")))
(define-const var2403 var1543 var1543_currentThread/-1037784612) ; Statement: $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3941 String (getName/-942182377 var2403)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var537 String (append/672562846 var3411 var3941)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3411!1 String)
(assert (= var3411!1 (str.++ var3411 var3941)))
(assert true)
(define-const var1070 String (append/672562846 var537 " MUST NOT hold lock on ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var537!1 String)
(assert (= var537!1 (str.++ var537 " MUST NOT hold lock on ")))
(assert true)
(define-const var3520 String (append/-1031950772 var1070 var1057!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var1070!1 String)
(assert (str.prefixof var1070 var1070!1))
(assert true)
(define-const var980 String (toString/-2075883882 var3520)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2752 (cast-from-String-to-var3749 var980))) ; Statement: specialinvoke $r1.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9) 

(declare-const var2752!1 var881)
(declare-const var980!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var40_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), var1543_holdsLock/-145342167=([java.lang.Object], boolean), var881-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1543_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3749=([java.lang.String], java.lang.Object)}
; {var3749=java.lang.Object, var1057=$r0, var40=kotlin.jvm.internal.Intrinsics, var1648="<this>", var325=okhttp3.internal.Util, var356=$z0, var1543=java.lang.Thread, var3704=$z1, var881=java.lang.AssertionError, var2752=$r1, var1066=$r2, var3411=$r5, var2403=$r3, var3941=$r4, var537=$r6, var1070=$r7, var3520=$r8, var980=$r9}
; {java.lang.Object=var3749, $r0=var1057, kotlin.jvm.internal.Intrinsics=var40, "<this>"=var1648, okhttp3.internal.Util=var325, $z0=var356, java.lang.Thread=var1543, $z1=var3704, java.lang.AssertionError=var881, $r1=var2752, $r2=var1066, $r5=var3411, $r3=var2403, $r4=var3941, $r6=var537, $r7=var1070, $r8=var3520, $r9=var980}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 := @parameter0: java.lang.Object;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto return;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r0);	if $z1 == 0 goto return;	$r1 = new java.lang.AssertionError;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r4 = virtualinvoke $r3.<java.lang.Thread: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.AssertionError: void <init>(java.lang.Object)>($r9);	throw $r1
;block_num 3