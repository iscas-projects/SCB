(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var610 0)
(declare-sort var688 0)
(declare-sort var935 0)
(declare-sort var3378 0)
(declare-sort var2519 0)
(declare-sort var2826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _type/-884130014 (var610) var3378)
(declare-fun ordinal/745787438 (var3378) Int)
(declare-fun var2519-init () var2519)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2826) String)
(declare-fun cast-from-var3378-to-var2826 (var3378) var2826)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2519 String) void)
(declare-const null-var610 var610)
(declare-const null-String String)
(declare-const var935-$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType (Array Int Int))
(declare-const var1590 var610) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink 
(assert (not (= var1590 null-var610)))
(declare-const var2322 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2322 null-String)))
(define-const var605 (Array Int Int) var935-$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFHyperlink$1: int[] $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType> 
(define-const var652 var3378 (_type/-884130014 var1590)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.common.usermodel.HyperlinkType _type> 
(assert true)
(define-const var438 Int (ordinal/745787438 var652)) ; Statement: $i0 = virtualinvoke $r1.<org.apache.poi.common.usermodel.HyperlinkType: int ordinal()>() 
(define-const var451 Int (select var605 var438)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r3 = new java.net.URI;     case 2: goto $r3 = new java.net.URI;     case 3: goto $r3 = new java.net.URI;     case 4: goto goto [?= return];     default: goto $r5 = new java.lang.IllegalStateException; } 
(assert (and (not (= var451 4)) (and (not (= var451 3)) (and (not (= var451 2)) (and (not (= var451 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var455 var2519 var2519-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(define-const var2815 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2815)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2815!1 String)
(assert (= var2815!1 ""))
(assert true)
(define-const var2912 String (append/672562846 var2815!1 "Invalid Hyperlink type: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Hyperlink type: ") 
(declare-const var2815!2 String)
(assert (= var2815!2 (str.++ var2815!1 "Invalid Hyperlink type: ")))
(define-const var1245 var3378 (_type/-884130014 var1590)) ; Statement: $r7 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.common.usermodel.HyperlinkType _type> 
(assert true)
(define-const var2066 String (append/-1031950772 var2912 (cast-from-var3378-to-var2826 var1245))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2912!1 String)
(assert (str.prefixof var2912 var2912!1))
(assert true)
(define-const var2022 String (toString/-2075883882 var2066)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var455 var2022)) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10) 

(declare-const var455!1 var2519)
(declare-const var2022!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {_type/-884130014=([org.apache.poi.xssf.usermodel.XSSFHyperlink], org.apache.poi.common.usermodel.HyperlinkType), ordinal/745787438=([org.apache.poi.common.usermodel.HyperlinkType], int), var2519-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3378-to-var2826=([org.apache.poi.common.usermodel.HyperlinkType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var610=org.apache.poi.xssf.usermodel.XSSFHyperlink, var1590=r0, var2322=r4, var688=null_type, var935=org.apache.poi.xssf.usermodel.XSSFHyperlink$1, var605=$r2, var3378=org.apache.poi.common.usermodel.HyperlinkType, var652=$r1, var438=$i0, var451=$i1, var2519=java.lang.IllegalStateException, var455=$r5, var2815=$r6, var2912=$r8, var1245=$r7, var2826=java.lang.Object, var2066=$r9, var2022=$r10}
; {org.apache.poi.xssf.usermodel.XSSFHyperlink=var610, r0=var1590, r4=var2322, null_type=var688, org.apache.poi.xssf.usermodel.XSSFHyperlink$1=var935, $r2=var605, org.apache.poi.common.usermodel.HyperlinkType=var3378, $r1=var652, $i0=var438, $i1=var451, java.lang.IllegalStateException=var2519, $r5=var455, $r6=var2815, $r8=var2912, $r7=var1245, java.lang.Object=var2826, $r9=var2066, $r10=var2022}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink;	r4 := @parameter0: java.lang.String;	$r2 = <org.apache.poi.xssf.usermodel.XSSFHyperlink$1: int[] $SwitchMap$org$apache$poi$common$usermodel$HyperlinkType>;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.common.usermodel.HyperlinkType _type>;	$i0 = virtualinvoke $r1.<org.apache.poi.common.usermodel.HyperlinkType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r3 = new java.net.URI;     case 2: goto $r3 = new java.net.URI;     case 3: goto $r3 = new java.net.URI;     case 4: goto goto [?= return];     default: goto $r5 = new java.lang.IllegalStateException; };	$r5 = new java.lang.IllegalStateException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid Hyperlink type: ");	$r7 = r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: org.apache.poi.common.usermodel.HyperlinkType _type>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2