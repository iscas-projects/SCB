(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1462 0)
(declare-sort var849 0)
(declare-sort var2575 0)
(declare-sort var2209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var1462_get/1088891777 (var1462 var2575) var2575)
(declare-fun cast-from-Int-to-var2575 (Int) var2575)
(declare-fun cast-from-var2575-to-var849 (var2575) var849)
(declare-fun var2209-init () var2209)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2209 String) void)
(declare-const null-Int Int)
(declare-const var849-imap var1462)
(declare-const null-var849 var849)
(declare-const var1158 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1158 null-Int)))
(define-const var2393 var1462 var849-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.UnderlinePatterns: java.util.Map imap> 
(define-const var3704 Int (Int_valueOf/-1371140006 var1158)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var462 var2575 (var1462_get/1088891777 var2393 (cast-from-Int-to-var2575 var3704))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var941 var849 (cast-from-var2575-to-var849 var462)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.UnderlinePatterns) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var941 null-var849)))) ; Negate: Cond: r3 != null  
(define-const var2820 var2209 var2209-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3265 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3265)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3265!1 String)
(assert (= var3265!1 ""))
(assert true)
(define-const var3755 String (append/672562846 var3265!1 "Unknown underline pattern: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown underline pattern: ") 
(declare-const var3265!2 String)
(assert (= var3265!2 (str.++ var3265!1 "Unknown underline pattern: ")))
(assert true)
(define-const var643 String (append/-1001720160 var3755 var1158)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3755!1 String)
(assert (str.prefixof var3755 var3755!1))
(assert true)
(define-const var591 String (toString/-2075883882 var643)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2820 var591)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2820!1 var2209)
(declare-const var591!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var1462_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2575=([java.lang.Integer], java.lang.Object), cast-from-var2575-to-var849=([java.lang.Object], org.apache.poi.xwpf.usermodel.UnderlinePatterns), var2209-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1158=i0, var1462=java.util.Map, var849=org.apache.poi.xwpf.usermodel.UnderlinePatterns, var2393=$r0, var3704=$r1, var2575=java.lang.Object, var462=$r2, var941=r3, var2209=java.lang.IllegalArgumentException, var2820=$r4, var3265=$r5, var3755=$r6, var643=$r7, var591=$r8}
; {i0=var1158, java.util.Map=var1462, org.apache.poi.xwpf.usermodel.UnderlinePatterns=var849, $r0=var2393, $r1=var3704, java.lang.Object=var2575, $r2=var462, r3=var941, java.lang.IllegalArgumentException=var2209, $r4=var2820, $r5=var3265, $r6=var3755, $r7=var643, $r8=var591}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.UnderlinePatterns: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.UnderlinePatterns) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown underline pattern: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2