(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3463 0)
(declare-sort var3750 0)
(declare-sort var3976 0)
(declare-sort var3529 0)
(declare-sort var3450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fileFilter/-693816345 (var3463) var3750)
(declare-fun fileNameFilter/-693816345 (var3463) var3976)
(declare-fun toString/-522406933 (var3529) String)
(declare-fun cast-from-var3976-to-var3529 (var3976) var3529)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var3450) String)
(declare-fun cast-from-var3463-to-var3450 (var3463) var3450)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3463 var3463)
(declare-const null-var3750 var3750)
(declare-const var1728 var3463) ; Statement: r0 := @this: org.apache.commons.io.filefilter.DelegateFileFilter 
(assert (not (= var1728 null-var3463)))
(define-const var1574 var3750 (fileFilter/-693816345 var1728)) ; Statement: $r1 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FileFilter fileFilter> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FilenameFilter fileNameFilter> 
(assert (= var1574 null-var3750)) ; Cond: $r1 == null 
(define-const var1061 var3976 (fileNameFilter/-693816345 var1728)) ; Statement: $r2 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FilenameFilter fileNameFilter> 
(assert true)
(define-const var2027 String (toString/-522406933 (cast-from-var3976-to-var3529 var1061))) ; Statement: $r11 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var307 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var307)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var307!1 String)
(assert (= var307!1 ""))
(assert true)
(define-const var3516 String (toString/-111084316 (cast-from-var3463-to-var3450 var1728))) ; Statement: $r4 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
(define-const var98 String (append/672562846 var307!1 var3516)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var307!2 String)
(assert (= var307!2 (str.++ var307!1 var3516)))
(assert true)
(define-const var1879 String (append/672562846 var98 "(")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var98!1 String)
(assert (= var98!1 (str.++ var98 "(")))
(assert true)
(define-const var1740 String (append/672562846 var1879 var2027)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1879!1 String)
(assert (= var1879!1 (str.++ var1879 var2027)))
(assert true)
(define-const var3245 String (append/672562846 var1740 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1740!1 String)
(assert (= var1740!1 (str.++ var1740 ")")))
(assert true)
(define-const var3448 String (toString/-2075883882 var3245)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {fileFilter/-693816345=([org.apache.commons.io.filefilter.DelegateFileFilter], java.io.FileFilter), fileNameFilter/-693816345=([org.apache.commons.io.filefilter.DelegateFileFilter], java.io.FilenameFilter), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3976-to-var3529=([java.io.FilenameFilter], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var3463-to-var3450=([org.apache.commons.io.filefilter.DelegateFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3463=org.apache.commons.io.filefilter.DelegateFileFilter, var1728=r0, var3750=java.io.FileFilter, var1574=$r1, var3976=java.io.FilenameFilter, var1061=$r2, var3529=java.lang.Object, var2027=$r11, var307=$r3, var3450=org.apache.commons.io.filefilter.AbstractFileFilter, var3516=$r4, var98=$r5, var1879=$r6, var1740=$r7, var3245=$r8, var3448=$r9}
; {org.apache.commons.io.filefilter.DelegateFileFilter=var3463, r0=var1728, java.io.FileFilter=var3750, $r1=var1574, java.io.FilenameFilter=var3976, $r2=var1061, java.lang.Object=var3529, $r11=var2027, $r3=var307, org.apache.commons.io.filefilter.AbstractFileFilter=var3450, $r4=var3516, $r5=var98, $r6=var1879, $r7=var1740, $r8=var3245, $r9=var3448}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.filefilter.DelegateFileFilter;	$r1 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FileFilter fileFilter>;	if $r1 == null goto $r2 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FilenameFilter fileNameFilter>;	$r2 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FilenameFilter fileNameFilter>;	$r11 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3