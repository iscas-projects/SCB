(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1160 0)
(declare-sort var1922 0)
(declare-sort var3541 0)
(declare-sort var3558 0)
(declare-sort var2757 0)
(declare-sort var891 0)
(declare-sort var3557 0)
(declare-sort var2590 0)
(declare-sort var1566 0)
(declare-sort var746 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun safeGetDocumentProtection/-2121135233 (var1160) var2757)
(declare-fun var2757_setEnforcement/-1403837606 (var2757 var2590) void)
(declare-fun cast-from-var891-to-var2590 (var891) var2590)
(declare-fun var2757_setEdit/237289652 (var2757 var1922) void)
(declare-fun ordinal/1990918415 (var3558) Int)
(declare-fun var746-init () var746)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2590) String)
(declare-fun cast-from-var3558-to-var2590 (var3558) var2590)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/791492760 (var746 String) void)
(declare-fun cast-from-var746-to-var737 (var746) var737)
(declare-const null-var1160 var1160)
(declare-const null-var1922 var1922)
(declare-const null-String String)
(declare-const null-var3558 var3558)
(declare-const var3557-ON var891)
(declare-const var1566-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm (Array Int Int))
(declare-const var910 var1160) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFSettings 
(assert (not (= var910 null-var1160)))
(declare-const var401 var1922) ; Statement: r3 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect$Enum 
(assert (not (= var401 null-var1922)))
(declare-const var1705 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1705 null-String)))
(declare-const var2618 var3558) ; Statement: r27 := @parameter2: org.apache.poi.poifs.crypt.HashAlgorithm 
(assert (not (= var2618 null-var3558)))
(assert true)
(define-const var3701 var2757 (safeGetDocumentProtection/-2121135233 var910)) ; Statement: $r2 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFSettings: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect safeGetDocumentProtection()>() 
(define-const var3355 var891 var3557-ON) ; Statement: $r1 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum ON> 
;(assert (var2757_setEnforcement/-1403837606 var3701 (cast-from-var891-to-var2590 var3355))) ; Statement: interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect: void setEnforcement(java.lang.Object)>($r1) 

(declare-const var3701!1 var2757)
(declare-const var3355!1 var891)
(assert true)
(define-const var2191 var2757 (safeGetDocumentProtection/-2121135233 var910)) ; Statement: $r4 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFSettings: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect safeGetDocumentProtection()>() 
;(assert (var2757_setEdit/237289652 var2191 var401)) ; Statement: interfaceinvoke $r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect: void setEdit(org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect$Enum)>(r3) 

(declare-const var2191!1 var2757)
(declare-const var401!1 var1922)
 ; Statement: if r5 != null goto (branch) 
(assert (not (= var1705 null-String))) ; Cond: r5 != null 
 ; Statement: if r27 != null goto $r6 = <org.apache.poi.xwpf.usermodel.XWPFSettings$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm> 
(assert (not (= var2618 null-var3558))) ; Cond: r27 != null 
(define-const var1651 (Array Int Int) var1566-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm) ; Statement: $r6 = <org.apache.poi.xwpf.usermodel.XWPFSettings$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm> 
(assert true)
(define-const var156 Int (ordinal/1990918415 var2618)) ; Statement: $i0 = virtualinvoke r27.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>() 
(define-const var1562 Int (select var1651 var156)) ; Statement: $i1 = $r6[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 2: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 3: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 4: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 5: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_AES>;     case 6: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_AES>;     case 7: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_AES>;     default: goto $r45 = new org.apache.poi.EncryptedDocumentException; } 
(assert (and (not (= var1562 7)) (and (not (= var1562 6)) (and (not (= var1562 5)) (and (not (= var1562 4)) (and (not (= var1562 3)) (and (not (= var1562 2)) (and (not (= var1562 1)) true)))))))) ; Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(define-const var3798 var746 var746-init) ; Statement: $r45 = new org.apache.poi.EncryptedDocumentException 
(define-const var1413 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1413)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1413!1 String)
(assert (= var1413!1 ""))
(assert true)
(define-const var1509 String (append/672562846 var1413!1 "Hash algorithm \u0027")) ; Statement: $r9 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm \'") 
(declare-const var1413!2 String)
(assert (= var1413!2 (str.++ var1413!1 "Hash algorithm \u0027")))
(assert true)
(define-const var738 String (append/-1031950772 var1509 (cast-from-var3558-to-var2590 var2618))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var1509!1 String)
(assert (str.prefixof var1509 var1509!1))
(assert true)
(define-const var2580 String (append/672562846 var738 "\u0027 is not supported for document write protection.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not supported for document write protection.") 
(declare-const var738!1 String)
(assert (= var738!1 (str.++ var738 "\u0027 is not supported for document write protection.")))
(assert true)
(define-const var2167 String (toString/-2075883882 var2580)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/791492760 var3798 var2167)) ; Statement: specialinvoke $r45.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r12) 

