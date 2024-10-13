(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3684 0)
(declare-sort var561 0)
(declare-sort var1570 0)
(declare-sort var2448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3684_get/1088891777 (var3684 var1570) var1570)
(declare-fun cast-from-Int-to-var1570 (Int) var1570)
(declare-fun cast-from-var1570-to-var561 (var1570) var561)
(declare-fun var2448-init () var2448)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2448 String) void)
(declare-const null-Int Int)
(declare-const var561-imap var3684)
(declare-const null-var561 var561)
(declare-const var3491 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3491 null-Int)))
(define-const var824 var3684 var561-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.VerticalAlign: java.util.Map imap> 
(define-const var3836 Int (Int_valueOf/-1371140006 var3491)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var461 var1570 (var3684_get/1088891777 var824 (cast-from-Int-to-var1570 var3836))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var1373 var561 (cast-from-var1570-to-var561 var461)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.VerticalAlign) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1373 null-var561)))) ; Negate: Cond: r3 != null  
(define-const var954 var2448 var2448-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1295 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1295)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1295!1 String)
(assert (= var1295!1 ""))
(assert true)
(define-const var2277 String (append/672562846 var1295!1 "Unknown vertical alignment: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown vertical alignment: ") 
(declare-const var1295!2 String)
(assert (= var1295!2 (str.++ var1295!1 "Unknown vertical alignment: ")))
(assert true)
(define-const var777 String (append/-1001720160 var2277 var3491)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2277!1 String)
(assert (str.prefixof var2277 var2277!1))
(assert true)
(define-const var3806 String (toString/-2075883882 var777)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var954 var3806)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var954!1 var2448)
(declare-const var3806!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3684_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1570=([java.lang.Integer], java.lang.Object), cast-from-var1570-to-var561=([java.lang.Object], org.apache.poi.xwpf.usermodel.VerticalAlign), var2448-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3491=i0, var3684=java.util.Map, var561=org.apache.poi.xwpf.usermodel.VerticalAlign, var824=$r0, var3836=$r1, var1570=java.lang.Object, var461=$r2, var1373=r3, var2448=java.lang.IllegalArgumentException, var954=$r4, var1295=$r5, var2277=$r6, var777=$r7, var3806=$r8}
; {i0=var3491, java.util.Map=var3684, org.apache.poi.xwpf.usermodel.VerticalAlign=var561, $r0=var824, $r1=var3836, java.lang.Object=var1570, $r2=var461, r3=var1373, java.lang.IllegalArgumentException=var2448, $r4=var954, $r5=var1295, $r6=var2277, $r7=var777, $r8=var3806}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.VerticalAlign: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.VerticalAlign) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown vertical alignment: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2