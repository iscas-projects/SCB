(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3191 0)
(declare-sort var2076 0)
(declare-sort var446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var446-init () var446)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3191) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var446 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3191 var3191)
(declare-const null-var2076 var2076)
(declare-const var3611 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3611 null-ClassObject)))
(declare-const var759 var3191) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var759 null-var3191)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2536 var2076) ; Statement: $r3 := @caughtexception 
(assert (not (= var2536 null-var2076)))
(define-const var3451 var446 var446-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3547 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3547)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3547!1 String)
(assert (= var3547!1 ""))
(assert true)
(define-const var2923 String (append/-1031950772 var3547!1 var759)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3547!2 String)
(assert (str.prefixof var3547!1 var3547!2))
(assert true)
(define-const var41 String (append/672562846 var2923 " is not a ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a ") 
(declare-const var2923!1 String)
(assert (= var2923!1 (str.++ var2923 " is not a ")))
(assert true)
(define-const var3370 String (getSimpleName/-390194377 var3611)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var681 String (append/672562846 var41 var3370)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var41!1 String)
(assert (= var41!1 (str.++ var41 var3370)))
(assert true)
(define-const var3640 String (toString/-2075883882 var681)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3451 var3640)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3451!1 var446)
(declare-const var3640!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var446-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3611=r0, var3191=java.lang.Object, var759=r1, var2076=java.lang.ClassCastException, var2536=$r3, var446=java.lang.IllegalArgumentException, var3451=$r4, var3547=$r5, var2923=$r6, var41=$r8, var3370=$r7, var681=$r9, var3640=$r10}
; {r0=var3611, java.lang.Object=var3191, r1=var759, java.lang.ClassCastException=var2076, $r3=var2536, java.lang.IllegalArgumentException=var446, $r4=var3451, $r5=var3547, $r6=var2923, $r8=var41, $r7=var3370, $r9=var681, $r10=var3640}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.Object;	$r3 := @caughtexception;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a ");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 2