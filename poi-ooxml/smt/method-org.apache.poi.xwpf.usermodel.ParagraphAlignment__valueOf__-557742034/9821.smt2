(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1454 0)
(declare-sort var1042 0)
(declare-sort var895 0)
(declare-sort var726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var1454_get/1088891777 (var1454 var895) var895)
(declare-fun cast-from-Int-to-var895 (Int) var895)
(declare-fun cast-from-var895-to-var1042 (var895) var1042)
(declare-fun var726-init () var726)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var726 String) void)
(declare-const null-Int Int)
(declare-const var1042-imap var1454)
(declare-const null-var1042 var1042)
(declare-const var1267 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1267 null-Int)))
(define-const var1656 var1454 var1042-imap) ; Statement: $r0 = <org.apache.poi.xwpf.usermodel.ParagraphAlignment: java.util.Map imap> 
(define-const var2980 Int (Int_valueOf/-1371140006 var1267)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var1235 var895 (var1454_get/1088891777 var1656 (cast-from-Int-to-var895 var2980))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var2775 var1042 (cast-from-var895-to-var1042 var1235)) ; Statement: r3 = (org.apache.poi.xwpf.usermodel.ParagraphAlignment) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var2775 null-var1042)))) ; Negate: Cond: r3 != null  
(define-const var3485 var726 var726-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3838 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3838)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3838!1 String)
(assert (= var3838!1 ""))
(assert true)
(define-const var967 String (append/672562846 var3838!1 "Unknown paragraph alignment: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown paragraph alignment: ") 
(declare-const var3838!2 String)
(assert (= var3838!2 (str.++ var3838!1 "Unknown paragraph alignment: ")))
(assert true)
(define-const var2829 String (append/-1001720160 var967 var1267)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var967!1 String)
(assert (str.prefixof var967 var967!1))
(assert true)
(define-const var3617 String (toString/-2075883882 var2829)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3485 var3617)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3485!1 var726)
(declare-const var3617!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var1454_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var895=([java.lang.Integer], java.lang.Object), cast-from-var895-to-var1042=([java.lang.Object], org.apache.poi.xwpf.usermodel.ParagraphAlignment), var726-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1267=i0, var1454=java.util.Map, var1042=org.apache.poi.xwpf.usermodel.ParagraphAlignment, var1656=$r0, var2980=$r1, var895=java.lang.Object, var1235=$r2, var2775=r3, var726=java.lang.IllegalArgumentException, var3485=$r4, var3838=$r5, var967=$r6, var2829=$r7, var3617=$r8}
; {i0=var1267, java.util.Map=var1454, org.apache.poi.xwpf.usermodel.ParagraphAlignment=var1042, $r0=var1656, $r1=var2980, java.lang.Object=var895, $r2=var1235, r3=var2775, java.lang.IllegalArgumentException=var726, $r4=var3485, $r5=var3838, $r6=var967, $r7=var2829, $r8=var3617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <org.apache.poi.xwpf.usermodel.ParagraphAlignment: java.util.Map imap>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (org.apache.poi.xwpf.usermodel.ParagraphAlignment) $r2;	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown paragraph alignment: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2