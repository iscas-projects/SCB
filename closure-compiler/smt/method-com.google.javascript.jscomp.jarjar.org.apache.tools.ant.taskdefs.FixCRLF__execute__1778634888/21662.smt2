(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var144 0)
(declare-sort var1807 0)
(declare-sort var3108 0)
(declare-sort var605 0)
(declare-sort var2804 0)
(declare-sort var112 0)
(declare-sort var1810 0)
(declare-sort var2916 0)
(declare-sort var186 0)
(declare-sort var3348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-1586750009 (var144) void)
(declare-fun encoding/-1666671902 (var144) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filter/-1666671902 (var144) var3108)
(declare-fun getEol/833373716 (var3108) var605)
(declare-fun getValue/-1445752687 (var2804) String)
(declare-fun cast-from-var605-to-var2804 (var605) var2804)
(declare-fun getTab/-1695400603 (var3108) var112)
(declare-fun cast-from-var112-to-var2804 (var112) var2804)
(declare-fun getEof/-2111789410 (var3108) var112)
(declare-fun getTablength/-1292603039 (var3108) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun outputEncoding/-1666671902 (var144) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1810 String Int) void)
(declare-fun cast-from-var144-to-var1810 (var144) var1810)
(declare-fun srcDir/-1666671902 (var144) var2916)
(declare-fun getDirectoryScanner/-1384636098 (var3348 var2916) var186)
(declare-fun cast-from-var144-to-var3348 (var144) var3348)
(declare-fun getIncludedFiles/1141601209 (var186) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var144 var144)
(declare-const null-String String)
(declare-const var1304 var144) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF 
(assert (not (= var1304 null-var144)))
(assert true)
;(assert (validate/-1586750009 var1304)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>() 

(declare-const var1304!1 var144)
(define-const var47 String (encoding/-1666671902 var1304!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
 ; Statement: if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding> 
(assert (not (not (= var47 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var703 String "default") ; Statement: $r31 = "default" 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1206 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1206)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1206!1 String)
(assert (= var1206!1 ""))
(assert true)
(define-const var2108 String (append/672562846 var1206!1 "options: eol=")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=") 
(declare-const var1206!2 String)
(assert (= var1206!2 (str.++ var1206!1 "options: eol=")))
(define-const var1517 var3108 (filter/-1666671902 var1304!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1823 var605 (getEol/833373716 var1517)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>() 
(assert true)
(define-const var1651 String (getValue/-1445752687 (cast-from-var605-to-var2804 var1823))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>() 
(assert true)
(define-const var1209 String (append/672562846 var2108 var1651)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2108!1 String)
(assert (= var2108!1 (str.++ var2108 var1651)))
(assert true)
(define-const var81 String (append/672562846 var1209 " tab=")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=") 
(declare-const var1209!1 String)
(assert (= var1209!1 (str.++ var1209 " tab=")))
(define-const var3721 var3108 (filter/-1666671902 var1304!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1333 var112 (getTab/-1695400603 var3721)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>() 
(assert true)
(define-const var1738 String (getValue/-1445752687 (cast-from-var112-to-var2804 var1333))) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var2449 String (append/672562846 var81 var1738)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var81!1 String)
(assert (= var81!1 (str.++ var81 var1738)))
(assert true)
(define-const var1034 String (append/672562846 var2449 " eof=")) ; Statement: $r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=") 
(declare-const var2449!1 String)
(assert (= var2449!1 (str.++ var2449 " eof=")))
(define-const var1606 var3108 (filter/-1666671902 var1304!1)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var3984 var112 (getEof/-2111789410 var1606)) ; Statement: $r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>() 
(assert true)
(define-const var3875 String (getValue/-1445752687 (cast-from-var112-to-var2804 var3984))) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>() 
(assert true)
(define-const var305 String (append/672562846 var1034 var3875)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1034!1 String)
(assert (= var1034!1 (str.++ var1034 var3875)))
(assert true)
(define-const var3923 String (append/672562846 var305 " tablength=")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=") 
(declare-const var305!1 String)
(assert (= var305!1 (str.++ var305 " tablength=")))
(define-const var3347 var3108 (filter/-1666671902 var1304!1)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter> 
(assert true)
(define-const var1351 Int (getTablength/-1292603039 var3347)) ; Statement: $i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>() 
(assert true)
(define-const var2753 String (append/-1001720160 var3923 var1351)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3923!1 String)
(assert (str.prefixof var3923 var3923!1))
(assert true)
(define-const var1276 String (append/672562846 var2753 " encoding=")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=") 
(declare-const var2753!1 String)
(assert (= var2753!1 (str.++ var2753 " encoding=")))
(assert true)
(define-const var1305 String (append/672562846 var1276 var703)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31) 
(declare-const var1276!1 String)
(assert (= var1276!1 (str.++ var1276 var703)))
(assert true)
(define-const var3889 String (append/672562846 var1305 " outputencoding=")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=") 
(declare-const var1305!1 String)
(assert (= var1305!1 (str.++ var1305 " outputencoding=")))
(define-const var1733 String (outputEncoding/-1666671902 var1304!1)) ; Statement: $r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
 ; Statement: if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding> 
(assert (not (not (= var1733 null-String)))) ; Negate: Cond: $r23 != null  
(define-const var3967 String var703) ; Statement: $r32 = $r31 
 ; Statement: goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1742 String (append/672562846 var3889 var3967)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var3889!1 String)
(assert (= var3889!1 (str.++ var3889 var3967)))
(assert true)
(define-const var784 String (toString/-2075883882 var1742)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var144-to-var1810 var1304!1) var784 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3) 

(declare-const var1304!2 var144)
(declare-const var784!1 String)
(declare-const var2723 Int)
(define-const var85 var2916 (srcDir/-1666671902 var1304!2)) ; Statement: $r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir> 
(assert true)
(define-const var131 var186 (getDirectoryScanner/-1384636098 (cast-from-var144-to-var3348 var1304!2) var85)) ; Statement: $r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27) 
(assert true)
(define-const var540 (Array Int String) (getIncludedFiles/1141601209 var131)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>() 
(define-const var3632 Int (getLength-Arr-String-1 var540)) ; Statement: $i1 = lengthof $r30 
(define-const var814 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var814 var3632)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-1586750009=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], void), encoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), filter/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter), getEol/833373716=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var605-to-var2804=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getTab/-1695400603=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), cast-from-var112-to-var2804=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), getEof/-2111789410=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove), getTablength/-1292603039=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), outputEncoding/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var144-to-var1810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), srcDir/-1666671902=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], java.io.File), getDirectoryScanner/-1384636098=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, java.io.File], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner), cast-from-var144-to-var3348=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask), getIncludedFiles/1141601209=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var144=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF, var1304=r0, var47=$r1, var1807=null_type, var703=$r31, var1206=$r2, var2108=$r6, var3108=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter, var1517=$r3, var605=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf, var1823=$r4, var2804=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var1651=$r5, var1209=$r7, var81=$r11, var3721=$r8, var112=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove, var1333=$r9, var1738=$r10, var2449=$r12, var1034=$r16, var1606=$r13, var3984=$r14, var3875=$r15, var305=$r17, var3923=$r19, var3347=$r18, var1351=$i0, var2753=$r20, var1276=$r21, var1305=$r22, var3889=$r24, var1733=$r23, var3967=$r32, var1742=$r25, var784=$r26, var1810=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2723=3, var2916=java.io.File, var85=$r27, var186=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner, var3348=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask, var131=$r29, var540=$r30, var3632=$i1, var814=i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF=var144, r0=var1304, $r1=var47, null_type=var1807, $r31=var703, $r2=var1206, $r6=var2108, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter=var3108, $r3=var1517, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf=var605, $r4=var1823, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2804, $r5=var1651, $r7=var1209, $r11=var81, $r8=var3721, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove=var112, $r9=var1333, $r10=var1738, $r12=var2449, $r16=var1034, $r13=var1606, $r14=var3984, $r15=var3875, $r17=var305, $r19=var3923, $r18=var3347, $i0=var1351, $r20=var2753, $r21=var1276, $r22=var1305, $r24=var3889, $r23=var1733, $r32=var3967, $r25=var1742, $r26=var784, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1810, 3=var2723, java.io.File=var2916, $r27=var85, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner=var186, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask=var3348, $r29=var131, $r30=var540, $i1=var3632, i2=var814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	if $r1 != null goto $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String encoding>;	$r31 = "default";	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("options: eol=");	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf getEol()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$CrLf: java.lang.String getValue()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tab=");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getTab()>();	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" eof=");	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove getEof()>();	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter$AddAsisRemove: java.lang.String getValue()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tablength=");	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter filter>;	$i0 = virtualinvoke $r18.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.FixCrLfFilter: int getTablength()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" encoding=");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r31);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" outputencoding=");	$r23 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	if $r23 != null goto $r32 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.lang.String outputEncoding>;	$r32 = $r31;	goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32)];	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: void log(java.lang.String,int)>($r26, 3);	$r27 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF: java.io.File srcDir>;	$r29 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MatchingTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner getDirectoryScanner(java.io.File)>($r27);	$r30 = virtualinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DirectoryScanner: java.lang.String[] getIncludedFiles()>();	$i1 = lengthof $r30;	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 7