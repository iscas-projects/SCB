(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2015 0)
(declare-sort var3709 0)
(declare-sort var2102 0)
(declare-sort var3232 0)
(declare-sort var2685 0)
(declare-sort var1967 0)
(declare-sort var662 0)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2102_notNull/1920974948 (var3232) var3232)
(declare-fun cast-from-var2015-to-var3232 (var2015) var3232)
(declare-fun var2015_getSheet/-2122013228 (var2015 String) var2685)
(declare-fun cast-from-var2015-to-var1967 (var2015) var1967)
(declare-fun var662_close/-158386472 (var1967) void)
(declare-fun var3596-init () var3596)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3596 String) void)
(declare-const null-var2015 var2015)
(declare-const null-String String)
(declare-const null-var2685 var2685)
(declare-const var3370 var2015) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Workbook 
(assert (not (= var3370 null-var2015)))
(declare-const var2820 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2820 null-String)))
;(assert (var2102_notNull/1920974948 (cast-from-var2015-to-var3232 var3370))) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object)>(r0) 

(declare-const var3370!1 var2015)
 ; Statement: if null != r8 goto $r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8) 
(assert (not (= null-String var2820))) ; Cond: null != r8 
(define-const var2006 var2685 (var2015_getSheet/-2122013228 var3370!1 var2820)) ; Statement: $r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8) 
 ; Statement: if null != $r7 goto return $r7 
(assert (not (not (= null-var2685 var2006)))) ; Negate: Cond: null != $r7  
(define-const var3453 var1967 (cast-from-var2015-to-var1967 var3370!1)) ; Statement: $r11 = (java.io.Closeable) r0 
;(assert (var662_close/-158386472 var3453)) ; Statement: staticinvoke <cn.hutool.core.io.IoUtil: void close(java.io.Closeable)>($r11) 

(declare-const var3453!1 var1967)
(define-const var1348 var3596 var3596-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var1111 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1111)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1111!1 String)
(assert (= var1111!1 ""))
(assert true)
(define-const var2569 String (append/672562846 var1111!1 "Sheet [")) ; Statement: $r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet [") 
(declare-const var1111!2 String)
(assert (= var1111!2 (str.++ var1111!1 "Sheet [")))
(assert true)
(define-const var3675 String (append/672562846 var2569 var2820)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var2569!1 String)
(assert (= var2569!1 (str.++ var2569 var2820)))
(assert true)
(define-const var2539 String (append/672562846 var3675 "] not exist!")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not exist!") 
(declare-const var3675!1 String)
(assert (= var3675!1 (str.++ var3675 "] not exist!")))
(assert true)
(define-const var2738 String (toString/-2075883882 var2539)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1348 var2738)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1348!1 var3596)
(declare-const var2738!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2102_notNull/1920974948=([java.lang.Object], java.lang.Object), cast-from-var2015-to-var3232=([org.apache.poi.ss.usermodel.Workbook], java.lang.Object), var2015_getSheet/-2122013228=([org.apache.poi.ss.usermodel.Workbook, java.lang.String], org.apache.poi.ss.usermodel.Sheet), cast-from-var2015-to-var1967=([org.apache.poi.ss.usermodel.Workbook], java.io.Closeable), var662_close/-158386472=([java.io.Closeable], void), var3596-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2015=org.apache.poi.ss.usermodel.Workbook, var3370=r0, var2820=r8, var3709=null_type, var2102=cn.hutool.core.lang.Assert, var3232=java.lang.Object, var2685=org.apache.poi.ss.usermodel.Sheet, var2006=$r7, var1967=java.io.Closeable, var3453=$r11, var662=cn.hutool.core.io.IoUtil, var3596=java.lang.IllegalArgumentException, var1348=$r10, var1111=$r9, var2569=$r3, var3675=$r4, var2539=$r5, var2738=$r6}
; {org.apache.poi.ss.usermodel.Workbook=var2015, r0=var3370, r8=var2820, null_type=var3709, cn.hutool.core.lang.Assert=var2102, java.lang.Object=var3232, org.apache.poi.ss.usermodel.Sheet=var2685, $r7=var2006, java.io.Closeable=var1967, $r11=var3453, cn.hutool.core.io.IoUtil=var662, java.lang.IllegalArgumentException=var3596, $r10=var1348, $r9=var1111, $r3=var2569, $r4=var3675, $r5=var2539, $r6=var2738}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.poi.ss.usermodel.Workbook;	r8 := @parameter1: java.lang.String;	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object)>(r0);	if null != r8 goto $r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8);	$r7 = interfaceinvoke r0.<org.apache.poi.ss.usermodel.Workbook: org.apache.poi.ss.usermodel.Sheet getSheet(java.lang.String)>(r8);	if null != $r7 goto return $r7;	$r11 = (java.io.Closeable) r0;	staticinvoke <cn.hutool.core.io.IoUtil: void close(java.io.Closeable)>($r11);	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not exist!");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r10
;block_num 3