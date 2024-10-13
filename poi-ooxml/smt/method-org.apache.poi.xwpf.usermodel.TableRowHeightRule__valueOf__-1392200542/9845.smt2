(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3089 0)
(declare-sort var2305 0)
(declare-sort var1189 0)
(declare-sort var3402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3089_get/1088891777 (var3089 var1189) var1189)
(declare-fun cast-from-Int-to-var1189 (Int) var1189)
(declare-fun cast-from-var1189-to-var2305 (var1189) var2305)
(declare-fun var3402-init () var3402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3402 String) void)
(declare-const null-Int Int)
(declare-const var2305-imap var3089)
(declare-const null-var2305 var2305)
(declare-const var1505 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1505 null-Int)))
(define-const var3069 var3089 var2305-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.TableRowHeightRule: java.util.Map imap> 
(define-const var1211 Int (Int_valueOf/-1371140006 var1505)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1580 var1189 (var3089_get/1088891777 var3069 (cast-from-Int-to-var1189 var1211))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var1117 var2305 (cast-from-var1189-to-var2305 var1580)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.TableRowHeightRule) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1117 null-var2305)))) ; Negate: Cond: r3 != null  
(define-const var374 var3402 var3402-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2678 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2678)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2678!1 String)
(assert (= var2678!1 ""))
(assert true)
(define-const var86 String (append/672562846 var2678!1 "Unknown table row height rule: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown table row height rule: ") 
(declare-const var2678!2 String)
(assert (= var2678!2 (str.++ var2678!1 "Unknown table row height rule: ")))
(assert true)
(define-const var323 String (append/-1001720160 var86 var1505)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var86!1 String)
(assert (str.prefixof var86 var86!1))
(assert true)
(define-const var2869 String (toString/-2075883882 var323)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var374 var2869)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var374!1 var3402)
(declare-const var2869!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3089_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1189=([java.lang.Integer], java.lang.Object), cast-from-var1189-to-var2305=([java.lang.Object], org.apache.poi.xwpf.usermodel.TableRowHeightRule), var3402-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1505=i0, var3089=java.util.Map, var2305=org.apache.poi.xwpf.usermodel.TableRowHeightRule, var3069=$r0, var1211=$r1, var1189=java.lang.Object, var1580=$r2, var1117=r3, var3402=java.lang.IllegalArgumentException, var374=$r4, var2678=$r5, var86=$r6, var323=$r7, var2869=$r8}
; {i0=var1505, java.util.Map=var3089, org.apache.poi.xwpf.usermodel.TableRowHeightRule=var2305, $r0=var3069, $r1=var1211, java.lang.Object=var1189, $r2=var1580, r3=var1117, java.lang.IllegalArgumentException=var3402, $r4=var374, $r5=var2678, $r6=var86, $r7=var323, $r8=var2869}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.TableRowHeightRule: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.TableRowHeightRule) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown table row height rule: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2