(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3569 0)
(declare-sort var153 0)
(declare-sort var1207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun debug/-1466895580 (var3569) Bool)
(declare-fun outStream/-1466895580 (var3569) var153)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun recordSize/-1466895580 (var3569) Int)
(declare-fun var1207-init () var1207)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1207 String) void)
(declare-const null-var3569 var3569)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var153 var153)
(declare-const var1150 var3569) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer 
(assert (not (= var1150 null-var3569)))
(declare-const var2043 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var2043 null-__Array__Int__Int__)))
(define-const var2882 Bool (debug/-1466895580 var1150)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: boolean debug> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream> 
(assert (= (ite var2882 1 0) 0)) ; Cond: $z0 == 0 
(define-const var293 var153 (outStream/-1466895580 var1150)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream> 
 ; Statement: if $r1 != null goto $i1 = lengthof r2 
(assert (not (= var293 null-var153))) ; Cond: $r1 != null 
(define-const var1422 Int (getLength-Arr-Int-1 var2043)) ; Statement: $i1 = lengthof r2 
(define-const var1756 Int (recordSize/-1466895580 var1150)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize> 
 ; Statement: if $i1 == $i0 goto $i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int currRecIdx> 
(assert (not (= var1422 var1756))) ; Negate: Cond: $i1 == $i0  
(define-const var2528 var1207 var1207-init) ; Statement: $r4 = new java.io.IOException 
(define-const var1553 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1553)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1553!1 String)
(assert (= var1553!1 ""))
(assert true)
(define-const var3473 String (append/672562846 var1553!1 "record to write has length \u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("record to write has length \'") 
(declare-const var1553!2 String)
(assert (= var1553!2 (str.++ var1553!1 "record to write has length \u0027")))
(define-const var1 Int (getLength-Arr-Int-1 var2043)) ; Statement: $i10 = lengthof r2 
(assert true)
(define-const var3334 String (append/-1001720160 var3473 var1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(declare-const var3473!1 String)
(assert (str.prefixof var3473 var3473!1))
(assert true)
(define-const var690 String (append/672562846 var3334 "\u0027 which is not the record size of \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' which is not the record size of \'") 
(declare-const var3334!1 String)
(assert (= var3334!1 (str.++ var3334 "\u0027 which is not the record size of \u0027")))
(define-const var2330 Int (recordSize/-1466895580 var1150)) ; Statement: $i11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize> 
(assert true)
(define-const var2781 String (append/-1001720160 var690 var2330)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11) 
(declare-const var690!1 String)
(assert (str.prefixof var690 var690!1))
(assert true)
(define-const var3915 String (append/672562846 var2781 "\u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2781!1 String)
(assert (= var2781!1 (str.++ var2781 "\u0027")))
(assert true)
(define-const var3809 String (toString/-2075883882 var3915)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2528 var3809)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r11) 

(declare-const var2528!1 var1207)
(declare-const var3809!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {debug/-1466895580=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer], boolean), outStream/-1466895580=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer], java.io.OutputStream), getLength-Arr-Int-1=([byte[]], int), recordSize/-1466895580=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer], int), var1207-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3569=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer, var1150=r0, var2043=r2, var2882=$z0, var153=java.io.OutputStream, var293=$r1, var1422=$i1, var1756=$i0, var1207=java.io.IOException, var2528=$r4, var1553=$r5, var3473=$r6, var1=$i10, var3334=$r7, var690=$r8, var2330=$i11, var2781=$r9, var3915=$r10, var3809=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer=var3569, r0=var1150, r2=var2043, $z0=var2882, java.io.OutputStream=var153, $r1=var293, $i1=var1422, $i0=var1756, java.io.IOException=var1207, $r4=var2528, $r5=var1553, $r6=var3473, $i10=var1, $r7=var3334, $r8=var690, $i11=var2330, $r9=var2781, $r10=var3915, $r11=var3809}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer;	r2 := @parameter0: byte[];	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: boolean debug>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream>;	if $r1 != null goto $i1 = lengthof r2;	$i1 = lengthof r2;	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize>;	if $i1 == $i0 goto $i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int currRecIdx>;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("record to write has length \'");	$i10 = lengthof r2;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' which is not the record size of \'");	$i11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 4