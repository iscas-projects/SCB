(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1575 0)
(declare-sort var1927 0)
(declare-sort var144 0)
(declare-sort var1855 0)
(declare-sort var1935 0)
(declare-sort var313 0)
(declare-sort var1370 0)
(declare-sort var3798 0)
(declare-sort var2863 0)
(declare-sort var32 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-1586750009 (var1575) void)
(declare-fun encoding/-1666671902 (var1575) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filter/-1666671902 (var1575) var144)
(declare-fun getEol/833373716 (var144) var1855)
(declare-fun getValue/-1445752687 (var1935) String)
(declare-fun cast-from-var1855-to-var1935 (var1855) var1935)
(declare-fun getTab/-1695400603 (var144) var313)
(declare-fun cast-from-var313-to-var1935 (var313) var1935)
(declare-fun getEof/-2111789410 (var144) var313)
(declare-fun getTablength/-1292603039 (var144) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun outputEncoding/-1666671902 (var1575) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1370 String Int) void)
(declare-fun cast-from-var1575-to-var1370 (var1575) var1370)
(declare-fun srcDir/-1666671902 (var1575) var3798)
(declare-fun getDirectoryScanner/-1384636098 (var32 var3798) var2863)
(declare-fun cast-from-var1575-to-var32 (var1575) var32)
(declare-fun getIncludedFiles/1141601209 (var2863) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1575 var1575)
(declare-const null-String String)
(declare-const var2456 var1575) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF 
(assert (not (= var2456 null-var1575)))
(assert true)
;(assert (validate/-1586750009 var2456)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>() 

(declare-const var2456!1 var1575)
(define-const var3183 String (encoding/-1666671902 var2456!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
 ; Statement: if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
(assert (not (= var3183 null-String))) ; Cond: $r1 != null 
(define-const var1724 String (encoding/-1666671902 var2456!1)) ; Statement: $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
(assert true) ; Non Conditional
(define-const var2170 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2170)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2170!1 String)
(assert (= var2170!1 ""))
(assert true)
(define-const var628 String (append/672562846 var2170!1 "options: eol=")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=") 
(declare-const var2170!2 String)
(assert (= var2170!2 (str.++ var2170!1 "options: eol=")))
(define-const var3507 var144 (filter/-1666671902 var2456!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1431 var1855 (getEol/833373716 var3507)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>() 
(assert true)
(define-const var1027 String (getValue/-1445752687 (cast-from-var1855-to-var1935 var1431))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>() 
(assert true)
(define-const var1726 String (append/672562846 var628 var1027)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var628!1 String)
(assert (= var628!1 (str.++ var628 var1027)))
(assert true)
(define-const var1851 String (append/672562846 var1726 " tab=")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=") 
(declare-const var1726!1 String)
(assert (= var1726!1 (str.++ var1726 " tab=")))
(define-const var3899 var144 (filter/-1666671902 var2456!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var2880 var313 (getTab/-1695400603 var3899)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>() 
(assert true)
(define-const var2492 String (getValue/-1445752687 (cast-from-var313-to-var1935 var2880))) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var3750 String (append/672562846 var1851 var2492)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1851!1 String)
(assert (= var1851!1 (str.++ var1851 var2492)))
(assert true)
(define-const var996 String (append/672562846 var3750 " eof=")) ; Statement: $r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=") 
(declare-const var3750!1 String)
(assert (= var3750!1 (str.++ var3750 " eof=")))
(define-const var127 var144 (filter/-1666671902 var2456!1)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var540 var313 (getEof/-2111789410 var127)) ; Statement: $r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>() 
(assert true)
(define-const var3692 String (getValue/-1445752687 (cast-from-var313-to-var1935 var540))) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var2631 String (append/672562846 var996 var3692)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var996!1 String)
(assert (= var996!1 (str.++ var996 var3692)))
(assert true)
(define-const var1960 String (append/672562846 var2631 " tablength=")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=") 
(declare-const var2631!1 String)
(assert (= var2631!1 (str.++ var2631 " tablength=")))
(define-const var813 var144 (filter/-1666671902 var2456!1)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1626 Int (getTablength/-1292603039 var813)) ; Statement: $i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>() 
(assert true)
(define-const var1991 String (append/-1001720160 var1960 var1626)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1960!1 String)
(assert (str.prefixof var1960 var1960!1))
(assert true)
(define-const var2817 String (append/672562846 var1991 " encoding=")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=") 
(declare-const var1991!1 String)
(assert (= var1991!1 (str.++ var1991 " encoding=")))
(assert true)
(define-const var1569 String (append/672562846 var2817 var1724)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var2817!1 String)
(assert (= var2817!1 (str.++ var2817 var1724)))
(assert true)
(define-const var3171 String (append/672562846 var1569 " outputencoding=")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=") 
(declare-const var1569!1 String)
(assert (= var1569!1 (str.++ var1569 " outputencoding=")))
(define-const var434 String (outputEncoding/-1666671902 var2456!1)) ; Statement: $r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
 ; Statement: if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
(assert (not (= var434 null-String))) ; Cond: $r23 != null 
(define-const var1253 String (outputEncoding/-1666671902 var2456!1)) ; Statement: $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
(assert true) ; Non Conditional
(assert true)
(define-const var3374 String (append/672562846 var3171 var1253)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var3171!1 String)
(assert (= var3171!1 (str.++ var3171 var1253)))
(assert true)
(define-const var2006 String (toString/-2075883882 var3374)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1575-to-var1370 var2456!1) var2006 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3) 

(declare-const var2456!2 var1575)
(declare-const var2006!1 String)
(declare-const var3176 Int)
(define-const var1644 var3798 (srcDir/-1666671902 var2456!2)) ; Statement: $r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir> 
(assert true)
(define-const var1303 var2863 (getDirectoryScanner/-1384636098 (cast-from-var1575-to-var32 var2456!2) var1644)) ; Statement: $r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27) 
(assert true)
(define-const var543 (Array Int String) (getIncludedFiles/1141601209 var1303)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>() 
(define-const var3608 Int (getLength-Arr-String-1 var543)) ; Statement: $i1 = lengthof $r30 
(define-const var3595 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var3595 var3608)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-1586750009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], void), encoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filter/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter), getEol/833373716=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var1855-to-var1935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getTab/-1695400603=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), cast-from-var313-to-var1935=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getEof/-2111789410=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), getTablength/-1292603039=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), outputEncoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1575-to-var1370=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), srcDir/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.io.File), getDirectoryScanner/-1384636098=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, java.io.File], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner), cast-from-var1575-to-var32=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask), getIncludedFiles/1141601209=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1575=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var2456=r0, var3183=$r1, var1927=null_type, var1724=$r31, var2170=$r2, var628=$r6, var144=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter, var3507=$r3, var1855=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf, var1431=$r4, var1935=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var1027=$r5, var1726=$r7, var1851=$r11, var3899=$r8, var313=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove, var2880=$r9, var2492=$r10, var3750=$r12, var996=$r16, var127=$r13, var540=$r14, var3692=$r15, var2631=$r17, var1960=$r19, var813=$r18, var1626=$i0, var1991=$r20, var2817=$r21, var1569=$r22, var3171=$r24, var434=$r23, var1253=$r32, var3374=$r25, var2006=$r26, var1370=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3176=3, var3798=java.io.File, var1644=$r27, var2863=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var32=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, var1303=$r29, var543=$r30, var3608=$i1, var3595=i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var1575, r0=var2456, $r1=var3183, null_type=var1927, $r31=var1724, $r2=var2170, $r6=var628, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter=var144, $r3=var3507, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf=var1855, $r4=var1431, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1935, $r5=var1027, $r7=var1726, $r11=var1851, $r8=var3899, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove=var313, $r9=var2880, $r10=var2492, $r12=var3750, $r16=var996, $r13=var127, $r14=var540, $r15=var3692, $r17=var2631, $r19=var1960, $r18=var813, $i0=var1626, $r20=var1991, $r21=var2817, $r22=var1569, $r24=var3171, $r23=var434, $r32=var1253, $r25=var3374, $r26=var2006, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1370, 3=var3176, java.io.File=var3798, $r27=var1644, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var2863, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask=var32, $r29=var1303, $r30=var543, $i1=var3608, i2=var3595}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	$r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=");	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>();	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=");	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>();	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=");	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=");	$r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	$r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3);	$r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir>;	$r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27);	$r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>();	$i1 = lengthof $r30;	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 7