(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2073 0)
(declare-sort var201 0)
(declare-sort var3087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun debug/-1466895580 (var2073) Bool)
(declare-fun outStream/-1466895580 (var2073) var201)
(declare-fun recordSize/-1466895580 (var2073) Int)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3087-init () var3087)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3087 String) void)
(declare-const null-var2073 var2073)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var201 var201)
(declare-const var940 var2073) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer 
(assert (not (= var940 null-var2073)))
(declare-const var2884 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var2884 null-__Array__Int__Int__)))
(declare-const var3131 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3131 null-Int)))
(define-const var2738 Bool (debug/-1466895580 var940)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: boolean debug> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream> 
(assert (= (ite var2738 1 0) 0)) ; Cond: $z0 == 0 
(define-const var366 var201 (outStream/-1466895580 var940)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream> 
 ; Statement: if $r1 != null goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize> 
(assert (not (= var366 null-var201))) ; Cond: $r1 != null 
(define-const var190 Int (recordSize/-1466895580 var940)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize> 
(define-const var390 Int (+ var3131 var190)) ; Statement: $i3 = i0 + $i1 
(define-const var3846 Int (getLength-Arr-Int-1 var2884)) ; Statement: $i2 = lengthof r2 
 ; Statement: if $i3 <= $i2 goto $i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int currRecIdx> 
(assert (not (<= var390 var3846))) ; Negate: Cond: $i3 <= $i2  
(define-const var2763 var3087 var3087-init) ; Statement: $r4 = new java.io.IOException 
(define-const var1580 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1580)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1580!1 String)
(assert (= var1580!1 ""))
(assert true)
(define-const var1262 String (append/672562846 var1580!1 "record has length \u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("record has length \'") 
(declare-const var1580!2 String)
(assert (= var1580!2 (str.++ var1580!1 "record has length \u0027")))
(define-const var2302 Int (getLength-Arr-Int-1 var2884)) ; Statement: $i12 = lengthof r2 
(assert true)
(define-const var2820 String (append/-1001720160 var1262 var2302)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var1262!1 String)
(assert (str.prefixof var1262 var1262!1))
(assert true)
(define-const var3619 String (append/672562846 var2820 "\u0027 with offset \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with offset \'") 
(declare-const var2820!1 String)
(assert (= var2820!1 (str.++ var2820 "\u0027 with offset \u0027")))
(assert true)
(define-const var626 String (append/-1001720160 var3619 var3131)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3619!1 String)
(assert (str.prefixof var3619 var3619!1))
(assert true)
(define-const var251 String (append/672562846 var626 "\u0027 which is less than the record size of \u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' which is less than the record size of \'") 
(declare-const var626!1 String)
(assert (= var626!1 (str.++ var626 "\u0027 which is less than the record size of \u0027")))
(define-const var303 Int (recordSize/-1466895580 var940)) ; Statement: $i13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize> 
(assert true)
(define-const var1073 String (append/-1001720160 var251 var303)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i13) 
(declare-const var251!1 String)
(assert (str.prefixof var251 var251!1))
(assert true)
(define-const var1433 String (append/672562846 var1073 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1073!1 String)
(assert (= var1073!1 (str.++ var1073 "\u0027")))
(assert true)
(define-const var3153 String (toString/-2075883882 var1433)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2763 var3153)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r13) 

(declare-const var2763!1 var3087)
(declare-const var3153!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {debug/-1466895580=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer], boolean), outStream/-1466895580=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer], java.io.OutputStream), recordSize/-1466895580=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer], int), getLength-Arr-Int-1=([byte[]], int), var3087-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2073=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer, var940=r0, var2884=r2, var3131=i0, var2738=$z0, var201=java.io.OutputStream, var366=$r1, var190=$i1, var390=$i3, var3846=$i2, var3087=java.io.IOException, var2763=$r4, var1580=$r5, var1262=$r6, var2302=$i12, var2820=$r7, var3619=$r8, var626=$r9, var251=$r10, var303=$i13, var1073=$r11, var1433=$r12, var3153=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer=var2073, r0=var940, r2=var2884, i0=var3131, $z0=var2738, java.io.OutputStream=var201, $r1=var366, $i1=var190, $i3=var390, $i2=var3846, java.io.IOException=var3087, $r4=var2763, $r5=var1580, $r6=var1262, $i12=var2302, $r7=var2820, $r8=var3619, $r9=var626, $r10=var251, $i13=var303, $r11=var1073, $r12=var1433, $r13=var3153}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer;	r2 := @parameter0: byte[];	i0 := @parameter1: int;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: boolean debug>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: java.io.OutputStream outStream>;	if $r1 != null goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize>;	$i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize>;	$i3 = i0 + $i1;	$i2 = lengthof r2;	if $i3 <= $i2 goto $i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int currRecIdx>;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("record has length \'");	$i12 = lengthof r2;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with offset \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' which is less than the record size of \'");	$i13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarBuffer: int recordSize>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i13);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r13);	throw $r4
;block_num 4