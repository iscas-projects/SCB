(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var524 0)
(declare-sort var3500 0)
(declare-sort var1829 0)
(declare-sort var1272 0)
(declare-sort var2221 0)
(declare-sort var1310 0)
(declare-sort var3062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1829_createTempFile/1514200243 (String String) var1829)
(declare-fun var1272-init () var1272)
(declare-fun var2221-init () var2221)
(declare-fun <init>/796474546 (var2221 var1829) void)
(declare-fun <init>/-1119342706 (var1272 var1310) void)
(declare-fun cast-from-var2221-to-var1310 (var2221) var1310)
(declare-fun write/654681022 (var3062 String) void)
(declare-fun cast-from-var1272-to-var3062 (var1272) var3062)
(declare-fun close/-2106459009 (var1272) void)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getCanonicalPath/2030784441 (var1829) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var524 var524)
(declare-const null-String String)
(declare-const var3750 var524) ; Statement: r9 := @this: lombok.javac.apt.Processor 
(assert (not (= var3750 null-var524)))
(declare-const var1037 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1037 null-String)))
(define-const var66 var1829 (var1829_createTempFile/1514200243 "lombok-processor-report-" ".txt")) ; Statement: r0 = staticinvoke <java.io.File: java.io.File createTempFile(java.lang.String,java.lang.String)>("lombok-processor-report-", ".txt") 
(define-const var864 var1272 var1272-init) ; Statement: $r1 = new java.io.OutputStreamWriter 
(define-const var1949 var2221 var2221-init) ; Statement: $r2 = new java.io.FileOutputStream 
(assert true)
;(assert (<init>/796474546 var1949 var66)) ; Statement: specialinvoke $r2.<java.io.FileOutputStream: void <init>(java.io.File)>(r0) 

(declare-const var1949!1 var2221)
(declare-const var66!1 var1829)
(assert true)
;(assert (<init>/-1119342706 var864 (cast-from-var2221-to-var1310 var1949!1))) ; Statement: specialinvoke $r1.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>($r2) 

(declare-const var864!1 var1272)
(declare-const var1949!2 var2221)
(assert true)
;(assert (write/654681022 (cast-from-var1272-to-var3062 var864!1) var1037)) ; Statement: virtualinvoke $r1.<java.io.OutputStreamWriter: void write(java.lang.String)>(r3) 

(declare-const var864!2 var1272)
(declare-const var1037!1 String)
(assert true)
;(assert (close/-2106459009 var864!2)) ; Statement: virtualinvoke $r1.<java.io.OutputStreamWriter: void close()>() 

(declare-const var864!3 var1272)
(define-const var132 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var132 "Report written to \u0027")) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(java.lang.String)>("Report written to \'") 
(declare-const var132!1 String)
(assert (= var132!1 "Report written to \u0027"))
(assert true)
(define-const var594 String (getCanonicalPath/2030784441 var66!1)) ; Statement: $r5 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var3076 String (append/672562846 var132!1 var594)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var132!2 String)
(assert (= var132!2 (str.++ var132!1 var594)))
(assert true)
(define-const var2752 String (append/672562846 var3076 "\u0027\n")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n") 
(declare-const var3076!1 String)
(assert (= var3076!1 (str.++ var3076 "\u0027\n")))
(assert true)
(define-const var1264 String (toString/-2075883882 var2752)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1829_createTempFile/1514200243=([java.lang.String, java.lang.String], java.io.File), var1272-init=([], java.io.OutputStreamWriter), var2221-init=([], java.io.FileOutputStream), <init>/796474546=([java.io.FileOutputStream, java.io.File], void), <init>/-1119342706=([java.io.OutputStreamWriter, java.io.OutputStream], void), cast-from-var2221-to-var1310=([java.io.FileOutputStream], java.io.OutputStream), write/654681022=([java.io.Writer, java.lang.String], void), cast-from-var1272-to-var3062=([java.io.OutputStreamWriter], java.io.Writer), close/-2106459009=([java.io.OutputStreamWriter], void), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getCanonicalPath/2030784441=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var524=lombok.javac.apt.Processor, var3750=r9, var1037=r3, var3500=null_type, var1829=java.io.File, var66=r0, var1272=java.io.OutputStreamWriter, var864=$r1, var2221=java.io.FileOutputStream, var1949=$r2, var1310=java.io.OutputStream, var3062=java.io.Writer, var132=$r4, var594=$r5, var3076=$r6, var2752=$r7, var1264=$r8}
; {lombok.javac.apt.Processor=var524, r9=var3750, r3=var1037, null_type=var3500, java.io.File=var1829, r0=var66, java.io.OutputStreamWriter=var1272, $r1=var864, java.io.FileOutputStream=var2221, $r2=var1949, java.io.OutputStream=var1310, java.io.Writer=var3062, $r4=var132, $r5=var594, $r6=var3076, $r7=var2752, $r8=var1264}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: lombok.javac.apt.Processor;	r3 := @parameter0: java.lang.String;	r0 = staticinvoke <java.io.File: java.io.File createTempFile(java.lang.String,java.lang.String)>("lombok-processor-report-", ".txt");	$r1 = new java.io.OutputStreamWriter;	$r2 = new java.io.FileOutputStream;	specialinvoke $r2.<java.io.FileOutputStream: void <init>(java.io.File)>(r0);	specialinvoke $r1.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>($r2);	virtualinvoke $r1.<java.io.OutputStreamWriter: void write(java.lang.String)>(r3);	virtualinvoke $r1.<java.io.OutputStreamWriter: void close()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(java.lang.String)>("Report written to \'");	$r5 = virtualinvoke r0.<java.io.File: java.lang.String getCanonicalPath()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'\n");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1