(declare-const var3798!1 var746)
(declare-const var2167!1 String)
(define-const var2385 var737 (cast-from-var746-to-var737 var3798!1)) ; Statement: $r46 = (java.lang.Throwable) $r45 
 ; Statement: throw $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {safeGetDocumentProtection/-2121135233=([org.apache.poi.xwpf.usermodel.XWPFSettings], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect), var2757_setEnforcement/-1403837606=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect, java.lang.Object], void), cast-from-var891-to-var2590=([org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum], java.lang.Object), var2757_setEdit/237289652=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect, org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect$Enum], void), ordinal/1990918415=([org.apache.poi.poifs.crypt.HashAlgorithm], int), var746-init=([], org.apache.poi.EncryptedDocumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3558-to-var2590=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/791492760=([org.apache.poi.EncryptedDocumentException, java.lang.String], void), cast-from-var746-to-var737=([org.apache.poi.EncryptedDocumentException], java.lang.Throwable)}
; {var1160=org.apache.poi.xwpf.usermodel.XWPFSettings, var910=r0, var1922=org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect$Enum, var401=r3, var1705=r5, var3541=null_type, var3558=org.apache.poi.poifs.crypt.HashAlgorithm, var2618=r27, var2757=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect, var3701=$r2, var891=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum, var3557=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1, var3355=$r1, var2590=java.lang.Object, var2191=$r4, var1566=org.apache.poi.xwpf.usermodel.XWPFSettings$1, var1651=$r6, var156=$i0, var1562=$i1, var746=org.apache.poi.EncryptedDocumentException, var3798=$r45, var1413=$r44, var1509=$r9, var738=$r10, var2580=$r11, var2167=$r12, var737=java.lang.Throwable, var2385=$r46}
; {org.apache.poi.xwpf.usermodel.XWPFSettings=var1160, r0=var910, org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect$Enum=var1922, r3=var401, r5=var1705, null_type=var3541, org.apache.poi.poifs.crypt.HashAlgorithm=var3558, r27=var2618, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect=var2757, $r2=var3701, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum=var891, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1=var3557, $r1=var3355, java.lang.Object=var2590, $r4=var2191, org.apache.poi.xwpf.usermodel.XWPFSettings$1=var1566, $r6=var1651, $i0=var156, $i1=var1562, org.apache.poi.EncryptedDocumentException=var746, $r45=var3798, $r44=var1413, $r9=var1509, $r10=var738, $r11=var2580, $r12=var2167, java.lang.Throwable=var737, $r46=var2385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFSettings;	r3 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect$Enum;	r5 := @parameter1: java.lang.String;	r27 := @parameter2: org.apache.poi.poifs.crypt.HashAlgorithm;	$r2 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFSettings: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect safeGetDocumentProtection()>();	$r1 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum ON>;	interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect: void setEnforcement(java.lang.Object)>($r1);	$r4 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFSettings: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect safeGetDocumentProtection()>();	interfaceinvoke $r4.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocProtect: void setEdit(org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect$Enum)>(r3);	if r5 != null goto (branch);	if r27 != null goto $r6 = <org.apache.poi.xwpf.usermodel.XWPFSettings$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm>;	$r6 = <org.apache.poi.xwpf.usermodel.XWPFSettings$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm>;	$i0 = virtualinvoke r27.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>();	$i1 = $r6[$i0];	tableswitch($i1) {     case 1: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 2: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 3: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 4: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_FULL>;     case 5: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_AES>;     case 6: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_AES>;     case 7: goto r28 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCryptProv$Enum RSA_AES>;     default: goto $r45 = new org.apache.poi.EncryptedDocumentException; };	$r45 = new org.apache.poi.EncryptedDocumentException;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm \'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not supported for document write protection.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r45.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r12);	$r46 = (java.lang.Throwable) $r45;	throw $r46
;block_num 4