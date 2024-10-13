(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2364 0)
(declare-sort var300 0)
(declare-sort var2262 0)
(declare-sort var2800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toStringExtraProperties/1011589088 (var2364) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-959053322 (var2364) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMimeType/937683475 (var2364) String)
(declare-fun var300_jQuote/1315253176 (String) String)
(declare-fun var2262_getShortClassNameOfObject/16194974 (var2800 Bool) String)
(declare-fun cast-from-var2364-to-var2800 (var2364) var2800)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2364 var2364)
(declare-const var1674 var2364) ; Statement: r0 := @this: freemarker.core.OutputFormat 
(assert (not (= var1674 null-var2364)))
(assert true)
(define-const var3888 String (toStringExtraProperties/1011589088 var1674)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.OutputFormat: java.lang.String toStringExtraProperties()>() 
(define-const var2805 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2805)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2805!1 String)
(assert (= var2805!1 ""))
(assert true)
(define-const var3238 String (getName/-959053322 var1674)) ; Statement: $r3 = virtualinvoke r0.<freemarker.core.OutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var2798 String (append/672562846 var2805!1 var3238)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2805!2 String)
(assert (= var2805!2 (str.++ var2805!1 var3238)))
(assert true)
(define-const var3380 String (append/672562846 var2798 "(mimeType=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(mimeType=") 
(declare-const var2798!1 String)
(assert (= var2798!1 (str.++ var2798 "(mimeType=")))
(assert true)
(define-const var904 String (getMimeType/937683475 var1674)) ; Statement: $r5 = virtualinvoke r0.<freemarker.core.OutputFormat: java.lang.String getMimeType()>() 
(define-const var720 String (var300_jQuote/1315253176 var904)) ; Statement: $r6 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r5) 
(assert true)
(define-const var1334 String (append/672562846 var3380 var720)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3380!1 String)
(assert (= var3380!1 (str.++ var3380 var720)))
(assert true)
(define-const var2655 String (append/672562846 var1334 ", class=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class=") 
(declare-const var1334!1 String)
(assert (= var1334!1 (str.++ var1334 ", class=")))
(define-const var1416 String (var2262_getShortClassNameOfObject/16194974 (cast-from-var2364-to-var2800 var1674) (ite (= 1 1) true false))) ; Statement: $r9 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object,boolean)>(r0, 1) 
(assert true)
(define-const var594 String (append/672562846 var2655 var1416)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2655!1 String)
(assert (= var2655!1 (str.++ var2655 var1416)))
(assert true)
(define-const var1302 Int (length/-134980193 var3888)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $r16 = "" 
(assert (not (= var1302 0))) ; Negate: Cond: $i0 == 0  
(define-const var1997 String ", ") ; Statement: $r16 = ", " 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3467 String (append/672562846 var594 var1997)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var594!1 String)
(assert (= var594!1 (str.++ var594 var1997)))
(assert true)
(define-const var1774 String (append/672562846 var3467 var3888)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3467!1 String)
(assert (= var3467!1 (str.++ var3467 var3888)))
(assert true)
(define-const var1298 String (append/672562846 var1774 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1774!1 String)
(assert (= var1774!1 (str.++ var1774 ")")))
(assert true)
(define-const var3589 String (toString/-2075883882 var1298)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {toStringExtraProperties/1011589088=([freemarker.core.OutputFormat], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMimeType/937683475=([freemarker.core.OutputFormat], java.lang.String), var300_jQuote/1315253176=([java.lang.String], java.lang.String), var2262_getShortClassNameOfObject/16194974=([java.lang.Object, boolean], java.lang.String), cast-from-var2364-to-var2800=([freemarker.core.OutputFormat], java.lang.Object), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2364=freemarker.core.OutputFormat, var1674=r0, var3888=r1, var2805=$r2, var3238=$r3, var2798=$r4, var3380=$r7, var904=$r5, var300=freemarker.template.utility.StringUtil, var720=$r6, var1334=$r8, var2655=$r10, var2262=freemarker.template.utility.ClassUtil, var2800=java.lang.Object, var1416=$r9, var594=$r11, var1302=$i0, var1997=$r16, var3467=$r12, var1774=$r13, var1298=$r14, var3589=$r15}
; {freemarker.core.OutputFormat=var2364, r0=var1674, r1=var3888, $r2=var2805, $r3=var3238, $r4=var2798, $r7=var3380, $r5=var904, freemarker.template.utility.StringUtil=var300, $r6=var720, $r8=var1334, $r10=var2655, freemarker.template.utility.ClassUtil=var2262, java.lang.Object=var2800, $r9=var1416, $r11=var594, $i0=var1302, $r16=var1997, $r12=var3467, $r13=var1774, $r14=var1298, $r15=var3589}
;seq <freemarker.core.OutputFormat: java.lang.String toStringExtraProperties()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.OutputFormat;	r1 = virtualinvoke r0.<freemarker.core.OutputFormat: java.lang.String toStringExtraProperties()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<freemarker.core.OutputFormat: java.lang.String getName()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(mimeType=");	$r5 = virtualinvoke r0.<freemarker.core.OutputFormat: java.lang.String getMimeType()>();	$r6 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", class=");	$r9 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object,boolean)>(r0, 1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 == 0 goto $r16 = "";	$r16 = ", ";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 3