(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var880 0)
(declare-sort var2558 0)
(declare-sort var1571 0)
(declare-sort var997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var880_get/1088891777 (var880 var1571) var1571)
(declare-fun cast-from-Int-to-var1571 (Int) var1571)
(declare-fun cast-from-var1571-to-var2558 (var1571) var2558)
(declare-fun var997-init () var997)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var997 String) void)
(declare-const null-Int Int)
(declare-const var2558-imap var880)
(declare-const null-var2558 var2558)
(declare-const var263 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var263 null-Int)))
(define-const var2109 var880 var2558-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.BreakClear: java.util.Map imap> 
(define-const var1569 Int (Int_valueOf/-1371140006 var263)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var304 var1571 (var880_get/1088891777 var2109 (cast-from-Int-to-var1571 var1569))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var3960 var2558 (cast-from-var1571-to-var2558 var304)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.BreakClear) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var3960 null-var2558)))) ; Negate: Cond: r3 != null  
(define-const var1449 var997 var997-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var9 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var9)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var9!1 String)
(assert (= var9!1 ""))
(assert true)
(define-const var640 String (append/672562846 var9!1 "Unknown break clear type: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown break clear type: ") 
(declare-const var9!2 String)
(assert (= var9!2 (str.++ var9!1 "Unknown break clear type: ")))
(assert true)
(define-const var1948 String (append/-1001720160 var640 var263)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var640!1 String)
(assert (str.prefixof var640 var640!1))
(assert true)
(define-const var1727 String (toString/-2075883882 var1948)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1449 var1727)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1449!1 var997)
(declare-const var1727!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var880_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1571=([java.lang.Integer], java.lang.Object), cast-from-var1571-to-var2558=([java.lang.Object], org.apache.poi.xwpf.usermodel.BreakClear), var997-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var263=i0, var880=java.util.Map, var2558=org.apache.poi.xwpf.usermodel.BreakClear, var2109=$r0, var1569=$r1, var1571=java.lang.Object, var304=$r2, var3960=r3, var997=java.lang.IllegalArgumentException, var1449=$r4, var9=$r5, var640=$r6, var1948=$r7, var1727=$r8}
; {i0=var263, java.util.Map=var880, org.apache.poi.xwpf.usermodel.BreakClear=var2558, $r0=var2109, $r1=var1569, java.lang.Object=var1571, $r2=var304, r3=var3960, java.lang.IllegalArgumentException=var997, $r4=var1449, $r5=var9, $r6=var640, $r7=var1948, $r8=var1727}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.BreakClear: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.BreakClear) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown break clear type: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2