(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2437 0)
(declare-sort var2382 0)
(declare-sort var159 0)
(declare-sort var2402 0)
(declare-sort var3696 0)
(declare-sort var3933 0)
(declare-sort var3842 0)
(declare-sort var3099 0)
(declare-sort var3571 0)
(declare-sort var1232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-1586750009 (var2437) void)
(declare-fun encoding/-1666671902 (var2437) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filter/-1666671902 (var2437) var159)
(declare-fun getEol/833373716 (var159) var2402)
(declare-fun getValue/-1445752687 (var3696) String)
(declare-fun cast-from-var2402-to-var3696 (var2402) var3696)
(declare-fun getTab/-1695400603 (var159) var3933)
(declare-fun cast-from-var3933-to-var3696 (var3933) var3696)
(declare-fun getEof/-2111789410 (var159) var3933)
(declare-fun getTablength/-1292603039 (var159) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun outputEncoding/-1666671902 (var2437) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3842 String Int) void)
(declare-fun cast-from-var2437-to-var3842 (var2437) var3842)
(declare-fun srcDir/-1666671902 (var2437) var3099)
(declare-fun getDirectoryScanner/-1384636098 (var1232 var3099) var3571)
(declare-fun cast-from-var2437-to-var1232 (var2437) var1232)
(declare-fun getIncludedFiles/1141601209 (var3571) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2437 var2437)
(declare-const null-String String)
(declare-const var3616 var2437) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF 
(assert (not (= var3616 null-var2437)))
(assert true)
;(assert (validate/-1586750009 var3616)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>() 

(declare-const var3616!1 var2437)
(define-const var2730 String (encoding/-1666671902 var3616!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
 ; Statement: if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
(assert (not (= var2730 null-String))) ; Cond: $r1 != null 
(define-const var3316 String (encoding/-1666671902 var3616!1)) ; Statement: $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
(assert true) ; Non Conditional
(define-const var3467 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3467)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3467!1 String)
(assert (= var3467!1 ""))
(assert true)
(define-const var2237 String (append/672562846 var3467!1 "options: eol=")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=") 
(declare-const var3467!2 String)
(assert (= var3467!2 (str.++ var3467!1 "options: eol=")))
(define-const var1129 var159 (filter/-1666671902 var3616!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var603 var2402 (getEol/833373716 var1129)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>() 
(assert true)
(define-const var1312 String (getValue/-1445752687 (cast-from-var2402-to-var3696 var603))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>() 
(assert true)
(define-const var837 String (append/672562846 var2237 var1312)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2237!1 String)
(assert (= var2237!1 (str.++ var2237 var1312)))
(assert true)
(define-const var2545 String (append/672562846 var837 " tab=")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=") 
(declare-const var837!1 String)
(assert (= var837!1 (str.++ var837 " tab=")))
(define-const var484 var159 (filter/-1666671902 var3616!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var3156 var3933 (getTab/-1695400603 var484)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>() 
(assert true)
(define-const var3662 String (getValue/-1445752687 (cast-from-var3933-to-var3696 var3156))) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var2908 String (append/672562846 var2545 var3662)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2545!1 String)
(assert (= var2545!1 (str.++ var2545 var3662)))
(assert true)
(define-const var2480 String (append/672562846 var2908 " eof=")) ; Statement: $r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=") 
(declare-const var2908!1 String)
(assert (= var2908!1 (str.++ var2908 " eof=")))
(define-const var3442 var159 (filter/-1666671902 var3616!1)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1034 var3933 (getEof/-2111789410 var3442)) ; Statement: $r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>() 
(assert true)
(define-const var2087 String (getValue/-1445752687 (cast-from-var3933-to-var3696 var1034))) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var886 String (append/672562846 var2480 var2087)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2480!1 String)
(assert (= var2480!1 (str.++ var2480 var2087)))
(assert true)
(define-const var3746 String (append/672562846 var886 " tablength=")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=") 
(declare-const var886!1 String)
(assert (= var886!1 (str.++ var886 " tablength=")))
(define-const var25 var159 (filter/-1666671902 var3616!1)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var2900 Int (getTablength/-1292603039 var25)) ; Statement: $i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>() 
(assert true)
(define-const var2017 String (append/-1001720160 var3746 var2900)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3746!1 String)
(assert (str.prefixof var3746 var3746!1))
(assert true)
(define-const var1789 String (append/672562846 var2017 " encoding=")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=") 
(declare-const var2017!1 String)
(assert (= var2017!1 (str.++ var2017 " encoding=")))
(assert true)
(define-const var3027 String (append/672562846 var1789 var3316)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var1789!1 String)
(assert (= var1789!1 (str.++ var1789 var3316)))
(assert true)
(define-const var384 String (append/672562846 var3027 " outputencoding=")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=") 
(declare-const var3027!1 String)
(assert (= var3027!1 (str.++ var3027 " outputencoding=")))
(define-const var534 String (outputEncoding/-1666671902 var3616!1)) ; Statement: $r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
 ; Statement: if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
(assert (not (not (= var534 null-String)))) ; Negate: Cond: $r23 != null  
(define-const var2383 String var3316) ; Statement: $r32 = $r31 
 ; Statement: goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32)] 
(assert true) ; Non Conditional
(assert true)
(define-const var531 String (append/672562846 var384 var2383)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var384!1 String)
(assert (= var384!1 (str.++ var384 var2383)))
(assert true)
(define-const var646 String (toString/-2075883882 var531)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2437-to-var3842 var3616!1) var646 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3) 

(declare-const var3616!2 var2437)
(declare-const var646!1 String)
(declare-const var638 Int)
(define-const var2864 var3099 (srcDir/-1666671902 var3616!2)) ; Statement: $r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir> 
(assert true)
(define-const var2191 var3571 (getDirectoryScanner/-1384636098 (cast-from-var2437-to-var1232 var3616!2) var2864)) ; Statement: $r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27) 
(assert true)
(define-const var3837 (Array Int String) (getIncludedFiles/1141601209 var2191)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>() 
(define-const var2023 Int (getLength-Arr-String-1 var3837)) ; Statement: $i1 = lengthof $r30 
(define-const var2631 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var2631 var2023)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-1586750009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], void), encoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filter/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter), getEol/833373716=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var2402-to-var3696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getTab/-1695400603=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), cast-from-var3933-to-var3696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getEof/-2111789410=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), getTablength/-1292603039=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), outputEncoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2437-to-var3842=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), srcDir/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.io.File), getDirectoryScanner/-1384636098=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, java.io.File], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner), cast-from-var2437-to-var1232=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask), getIncludedFiles/1141601209=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2437=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var3616=r0, var2730=$r1, var2382=null_type, var3316=$r31, var3467=$r2, var2237=$r6, var159=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter, var1129=$r3, var2402=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf, var603=$r4, var3696=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var1312=$r5, var837=$r7, var2545=$r11, var484=$r8, var3933=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove, var3156=$r9, var3662=$r10, var2908=$r12, var2480=$r16, var3442=$r13, var1034=$r14, var2087=$r15, var886=$r17, var3746=$r19, var25=$r18, var2900=$i0, var2017=$r20, var1789=$r21, var3027=$r22, var384=$r24, var534=$r23, var2383=$r32, var531=$r25, var646=$r26, var3842=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var638=3, var3099=java.io.File, var2864=$r27, var3571=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var1232=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, var2191=$r29, var3837=$r30, var2023=$i1, var2631=i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var2437, r0=var3616, $r1=var2730, null_type=var2382, $r31=var3316, $r2=var3467, $r6=var2237, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter=var159, $r3=var1129, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf=var2402, $r4=var603, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3696, $r5=var1312, $r7=var837, $r11=var2545, $r8=var484, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove=var3933, $r9=var3156, $r10=var3662, $r12=var2908, $r16=var2480, $r13=var3442, $r14=var1034, $r15=var2087, $r17=var886, $r19=var3746, $r18=var25, $i0=var2900, $r20=var2017, $r21=var1789, $r22=var3027, $r24=var384, $r23=var534, $r32=var2383, $r25=var531, $r26=var646, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3842, 3=var638, java.io.File=var3099, $r27=var2864, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var3571, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask=var1232, $r29=var2191, $r30=var3837, $i1=var2023, i2=var2631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	$r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=");	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>();	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=");	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>();	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=");	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=");	$r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	$r32 = $r31;	goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32)];	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3);	$r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir>;	$r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27);	$r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>();	$i1 = lengthof $r30;	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 7