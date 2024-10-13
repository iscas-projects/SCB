(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2232 0)
(declare-sort var1824 0)
(declare-sort var147 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2232_get/1088891777 (var2232 var147) var147)
(declare-fun cast-from-Int-to-var147 (Int) var147)
(declare-fun cast-from-var147-to-var1824 (var147) var1824)
(declare-fun var3108-init () var3108)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3108 String) void)
(declare-const null-Int Int)
(declare-const var1824-imap var2232)
(declare-const null-var1824 var1824)
(declare-const var2515 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2515 null-Int)))
(define-const var1853 var2232 var1824-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.TextAlignment: java.util.Map imap> 
(define-const var3489 Int (Int_valueOf/-1371140006 var2515)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var278 var147 (var2232_get/1088891777 var1853 (cast-from-Int-to-var147 var3489))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var760 var1824 (cast-from-var147-to-var1824 var278)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.TextAlignment) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var760 null-var1824)))) ; Negate: Cond: r3 != null  
(define-const var1777 var3108 var3108-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2600 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2600)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2600!1 String)
(assert (= var2600!1 ""))
(assert true)
(define-const var3448 String (append/672562846 var2600!1 "Unknown text alignment: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown text alignment: ") 
(declare-const var2600!2 String)
(assert (= var2600!2 (str.++ var2600!1 "Unknown text alignment: ")))
(assert true)
(define-const var3733 String (append/-1001720160 var3448 var2515)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3448!1 String)
(assert (str.prefixof var3448 var3448!1))
(assert true)
(define-const var590 String (toString/-2075883882 var3733)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1777 var590)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1777!1 var3108)
(declare-const var590!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var2232_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var147=([java.lang.Integer], java.lang.Object), cast-from-var147-to-var1824=([java.lang.Object], org.apache.poi.xwpf.usermodel.TextAlignment), var3108-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2515=i0, var2232=java.util.Map, var1824=org.apache.poi.xwpf.usermodel.TextAlignment, var1853=$r0, var3489=$r1, var147=java.lang.Object, var278=$r2, var760=r3, var3108=java.lang.IllegalArgumentException, var1777=$r4, var2600=$r5, var3448=$r6, var3733=$r7, var590=$r8}
; {i0=var2515, java.util.Map=var2232, org.apache.poi.xwpf.usermodel.TextAlignment=var1824, $r0=var1853, $r1=var3489, java.lang.Object=var147, $r2=var278, r3=var760, java.lang.IllegalArgumentException=var3108, $r4=var1777, $r5=var2600, $r6=var3448, $r7=var3733, $r8=var590}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.TextAlignment: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.TextAlignment) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown text alignment: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2