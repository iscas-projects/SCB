(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3662 0)
(declare-sort var2754 0)
(declare-sort var3970 0)
(declare-sort var107 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3662_get/1088891777 (var3662 var3970) var3970)
(declare-fun cast-from-Int-to-var3970 (Int) var3970)
(declare-fun cast-from-var3970-to-var2754 (var3970) var2754)
(declare-fun var107-init () var107)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var107 String) void)
(declare-const null-Int Int)
(declare-const var2754-imap var3662)
(declare-const null-var2754 var2754)
(declare-const var1192 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1192 null-Int)))
(define-const var1326 var3662 var2754-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.BreakType: java.util.Map imap> 
(define-const var1200 Int (Int_valueOf/-1371140006 var1192)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1602 var3970 (var3662_get/1088891777 var1326 (cast-from-Int-to-var3970 var1200))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2369 var2754 (cast-from-var3970-to-var2754 var1602)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.BreakType) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2369 null-var2754)))) ; Negate: Cond: r3 != null  
(define-const var1641 var107 var107-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3101 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3101)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3101!1 String)
(assert (= var3101!1 ""))
(assert true)
(define-const var3767 String (append/672562846 var3101!1 "Unknown break type: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown break type: ") 
(declare-const var3101!2 String)
(assert (= var3101!2 (str.++ var3101!1 "Unknown break type: ")))
(assert true)
(define-const var3694 String (append/-1001720160 var3767 var1192)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3767!1 String)
(assert (str.prefixof var3767 var3767!1))
(assert true)
(define-const var2374 String (toString/-2075883882 var3694)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1641 var2374)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1641!1 var107)
(declare-const var2374!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3662_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3970=([java.lang.Integer], java.lang.Object), cast-from-var3970-to-var2754=([java.lang.Object], org.apache.poi.xwpf.usermodel.BreakType), var107-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1192=i0, var3662=java.util.Map, var2754=org.apache.poi.xwpf.usermodel.BreakType, var1326=$r0, var1200=$r1, var3970=java.lang.Object, var1602=$r2, var2369=r3, var107=java.lang.IllegalArgumentException, var1641=$r4, var3101=$r5, var3767=$r6, var3694=$r7, var2374=$r8}
; {i0=var1192, java.util.Map=var3662, org.apache.poi.xwpf.usermodel.BreakType=var2754, $r0=var1326, $r1=var1200, java.lang.Object=var3970, $r2=var1602, r3=var2369, java.lang.IllegalArgumentException=var107, $r4=var1641, $r5=var3101, $r6=var3767, $r7=var3694, $r8=var2374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.BreakType: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.BreakType) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown break type: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2