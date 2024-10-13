(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var692 0)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFullName/-1302123061 (var298) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var298 var298)
(declare-const var944 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var944 null-String)))
(declare-const var812 var298) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var812 null-var298)))
(assert true)
(define-const var2077 Bool (endsWith/985337093 var944 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2077 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1746 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1746)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1746!1 String)
(assert (= var1746!1 ""))
(assert true)
(define-const var1621 String (append/672562846 var1746!1 var944)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1746!2 String)
(assert (= var1746!2 (str.++ var1746!1 var944)))
(assert true)
(define-const var80 String (append/672562846 var1621 "/")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1621!1 String)
(assert (= var1621!1 (str.++ var1621 "/")))
(assert true)
(define-const var272 String (getFullName/-1302123061 var812)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var2031 String (append/672562846 var80 var272)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var80!1 String)
(assert (= var80!1 (str.++ var80 var272)))
(assert true)
(define-const var1652 String (toString/-2075883882 var2031)) ; Statement: $r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var944=r0, var692=null_type, var298=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var812=r3, var2077=$z0, var1746=$r1, var1621=$r2, var80=$r5, var272=$r4, var2031=$r6, var1652=$r11}
; {r0=var944, null_type=var692, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var298, r3=var812, $z0=var2077, $r1=var1746, $r2=var1621, $r5=var80, $r4=var272, $r6=var2031, $r11=var1652}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r11 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3