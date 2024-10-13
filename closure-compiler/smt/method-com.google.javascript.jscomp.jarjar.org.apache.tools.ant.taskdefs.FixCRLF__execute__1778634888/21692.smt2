(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3102 0)
(declare-sort var563 0)
(declare-sort var145 0)
(declare-sort var2500 0)
(declare-sort var2570 0)
(declare-sort var3951 0)
(declare-sort var3044 0)
(declare-sort var589 0)
(declare-sort var1688 0)
(declare-sort var2506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-1586750009 (var3102) void)
(declare-fun encoding/-1666671902 (var3102) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filter/-1666671902 (var3102) var145)
(declare-fun getEol/833373716 (var145) var2500)
(declare-fun getValue/-1445752687 (var2570) String)
(declare-fun cast-from-var2500-to-var2570 (var2500) var2570)
(declare-fun getTab/-1695400603 (var145) var3951)
(declare-fun cast-from-var3951-to-var2570 (var3951) var2570)
(declare-fun getEof/-2111789410 (var145) var3951)
(declare-fun getTablength/-1292603039 (var145) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun outputEncoding/-1666671902 (var3102) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3044 String Int) void)
(declare-fun cast-from-var3102-to-var3044 (var3102) var3044)
(declare-fun srcDir/-1666671902 (var3102) var589)
(declare-fun getDirectoryScanner/-1384636098 (var2506 var589) var1688)
(declare-fun cast-from-var3102-to-var2506 (var3102) var2506)
(declare-fun getIncludedFiles/1141601209 (var1688) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3102 var3102)
(declare-const null-String String)
(declare-const var1938 var3102) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF 
(assert (not (= var1938 null-var3102)))
(assert true)
;(assert (validate/-1586750009 var1938)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>() 

(declare-const var1938!1 var3102)
(define-const var1957 String (encoding/-1666671902 var1938!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
 ; Statement: if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
(assert (not (not (= var1957 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2828 String "default") ; Statement: $r31 = "default" 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3535 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3535)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3535!1 String)
(assert (= var3535!1 ""))
(assert true)
(define-const var1294 String (append/672562846 var3535!1 "options: eol=")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=") 
(declare-const var3535!2 String)
(assert (= var3535!2 (str.++ var3535!1 "options: eol=")))
(define-const var1313 var145 (filter/-1666671902 var1938!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var2402 var2500 (getEol/833373716 var1313)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>() 
(assert true)
(define-const var700 String (getValue/-1445752687 (cast-from-var2500-to-var2570 var2402))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>() 
(assert true)
(define-const var2342 String (append/672562846 var1294 var700)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1294!1 String)
(assert (= var1294!1 (str.++ var1294 var700)))
(assert true)
(define-const var1363 String (append/672562846 var2342 " tab=")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=") 
(declare-const var2342!1 String)
(assert (= var2342!1 (str.++ var2342 " tab=")))
(define-const var337 var145 (filter/-1666671902 var1938!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1389 var3951 (getTab/-1695400603 var337)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>() 
(assert true)
(define-const var2586 String (getValue/-1445752687 (cast-from-var3951-to-var2570 var1389))) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var987 String (append/672562846 var1363 var2586)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1363!1 String)
(assert (= var1363!1 (str.++ var1363 var2586)))
(assert true)
(define-const var1440 String (append/672562846 var987 " eof=")) ; Statement: $r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=") 
(declare-const var987!1 String)
(assert (= var987!1 (str.++ var987 " eof=")))
(define-const var3099 var145 (filter/-1666671902 var1938!1)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1941 var3951 (getEof/-2111789410 var3099)) ; Statement: $r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>() 
(assert true)
(define-const var1767 String (getValue/-1445752687 (cast-from-var3951-to-var2570 var1941))) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var1863 String (append/672562846 var1440 var1767)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1440!1 String)
(assert (= var1440!1 (str.++ var1440 var1767)))
(assert true)
(define-const var3396 String (append/672562846 var1863 " tablength=")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=") 
(declare-const var1863!1 String)
(assert (= var1863!1 (str.++ var1863 " tablength=")))
(define-const var2600 var145 (filter/-1666671902 var1938!1)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var240 Int (getTablength/-1292603039 var2600)) ; Statement: $i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>() 
(assert true)
(define-const var601 String (append/-1001720160 var3396 var240)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3396!1 String)
(assert (str.prefixof var3396 var3396!1))
(assert true)
(define-const var2754 String (append/672562846 var601 " encoding=")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=") 
(declare-const var601!1 String)
(assert (= var601!1 (str.++ var601 " encoding=")))
(assert true)
(define-const var555 String (append/672562846 var2754 var2828)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var2754!1 String)
(assert (= var2754!1 (str.++ var2754 var2828)))
(assert true)
(define-const var2067 String (append/672562846 var555 " outputencoding=")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=") 
(declare-const var555!1 String)
(assert (= var555!1 (str.++ var555 " outputencoding=")))
(define-const var2838 String (outputEncoding/-1666671902 var1938!1)) ; Statement: $r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
 ; Statement: if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
(assert (not (= var2838 null-String))) ; Cond: $r23 != null 
(define-const var1521 String (outputEncoding/-1666671902 var1938!1)) ; Statement: $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
(assert true) ; Non Conditional
(assert true)
(define-const var2492 String (append/672562846 var2067 var1521)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var2067!1 String)
(assert (= var2067!1 (str.++ var2067 var1521)))
(assert true)
(define-const var2055 String (toString/-2075883882 var2492)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3102-to-var3044 var1938!1) var2055 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3) 

(declare-const var1938!2 var3102)
(declare-const var2055!1 String)
(declare-const var2555 Int)
(define-const var2800 var589 (srcDir/-1666671902 var1938!2)) ; Statement: $r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir> 
(assert true)
(define-const var2671 var1688 (getDirectoryScanner/-1384636098 (cast-from-var3102-to-var2506 var1938!2) var2800)) ; Statement: $r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27) 
(assert true)
(define-const var1526 (Array Int String) (getIncludedFiles/1141601209 var2671)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>() 
(define-const var693 Int (getLength-Arr-String-1 var1526)) ; Statement: $i1 = lengthof $r30 
(define-const var3870 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var3870 var693)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-1586750009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], void), encoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filter/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter), getEol/833373716=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var2500-to-var2570=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getTab/-1695400603=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), cast-from-var3951-to-var2570=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getEof/-2111789410=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), getTablength/-1292603039=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), outputEncoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3102-to-var3044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), srcDir/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.io.File), getDirectoryScanner/-1384636098=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, java.io.File], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner), cast-from-var3102-to-var2506=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask), getIncludedFiles/1141601209=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3102=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var1938=r0, var1957=$r1, var563=null_type, var2828=$r31, var3535=$r2, var1294=$r6, var145=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter, var1313=$r3, var2500=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf, var2402=$r4, var2570=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var700=$r5, var2342=$r7, var1363=$r11, var337=$r8, var3951=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove, var1389=$r9, var2586=$r10, var987=$r12, var1440=$r16, var3099=$r13, var1941=$r14, var1767=$r15, var1863=$r17, var3396=$r19, var2600=$r18, var240=$i0, var601=$r20, var2754=$r21, var555=$r22, var2067=$r24, var2838=$r23, var1521=$r32, var2492=$r25, var2055=$r26, var3044=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2555=3, var589=java.io.File, var2800=$r27, var1688=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var2506=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, var2671=$r29, var1526=$r30, var693=$i1, var3870=i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var3102, r0=var1938, $r1=var1957, null_type=var563, $r31=var2828, $r2=var3535, $r6=var1294, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter=var145, $r3=var1313, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf=var2500, $r4=var2402, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2570, $r5=var700, $r7=var2342, $r11=var1363, $r8=var337, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove=var3951, $r9=var1389, $r10=var2586, $r12=var987, $r16=var1440, $r13=var3099, $r14=var1941, $r15=var1767, $r17=var1863, $r19=var3396, $r18=var2600, $i0=var240, $r20=var601, $r21=var2754, $r22=var555, $r24=var2067, $r23=var2838, $r32=var1521, $r25=var2492, $r26=var2055, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3044, 3=var2555, java.io.File=var589, $r27=var2800, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var1688, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask=var2506, $r29=var2671, $r30=var1526, $i1=var693, i2=var3870}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	$r31 = "default";	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=");	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>();	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=");	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>();	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=");	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=");	$r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	$r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3);	$r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir>;	$r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27);	$r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>();	$i1 = lengthof $r30;	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 7