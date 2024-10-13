(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var721 0)
(declare-sort var283 0)
(declare-sort var332 0)
(declare-sort var2116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var332-init () var332)
(declare-fun <init>/-1681595970 (var332 String) void)
(declare-fun dumpFile/982409569 (var721 var332) var332)
(declare-fun exists/1072868559 (var332) Bool)
(declare-fun mkdirs/-2114252793 (var332) Bool)
(declare-fun arr-var2116-init () (Array Int var2116))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-333883238 (var721) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var2116 (String) var2116)
(declare-fun var721_debug/209617639 ((Array Int var2116)) void)
(declare-const null-var721 var721)
(declare-const null-String String)
(declare-const null-__Array__Int__var2116__ (Array Int var2116))
(declare-const var2902 var721) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var2902 null-var721)))
(declare-const var1938 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1938 null-String)))
(define-const var2505 var332 var332-init) ; Statement: $r0 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2505 var1938)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var2505!1 var332)
(declare-const var1938!1 String)
(assert true)
(define-const var3564 var332 (dumpFile/982409569 var2902 var2505!1)) ; Statement: r3 = specialinvoke r2.<jdk.nashorn.internal.runtime.Source: java.io.File dumpFile(java.io.File)>($r0) 
(assert true)
(define-const var3514 Bool (exists/1072868559 var2505!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r4 = new java.io.FileOutputStream 
(assert (not (not (= (ite var3514 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3712 Bool (mkdirs/-2114252793 var2505!1)) ; Statement: $z1 = virtualinvoke $r0.<java.io.File: boolean mkdirs()>() 
 ; Statement: if $z1 != 0 goto $r4 = new java.io.FileOutputStream 
(assert (not (not (= (ite var3712 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1274 (Array Int var2116) arr-var2116-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(define-const var2189 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2189)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2189!1 String)
(assert (= var2189!1 ""))
(assert true)
(define-const var998 String (append/672562846 var2189!1 "Skipping source dump for ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping source dump for ") 
(declare-const var2189!2 String)
(assert (= var2189!2 (str.++ var2189!1 "Skipping source dump for ")))
(define-const var2592 String (name/-333883238 var2902)) ; Statement: $r10 = r2.<jdk.nashorn.internal.runtime.Source: java.lang.String name> 
(assert true)
(define-const var3399 String (append/672562846 var998 var2592)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var998!1 String)
(assert (= var998!1 (str.++ var998 var2592)))
(assert true)
(define-const var255 String (toString/-2075883882 var3399)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1274!1 (Array Int var2116))
(assert (not (= var1274!1 null-__Array__Int__var2116__)))
(assert (= (select var1274!1 0) (cast-from-String-to-var2116 var255))) ; Statement: $r8[0] = $r13 
;(assert (var721_debug/209617639 var1274!1)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.Source: void debug(java.lang.Object[])>($r8) 

(declare-const var1274!2 (Array Int var2116))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var332-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), dumpFile/982409569=([jdk.nashorn.internal.runtime.Source, java.io.File], java.io.File), exists/1072868559=([java.io.File], boolean), mkdirs/-2114252793=([java.io.File], boolean), arr-var2116-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-333883238=([jdk.nashorn.internal.runtime.Source], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var2116=([java.lang.String], java.lang.Object), var721_debug/209617639=([java.lang.Object[]], void)}
; {var721=jdk.nashorn.internal.runtime.Source, var2902=r2, var1938=r1, var283=null_type, var332=java.io.File, var2505=$r0, var3564=r3, var3514=$z0, var3712=$z1, var2116=java.lang.Object, var1274=$r8, var2189=$r9, var998=$r11, var2592=$r10, var3399=$r12, var255=$r13}
; {jdk.nashorn.internal.runtime.Source=var721, r2=var2902, r1=var1938, null_type=var283, java.io.File=var332, $r0=var2505, r3=var3564, $z0=var3514, $z1=var3712, java.lang.Object=var2116, $r8=var1274, $r9=var2189, $r11=var998, $r10=var2592, $r12=var3399, $r13=var255}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.Source;	r1 := @parameter0: java.lang.String;	$r0 = new java.io.File;	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>(r1);	r3 = specialinvoke r2.<jdk.nashorn.internal.runtime.Source: java.io.File dumpFile(java.io.File)>($r0);	$z0 = virtualinvoke $r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r4 = new java.io.FileOutputStream;	$z1 = virtualinvoke $r0.<java.io.File: boolean mkdirs()>();	if $z1 != 0 goto $r4 = new java.io.FileOutputStream;	$r8 = newarray (java.lang.Object)[1];	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Skipping source dump for ");	$r10 = r2.<jdk.nashorn.internal.runtime.Source: java.lang.String name>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r8[0] = $r13;	staticinvoke <jdk.nashorn.internal.runtime.Source: void debug(java.lang.Object[])>($r8);	return
;block_num 3