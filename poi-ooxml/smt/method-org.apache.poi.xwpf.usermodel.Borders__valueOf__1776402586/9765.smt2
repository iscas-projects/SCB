(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2516 0)
(declare-sort var878 0)
(declare-sort var554 0)
(declare-sort var1860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2516_get/1088891777 (var2516 var554) var554)
(declare-fun cast-from-Int-to-var554 (Int) var554)
(declare-fun cast-from-var554-to-var878 (var554) var878)
(declare-fun var1860-init () var1860)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1860 String) void)
(declare-const null-Int Int)
(declare-const var878-imap var2516)
(declare-const null-var878 var878)
(declare-const var23 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var23 null-Int)))
(define-const var3004 var2516 var878-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.Borders: java.util.Map imap> 
(define-const var3165 Int (Int_valueOf/-1371140006 var23)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2000 var554 (var2516_get/1088891777 var3004 (cast-from-Int-to-var554 var3165))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var1630 var878 (cast-from-var554-to-var878 var2000)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.Borders) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1630 null-var878)))) ; Negate: Cond: r3 != null  
(define-const var2100 var1860 var1860-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1142 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1142)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1142!1 String)
(assert (= var1142!1 ""))
(assert true)
(define-const var61 String (append/672562846 var1142!1 "Unknown paragraph border: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown paragraph border: ") 
(declare-const var1142!2 String)
(assert (= var1142!2 (str.++ var1142!1 "Unknown paragraph border: ")))
(assert true)
(define-const var533 String (append/-1001720160 var61 var23)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var61!1 String)
(assert (str.prefixof var61 var61!1))
(assert true)
(define-const var2429 String (toString/-2075883882 var533)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2100 var2429)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2100!1 var1860)
(declare-const var2429!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var2516_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var554=([java.lang.Integer], java.lang.Object), cast-from-var554-to-var878=([java.lang.Object], org.apache.poi.xwpf.usermodel.Borders), var1860-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var23=i0, var2516=java.util.Map, var878=org.apache.poi.xwpf.usermodel.Borders, var3004=$r0, var3165=$r1, var554=java.lang.Object, var2000=$r2, var1630=r3, var1860=java.lang.IllegalArgumentException, var2100=$r4, var1142=$r5, var61=$r6, var533=$r7, var2429=$r8}
; {i0=var23, java.util.Map=var2516, org.apache.poi.xwpf.usermodel.Borders=var878, $r0=var3004, $r1=var3165, java.lang.Object=var554, $r2=var2000, r3=var1630, java.lang.IllegalArgumentException=var1860, $r4=var2100, $r5=var1142, $r6=var61, $r7=var533, $r8=var2429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.Borders: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.Borders) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown paragraph border: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2