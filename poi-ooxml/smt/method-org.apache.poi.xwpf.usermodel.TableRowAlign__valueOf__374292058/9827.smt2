(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var2365 0)
(declare-sort var3903 0)
(declare-sort var2863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2305_get/1088891777 (var2305 var3903) var3903)
(declare-fun cast-from-Int-to-var3903 (Int) var3903)
(declare-fun cast-from-var3903-to-var2365 (var3903) var2365)
(declare-fun var2863-init () var2863)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2863 String) void)
(declare-const null-Int Int)
(declare-const var2365-imap var2305)
(declare-const null-var2365 var2365)
(declare-const var3746 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3746 null-Int)))
(define-const var1492 var2305 var2365-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.TableRowAlign: java.util.Map imap> 
(define-const var2407 Int (Int_valueOf/-1371140006 var3746)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2130 var3903 (var2305_get/1088891777 var1492 (cast-from-Int-to-var3903 var2407))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2695 var2365 (cast-from-var3903-to-var2365 var2130)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.TableRowAlign) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2695 null-var2365)))) ; Negate: Cond: r3 != null  
(define-const var2603 var2863 var2863-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1166 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1166)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1166!1 String)
(assert (= var1166!1 ""))
(assert true)
(define-const var325 String (append/672562846 var1166!1 "Unknown table row alignment: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown table row alignment: ") 
(declare-const var1166!2 String)
(assert (= var1166!2 (str.++ var1166!1 "Unknown table row alignment: ")))
(assert true)
(define-const var826 String (append/-1001720160 var325 var3746)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var325!1 String)
(assert (str.prefixof var325 var325!1))
(assert true)
(define-const var793 String (toString/-2075883882 var826)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2603 var793)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2603!1 var2863)
(declare-const var793!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var2305_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3903=([java.lang.Integer], java.lang.Object), cast-from-var3903-to-var2365=([java.lang.Object], org.apache.poi.xwpf.usermodel.TableRowAlign), var2863-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3746=i0, var2305=java.util.Map, var2365=org.apache.poi.xwpf.usermodel.TableRowAlign, var1492=$r0, var2407=$r1, var3903=java.lang.Object, var2130=$r2, var2695=r3, var2863=java.lang.IllegalArgumentException, var2603=$r4, var1166=$r5, var325=$r6, var826=$r7, var793=$r8}
; {i0=var3746, java.util.Map=var2305, org.apache.poi.xwpf.usermodel.TableRowAlign=var2365, $r0=var1492, $r1=var2407, java.lang.Object=var3903, $r2=var2130, r3=var2695, java.lang.IllegalArgumentException=var2863, $r4=var2603, $r5=var1166, $r6=var325, $r7=var826, $r8=var793}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.TableRowAlign: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.TableRowAlign) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown table row alignment: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2