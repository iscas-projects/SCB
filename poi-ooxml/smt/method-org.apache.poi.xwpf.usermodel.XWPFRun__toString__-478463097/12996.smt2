(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPhonetic/-1874376719 (var1784) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun text/1290944550 (var1784) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1784 var1784)
(declare-const var846 var1784) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFRun 
(assert (not (= var846 null-var1784)))
(assert true)
(define-const var232 String (getPhonetic/-1874376719 var846)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String getPhonetic()>() 
(assert true)
(define-const var2530 Int (length/-134980193 var232)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>() 
(assert (not (<= var2530 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3484 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3484)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3484!1 String)
(assert (= var3484!1 ""))
(assert true)
(define-const var16 String (text/1290944550 var846)) ; Statement: $r4 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>() 
(assert true)
(define-const var3727 String (append/672562846 var3484!1 var16)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3484!2 String)
(assert (= var3484!2 (str.++ var3484!1 var16)))
(assert true)
(define-const var695 String (append/672562846 var3727 " (")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3727!1 String)
(assert (= var3727!1 (str.++ var3727 " (")))
(assert true)
(define-const var3214 String (append/672562846 var695 var232)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var695!1 String)
(assert (= var695!1 (str.++ var695 var232)))
(assert true)
(define-const var915 String (append/672562846 var3214 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3214!1 String)
(assert (= var3214!1 (str.++ var3214 ")")))
(assert true)
(define-const var167 String (toString/-2075883882 var915)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getPhonetic/-1874376719=([org.apache.poi.xwpf.usermodel.XWPFRun], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), text/1290944550=([org.apache.poi.xwpf.usermodel.XWPFRun], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1784=org.apache.poi.xwpf.usermodel.XWPFRun, var846=r0, var232=r1, var2530=$i0, var3484=$r3, var16=$r4, var3727=$r5, var695=$r6, var3214=$r7, var915=$r8, var167=$r9}
; {org.apache.poi.xwpf.usermodel.XWPFRun=var1784, r0=var846, r1=var232, $i0=var2530, $r3=var3484, $r4=var16, $r5=var3727, $r6=var695, $r7=var3214, $r8=var915, $r9=var167}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFRun;	r1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String getPhonetic()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 <= 0 goto $r2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFRun: java.lang.String text()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2