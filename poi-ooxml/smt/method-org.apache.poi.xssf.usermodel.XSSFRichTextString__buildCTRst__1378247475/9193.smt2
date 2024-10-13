(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2491 0)
(declare-sort var2956 0)
(declare-sort var843 0)
(declare-sort var231 0)
(declare-sort var2859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lastKey/-1351593607 (var843) var231)
(declare-fun cast-from-var231-to-Int (var231) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var2859-init () var2859)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var231) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2859 String) void)
(declare-const null-var2491 var2491)
(declare-const null-String String)
(declare-const null-var843 var843)
(declare-const var3978 var2491) ; Statement: r26 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var3978 null-var2491)))
(declare-const var2170 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2170 null-String)))
(declare-const var3743 var843) ; Statement: r1 := @parameter1: java.util.TreeMap 
(assert (not (= var3743 null-var843)))
(assert true)
(define-const var989 Int (length/-134980193 var2170)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2780 var231 (lastKey/-1351593607 var3743)) ; Statement: $r2 = virtualinvoke r1.<java.util.TreeMap: java.lang.Object lastKey()>() 
(define-const var1329 Int (cast-from-var231-to-Int var2780)) ; Statement: $r3 = (java.lang.Integer) $r2 
(assert true)
(define-const var3434 Int (intValue/-1815674922 var1329)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.Integer: int intValue()>() 
 ; Statement: if $i1 == $i0 goto $r4 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRst: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert (not (= var989 var3434))) ; Negate: Cond: $i1 == $i0  
(define-const var2789 var2859 var2859-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(define-const var1103 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1103)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1103!1 String)
(assert (= var1103!1 ""))
(assert true)
(define-const var1277 String (append/672562846 var1103!1 "Text length was ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Text length was ") 
(declare-const var1103!2 String)
(assert (= var1103!2 (str.++ var1103!1 "Text length was ")))
(assert true)
(define-const var54 Int (length/-134980193 var2170)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1579 String (append/-1001720160 var1277 var54)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1277!1 String)
(assert (str.prefixof var1277 var1277!1))
(assert true)
(define-const var2371 String (append/672562846 var1579 " but the last format index was ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but the last format index was ") 
(declare-const var1579!1 String)
(assert (= var1579!1 (str.++ var1579 " but the last format index was ")))
(assert true)
(define-const var3059 var231 (lastKey/-1351593607 var3743)) ; Statement: $r22 = virtualinvoke r1.<java.util.TreeMap: java.lang.Object lastKey()>() 
(assert true)
(define-const var676 String (append/-1031950772 var2371 var3059)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r22) 
(declare-const var2371!1 String)
(assert (str.prefixof var2371 var2371!1))
(assert true)
(define-const var3455 String (toString/-2075883882 var676)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2789 var3455)) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r25) 

(declare-const var2789!1 var2859)
(declare-const var3455!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), lastKey/-1351593607=([java.util.TreeMap], java.lang.Object), cast-from-var231-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int), var2859-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2491=org.apache.poi.xssf.usermodel.XSSFRichTextString, var3978=r26, var2170=r0, var2956=null_type, var843=java.util.TreeMap, var3743=r1, var989=$i1, var231=java.lang.Object, var2780=$r2, var1329=$r3, var3434=$i0, var2859=java.lang.IllegalArgumentException, var2789=$r18, var1103=$r19, var1277=$r20, var54=$i3, var1579=$r21, var2371=$r23, var3059=$r22, var676=$r24, var3455=$r25}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var2491, r26=var3978, r0=var2170, null_type=var2956, java.util.TreeMap=var843, r1=var3743, $i1=var989, java.lang.Object=var231, $r2=var2780, $r3=var1329, $i0=var3434, java.lang.IllegalArgumentException=var2859, $r18=var2789, $r19=var1103, $r20=var1277, $i3=var54, $r21=var1579, $r23=var2371, $r22=var3059, $r24=var676, $r25=var3455}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.TreeMap;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r2 = virtualinvoke r1.<java.util.TreeMap: java.lang.Object lastKey()>();	$r3 = (java.lang.Integer) $r2;	$i0 = virtualinvoke $r3.<java.lang.Integer: int intValue()>();	if $i1 == $i0 goto $r4 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRst: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r18 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Text length was ");	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but the last format index was ");	$r22 = virtualinvoke r1.<java.util.TreeMap: java.lang.Object lastKey()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r25);	throw $r18
;block_num 2