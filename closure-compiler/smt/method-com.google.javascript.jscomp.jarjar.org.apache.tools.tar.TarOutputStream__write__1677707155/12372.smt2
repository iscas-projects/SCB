(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1037 0)
(declare-sort var1081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currBytes/-33655867 (var1037) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun currSize/-33655867 (var1037) Int)
(declare-fun var1081-init () var1081)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-901862667 (String Int) String)
(declare-fun currName/-33655867 (var1037) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1081 String) void)
(declare-const null-var1037 var1037)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3404 var1037) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream 
(assert (not (= var3404 null-var1037)))
(declare-const var3436 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var3436 null-__Array__Int__Int__)))
(declare-const var3781 Int) ; Statement: i28 := @parameter1: int 
(assert (not (= var3781 null-Int)))
(declare-const var2097 Int) ; Statement: i29 := @parameter2: int 
(assert (not (= var2097 null-Int)))
(define-const var2905 Int (currBytes/-33655867 var3404)) ; Statement: $l1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: long currBytes> 
(define-const var3398 Int (cast-from-Int-to-Int var2097)) ; Statement: $l0 = (long) i29 
(define-const var203 Int (+ var2905 var3398)) ; Statement: $l3 = $l1 + $l0 
(define-const var708 Int (currSize/-33655867 var3404)) ; Statement: $l2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: long currSize> 
(define-const var1061 Int (ite (> var203 var708) 1 (ite (< var203 var708) (- 1) 0))) ; Statement: $b4 = $l3 cmp $l2 
(define-const var2564 Int (cast-from-Int-to-Int var1061)) ; Statement: $i32 = (int) $b4 
 ; Statement: if $i32 <= 0 goto $i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: int assemLen> 
(assert (not (<= var2564 0))) ; Negate: Cond: $i32 <= 0  
(define-const var157 var1081 var1081-init) ; Statement: $r27 = new java.io.IOException 
(define-const var2678 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2678)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2678!1 String)
(assert (= var2678!1 ""))
(assert true)
(define-const var1218 String (append/672562846 var2678!1 "request to write \u0027")) ; Statement: $r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("request to write \'") 
(declare-const var2678!2 String)
(assert (= var2678!2 (str.++ var2678!1 "request to write \u0027")))
(assert true)
(define-const var3282 String (append/-1001720160 var1218 var2097)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i29) 
(declare-const var1218!1 String)
(assert (str.prefixof var1218 var1218!1))
(assert true)
(define-const var1108 String (append/672562846 var3282 "\u0027 bytes exceeds size in header of \u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' bytes exceeds size in header of \'") 
(declare-const var3282!1 String)
(assert (= var3282!1 (str.++ var3282 "\u0027 bytes exceeds size in header of \u0027")))
(define-const var3243 Int (currSize/-33655867 var3404)) ; Statement: $l27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: long currSize> 
(assert true)
(define-const var3605 String (append/-901862667 var1108 var3243)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l27) 
(declare-const var1108!1 String)
(assert (str.prefixof var1108 var1108!1))
(assert true)
(define-const var47 String (append/672562846 var3605 "\u0027 bytes for entry \u0027")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' bytes for entry \'") 
(declare-const var3605!1 String)
(assert (= var3605!1 (str.++ var3605 "\u0027 bytes for entry \u0027")))
(define-const var2619 String (currName/-33655867 var3404)) ; Statement: $r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: java.lang.String currName> 
(assert true)
(define-const var3069 String (append/672562846 var47 var2619)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var47!1 String)
(assert (= var47!1 (str.++ var47 var2619)))
(assert true)
(define-const var2340 String (append/672562846 var3069 "\u0027")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3069!1 String)
(assert (= var3069!1 (str.++ var3069 "\u0027")))
(assert true)
(define-const var1308 String (toString/-2075883882 var2340)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var157 var1308)) ; Statement: specialinvoke $r27.<java.io.IOException: void <init>(java.lang.String)>($r25) 

(declare-const var157!1 var1081)
(declare-const var1308!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {currBytes/-33655867=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream], long), cast-from-Int-to-Int=([int], long), currSize/-33655867=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream], long), var1081-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), currName/-33655867=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1037=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, var3404=r0, var3436=r2, var3781=i28, var2097=i29, var2905=$l1, var3398=$l0, var203=$l3, var708=$l2, var1061=$b4, var2564=$i32, var1081=java.io.IOException, var157=$r27, var2678=$r26, var1218=$r17, var3282=$r18, var1108=$r19, var3243=$l27, var3605=$r20, var47=$r22, var2619=$r21, var3069=$r23, var2340=$r24, var1308=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream=var1037, r0=var3404, r2=var3436, i28=var3781, i29=var2097, $l1=var2905, $l0=var3398, $l3=var203, $l2=var708, $b4=var1061, $i32=var2564, java.io.IOException=var1081, $r27=var157, $r26=var2678, $r17=var1218, $r18=var3282, $r19=var1108, $l27=var3243, $r20=var3605, $r22=var47, $r21=var2619, $r23=var3069, $r24=var2340, $r25=var1308}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream;	r2 := @parameter0: byte[];	i28 := @parameter1: int;	i29 := @parameter2: int;	$l1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: long currBytes>;	$l0 = (long) i29;	$l3 = $l1 + $l0;	$l2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: long currSize>;	$b4 = $l3 cmp $l2;	$i32 = (int) $b4;	if $i32 <= 0 goto $i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: int assemLen>;	$r27 = new java.io.IOException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("request to write \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i29);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' bytes exceeds size in header of \'");	$l27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: long currSize>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l27);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' bytes for entry \'");	$r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: java.lang.String currName>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.io.IOException: void <init>(java.lang.String)>($r25);	throw $r27
;block_num 2