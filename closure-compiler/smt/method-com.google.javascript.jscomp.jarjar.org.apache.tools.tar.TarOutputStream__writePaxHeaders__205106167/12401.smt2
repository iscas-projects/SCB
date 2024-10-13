(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3809 0)
(declare-sort var463 0)
(declare-sort var3467 0)
(declare-sort var2735 0)
(declare-sort var2416 0)
(declare-sort var2052 0)
(declare-sort var9 0)
(declare-sort var3078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun stripTo7Bits/346570084 (var3809 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var463-init () var463)
(declare-fun <init>/1608700610 (var463 String Int) void)
(declare-fun transferModTime/-2091339748 (var3809 var463 var463) void)
(declare-fun var2416-init () var2416)
(declare-fun <init>/358169345 (var2416) void)
(declare-fun var2735_entrySet/1101202697 (var2735) var2052)
(declare-fun var2052_iterator/1911472585 (var2052) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun toString/138175384 (var2416) String)
(declare-fun getBytes/-163691139 (String var9) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun setSize/-1600385014 (var463 Int) void)
(declare-fun putNextEntry/-1922519792 (var3809 var463) void)
(declare-fun write/-895978995 (var3809 (Array Int Int)) void)
(declare-fun closeEntry/-1139295906 (var3809) void)
(declare-const null-var3809 var3809)
(declare-const null-var463 var463)
(declare-const null-String String)
(declare-const null-var2735 var2735)
(declare-const var3078-UTF_8 var9)
(declare-const var136 var3809) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream 
(assert (not (= var136 null-var3809)))
(declare-const var788 var463) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (not (= var788 null-var463)))
(declare-const var1527 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1527 null-String)))
(declare-const var636 var2735) ; Statement: r9 := @parameter2: java.util.Map 
(assert (not (= var636 null-var2735)))
(define-const var3486 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3486)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3486!1 String)
(assert (= var3486!1 ""))
(assert true)
(define-const var1411 String (append/672562846 var3486!1 "./PaxHeaders.X/")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("./PaxHeaders.X/") 
(declare-const var3486!2 String)
(assert (= var3486!2 (str.++ var3486!1 "./PaxHeaders.X/")))
(assert true)
(define-const var315 String (stripTo7Bits/346570084 var136 var1527)) ; Statement: $r3 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: java.lang.String stripTo7Bits(java.lang.String)>(r2) 
(assert true)
(define-const var2541 String (append/672562846 var1411 var315)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1411!1 String)
(assert (= var1411!1 (str.++ var1411 var315)))
(assert true)
(define-const var376 String (toString/-2075883882 var2541)) ; Statement: r37 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2833 Int (length/-134980193 var376)) ; Statement: $i0 = virtualinvoke r37.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 100 goto $z1 = virtualinvoke r37.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert (< var2833 100)) ; Cond: $i0 < 100 
(assert true)
(define-const var983 Bool (endsWith/985337093 var376 "/")) ; Statement: $z1 = virtualinvoke r37.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z1 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert (= (ite var983 1 0) 0)) ; Cond: $z1 == 0 
(define-const var89 var463 var463-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry 
(assert true)
;(assert (<init>/1608700610 var89 var376 120)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>(java.lang.String,byte)>(r37, 120) 

(declare-const var89!1 var463)
(declare-const var376!1 String)
(declare-const var1472 Int)
(assert true)
;(assert (transferModTime/-2091339748 var136 var788 var89!1)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void transferModTime(com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry,com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry)>(r7, $r6) 

(declare-const var136!1 var3809)
(declare-const var788!1 var463)
(declare-const var89!2 var463)
(define-const var1232 var2416 var2416-init) ; Statement: $r8 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var1232)) ; Statement: specialinvoke $r8.<java.io.StringWriter: void <init>()>() 

(declare-const var1232!1 var2416)
(define-const var2689 var2052 (var2735_entrySet/1101202697 var636)) ; Statement: $r10 = interfaceinvoke r9.<java.util.Map: java.util.Set entrySet()>() 
(define-const var3831 Iterator (var2052_iterator/1911472585 var2689)) ; Statement: r38 = interfaceinvoke $r10.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var762 Bool (Iterator_hasNext/-1669924200 var3831)) ; Statement: $z0 = interfaceinvoke r38.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r12 = virtualinvoke $r8.<java.io.StringWriter: java.lang.String toString()>() 
(assert (= (ite var762 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var649 String (toString/138175384 var1232!1)) ; Statement: $r12 = virtualinvoke $r8.<java.io.StringWriter: java.lang.String toString()>() 
(define-const var827 var9 var3078-UTF_8) ; Statement: $r11 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var349 (Array Int Int) (getBytes/-163691139 var649 var827)) ; Statement: r40 = virtualinvoke $r12.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r11) 
(define-const var1042 Int (getLength-Arr-Int-1 var349)) ; Statement: $i1 = lengthof r40 
(define-const var3673 Int (cast-from-Int-to-Int var1042)) ; Statement: $l2 = (long) $i1 
(assert true)
;(assert (setSize/-1600385014 var89!2 var3673)) ; Statement: virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void setSize(long)>($l2) 

