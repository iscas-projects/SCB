(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var201 0)
(declare-sort var1566 0)
(declare-sort var392 0)
(declare-sort var1919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fileFilter/-693816345 (var201) var1566)
(declare-fun toString/-522406933 (var392) String)
(declare-fun cast-from-var1566-to-var392 (var1566) var392)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var1919) String)
(declare-fun cast-from-var201-to-var1919 (var201) var1919)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var201 var201)
(declare-const null-var1566 var1566)
(declare-const var2533 var201) ; Statement: r0 := @this: org.apache.commons.io.filefilter.DelegateFileFilter 
(assert (not (= var2533 null-var201)))
(define-const var3116 var1566 (fileFilter/-693816345 var2533)) ; Statement: $r1 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FileFilter fileFilter> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FilenameFilter fileNameFilter> 
(assert (not (= var3116 null-var1566))) ; Negate: Cond: $r1 == null  
(define-const var1927 var1566 (fileFilter/-693816345 var2533)) ; Statement: $r10 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FileFilter fileFilter> 
(assert true)
(define-const var849 String (toString/-522406933 (cast-from-var1566-to-var392 var1927))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: goto [?= $r3 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1883 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1883)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1883!1 String)
(assert (= var1883!1 ""))
(assert true)
(define-const var981 String (toString/-111084316 (cast-from-var201-to-var1919 var2533))) ; Statement: $r4 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
(define-const var1029 String (append/672562846 var1883!1 var981)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1883!2 String)
(assert (= var1883!2 (str.++ var1883!1 var981)))
(assert true)
(define-const var505 String (append/672562846 var1029 "(")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1029!1 String)
(assert (= var1029!1 (str.++ var1029 "(")))
(assert true)
(define-const var2408 String (append/672562846 var505 var849)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var505!1 String)
(assert (= var505!1 (str.++ var505 var849)))
(assert true)
(define-const var417 String (append/672562846 var2408 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2408!1 String)
(assert (= var2408!1 (str.++ var2408 ")")))
(assert true)
(define-const var1606 String (toString/-2075883882 var417)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {fileFilter/-693816345=([org.apache.commons.io.filefilter.DelegateFileFilter], java.io.FileFilter), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1566-to-var392=([java.io.FileFilter], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var201-to-var1919=([org.apache.commons.io.filefilter.DelegateFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var201=org.apache.commons.io.filefilter.DelegateFileFilter, var2533=r0, var1566=java.io.FileFilter, var3116=$r1, var1927=$r10, var392=java.lang.Object, var849=$r11, var1883=$r3, var1919=org.apache.commons.io.filefilter.AbstractFileFilter, var981=$r4, var1029=$r5, var505=$r6, var2408=$r7, var417=$r8, var1606=$r9}
; {org.apache.commons.io.filefilter.DelegateFileFilter=var201, r0=var2533, java.io.FileFilter=var1566, $r1=var3116, $r10=var1927, java.lang.Object=var392, $r11=var849, $r3=var1883, org.apache.commons.io.filefilter.AbstractFileFilter=var1919, $r4=var981, $r5=var1029, $r6=var505, $r7=var2408, $r8=var417, $r9=var1606}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.filefilter.DelegateFileFilter;	$r1 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FileFilter fileFilter>;	if $r1 == null goto $r2 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FilenameFilter fileNameFilter>;	$r10 = r0.<org.apache.commons.io.filefilter.DelegateFileFilter: java.io.FileFilter fileFilter>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.String toString()>();	goto [?= $r3 = new java.lang.StringBuilder];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3