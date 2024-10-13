(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var925 0)
(declare-sort var1638 0)
(declare-sort var245 0)
(declare-sort var464 0)
(declare-sort var709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var925_setType/187094882 (var925 var245) void)
(declare-fun matches/-643015890 (String String) Bool)
(declare-fun var709-init () var709)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var709 String) void)
(declare-const null-var925 var925)
(declare-const null-String String)
(declare-const var464-PCT var245)
(declare-const var2049 var925) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth 
(assert (not (= var2049 null-var925)))
(declare-const var3826 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3826 null-String)))
(define-const var3209 var245 var464-PCT) ; Statement: $r1 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum PCT> 
;(assert (var925_setType/187094882 var2049 var3209)) ; Statement: interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth: void setType(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum)>($r1) 

(declare-const var2049!1 var925)
(declare-const var3209!1 var245)
(assert true)
(define-const var116 Bool (matches/-643015890 var3826 "[0-9]+(\u005c.[0-9]+)?%")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+(\\.[0-9]+)?%") 
(assert (= (matches/-643015890 var3826 "[0-9]+(\u005c.[0-9]+)?%") (str.in_re var3826 (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "%")))))
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+") 
(assert (= (ite var116 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2322 Bool (matches/-643015890 var3826 "[0-9]+")) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+") 
(assert (= (matches/-643015890 var3826 "[0-9]+") (str.in_re var3826 (re.+ (re.range "0" "9")))))
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.IllegalStateException 
(assert (= (ite var2322 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3161 var709 var709-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var214 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var214)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var214!1 String)
(assert (= var214!1 ""))
(assert true)
(define-const var1956 String (append/672562846 var214!1 "setWidthPercentage(): Width value must be a percentage (\u002233.3%\u0022 or an integer, was \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setWidthPercentage(): Width value must be a percentage (\"33.3%\" or an integer, was \"") 
(declare-const var214!2 String)
(assert (= var214!2 (str.++ var214!1 "setWidthPercentage(): Width value must be a percentage (\u002233.3%\u0022 or an integer, was \u0022")))
(assert true)
(define-const var1625 String (append/672562846 var1956 var3826)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1956!1 String)
(assert (= var1956!1 (str.++ var1956 var3826)))
(assert true)
(define-const var1395 String (append/672562846 var1625 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1625!1 String)
(assert (= var1625!1 (str.++ var1625 "\u0022")))
(assert true)
(define-const var223 String (toString/-2075883882 var1395)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3161 var223)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3161!1 var709)
(declare-const var223!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var925_setType/187094882=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum], void), matches/-643015890=([java.lang.String, java.lang.String], boolean), var709-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var925=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth, var2049=r0, var3826=r2, var1638=null_type, var245=org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum, var464=org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth, var3209=$r1, var116=$z0, var2322=$z1, var709=java.lang.IllegalStateException, var3161=$r3, var214=$r4, var1956=$r5, var1625=$r6, var1395=$r7, var223=$r8}
; {org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth=var925, r0=var2049, r2=var3826, null_type=var1638, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum=var245, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth=var464, $r1=var3209, $z0=var116, $z1=var2322, java.lang.IllegalStateException=var709, $r3=var3161, $r4=var214, $r5=var1956, $r6=var1625, $r7=var1395, $r8=var223}
;seq <java.lang.String: boolean matches(java.lang.String)>;	<java.lang.String: boolean matches(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;	r2 := @parameter1: java.lang.String;	$r1 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum PCT>;	interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth: void setType(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum)>($r1);	$z0 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+(\\.[0-9]+)?%");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+");	$z1 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+");	if $z1 == 0 goto $r3 = new java.lang.IllegalStateException;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("setWidthPercentage(): Width value must be a percentage (\"33.3%\" or an integer, was \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 3