(declare-const var89!3 var463)
(declare-const var3673!1 Int)
(assert true)
;(assert (putNextEntry/-1922519792 var136!1 var89!3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void putNextEntry(com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry)>($r6) 

(declare-const var136!2 var3809)
(declare-const var89!4 var463)
(assert true)
;(assert (write/-895978995 var136!2 var349)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void write(byte[])>(r40) 

(declare-const var136!3 var3809)
(declare-const var349!1 (Array Int Int))
(assert true)
;(assert (closeEntry/-1139295906 var136!3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void closeEntry()>() 

(declare-const var136!4 var3809)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), stripTo7Bits/346570084=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var463-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry), <init>/1608700610=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, java.lang.String, byte], void), transferModTime/-2091339748=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], void), var2416-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), var2735_entrySet/1101202697=([java.util.Map], java.util.Set), var2052_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/138175384=([java.io.StringWriter], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int), cast-from-Int-to-Int=([int], long), setSize/-1600385014=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, long], void), putNextEntry/-1922519792=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry], void), write/-895978995=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, byte[]], void), closeEntry/-1139295906=([com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream], void)}
; {var3809=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, var136=r1, var463=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry, var788=r7, var1527=r2, var3467=null_type, var2735=java.util.Map, var636=r9, var3486=$r0, var1411=$r4, var315=$r3, var2541=$r5, var376=r37, var2833=$i0, var983=$z1, var89=$r6, var1472=120, var2416=java.io.StringWriter, var1232=$r8, var2052=java.util.Set, var2689=$r10, var3831=r38, var762=$z0, var649=$r12, var9=java.nio.charset.Charset, var3078=java.nio.charset.StandardCharsets, var827=$r11, var349=r40, var1042=$i1, var3673=$l2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream=var3809, r1=var136, com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry=var463, r7=var788, r2=var1527, null_type=var3467, java.util.Map=var2735, r9=var636, $r0=var3486, $r4=var1411, $r3=var315, $r5=var2541, r37=var376, $i0=var2833, $z1=var983, $r6=var89, 120=var1472, java.io.StringWriter=var2416, $r8=var1232, java.util.Set=var2052, $r10=var2689, r38=var3831, $z0=var762, $r12=var649, java.nio.charset.Charset=var9, java.nio.charset.StandardCharsets=var3078, $r11=var827, r40=var349, $i1=var1042, $l2=var3673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.io.StringWriter: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	r2 := @parameter1: java.lang.String;	r9 := @parameter2: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("./PaxHeaders.X/");	$r3 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: java.lang.String stripTo7Bits(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	r37 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke r37.<java.lang.String: int length()>();	if $i0 < 100 goto $z1 = virtualinvoke r37.<java.lang.String: boolean endsWith(java.lang.String)>("/");	$z1 = virtualinvoke r37.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z1 == 0 goto $r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	$r6 = new com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void <init>(java.lang.String,byte)>(r37, 120);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void transferModTime(com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry,com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry)>(r7, $r6);	$r8 = new java.io.StringWriter;	specialinvoke $r8.<java.io.StringWriter: void <init>()>();	$r10 = interfaceinvoke r9.<java.util.Map: java.util.Set entrySet()>();	r38 = interfaceinvoke $r10.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r38.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r12 = virtualinvoke $r8.<java.io.StringWriter: java.lang.String toString()>();	$r12 = virtualinvoke $r8.<java.io.StringWriter: java.lang.String toString()>();	$r11 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	r40 = virtualinvoke $r12.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r11);	$i1 = lengthof r40;	$l2 = (long) $i1;	virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry: void setSize(long)>($l2);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void putNextEntry(com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarEntry)>($r6);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void write(byte[])>(r40);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream: void closeEntry()>();	return
;block_num 5