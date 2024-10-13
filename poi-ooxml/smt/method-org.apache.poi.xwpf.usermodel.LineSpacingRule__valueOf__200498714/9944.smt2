(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3805 0)
(declare-sort var2815 0)
(declare-sort var1097 0)
(declare-sort var3479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3805_get/1088891777 (var3805 var1097) var1097)
(declare-fun cast-from-Int-to-var1097 (Int) var1097)
(declare-fun cast-from-var1097-to-var2815 (var1097) var2815)
(declare-fun var3479-init () var3479)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3479 String) void)
(declare-const null-Int Int)
(declare-const var2815-imap var3805)
(declare-const null-var2815 var2815)
(declare-const var1712 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1712 null-Int)))
(define-const var3066 var3805 var2815-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: java.util.Map imap> 
(define-const var908 Int (Int_valueOf/-1371140006 var1712)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var579 var1097 (var3805_get/1088891777 var3066 (cast-from-Int-to-var1097 var908))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2779 var2815 (cast-from-var1097-to-var2815 var579)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.LineSpacingRule) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2779 null-var2815)))) ; Negate: Cond: r3 != null  
(define-const var3547 var3479 var3479-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var114 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var114)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var114!1 String)
(assert (= var114!1 ""))
(assert true)
(define-const var3633 String (append/672562846 var114!1 "Unknown line type: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown line type: ") 
(declare-const var114!2 String)
(assert (= var114!2 (str.++ var114!1 "Unknown line type: ")))
(assert true)
(define-const var1720 String (append/-1001720160 var3633 var1712)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3633!1 String)
(assert (str.prefixof var3633 var3633!1))
(assert true)
(define-const var1091 String (toString/-2075883882 var1720)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3547 var1091)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3547!1 var3479)
(declare-const var1091!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3805_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1097=([java.lang.Integer], java.lang.Object), cast-from-var1097-to-var2815=([java.lang.Object], org.apache.poi.xwpf.usermodel.LineSpacingRule), var3479-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1712=i0, var3805=java.util.Map, var2815=org.apache.poi.xwpf.usermodel.LineSpacingRule, var3066=$r0, var908=$r1, var1097=java.lang.Object, var579=$r2, var2779=r3, var3479=java.lang.IllegalArgumentException, var3547=$r4, var114=$r5, var3633=$r6, var1720=$r7, var1091=$r8}
; {i0=var1712, java.util.Map=var3805, org.apache.poi.xwpf.usermodel.LineSpacingRule=var2815, $r0=var3066, $r1=var908, java.lang.Object=var1097, $r2=var579, r3=var2779, java.lang.IllegalArgumentException=var3479, $r4=var3547, $r5=var114, $r6=var3633, $r7=var1720, $r8=var1091}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.LineSpacingRule) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown line type: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2