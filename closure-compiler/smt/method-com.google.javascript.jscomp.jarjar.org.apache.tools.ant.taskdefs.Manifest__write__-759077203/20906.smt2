(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var503 0)
(declare-sort var2948 0)
(declare-sort var2677 0)
(declare-sort var1864 0)
(declare-sort var245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun manifestVersion/426877835 (var2331) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var503 String) void)
(declare-fun mainSection/426877835 (var2331) var2948)
(declare-fun getAttributeValue/1406019076 (var2948 String) String)
(declare-fun write/-750609266 (var2948 var503 Bool) void)
(declare-fun sections/426877835 (var2331) var1864)
(declare-fun var1864_keySet/-712633290 (var1864) var245)
(declare-fun var245_iterator/1911472585 (var245) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2331 var2331)
(declare-const null-var503 var503)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1617 var2331) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest 
(assert (not (= var1617 null-var2331)))
(declare-const var2683 var503) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var2683 null-var503)))
(declare-const var1828 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1828 null-Bool)))
(define-const var558 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var558)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var558!1 String)
(assert (= var558!1 ""))
(assert true)
(define-const var1053 String (append/672562846 var558!1 "Manifest-Version: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest-Version: ") 
(declare-const var558!2 String)
(assert (= var558!2 (str.++ var558!1 "Manifest-Version: ")))
(define-const var1084 String (manifestVersion/426877835 var1617)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String manifestVersion> 
(assert true)
(define-const var2177 String (append/672562846 var1053 var1084)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1053!1 String)
(assert (= var1053!1 (str.++ var1053 var1084)))
(assert true)
(define-const var3096 String (append/672562846 var2177 "\r\n")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var2177!1 String)
(assert (= var2177!1 (str.++ var2177 "\r\n")))
(assert true)
(define-const var2775 String (toString/-2075883882 var3096)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var2683 var2775)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r7) 

(declare-const var2683!1 var503)
(declare-const var2775!1 String)
(define-const var3165 var2948 (mainSection/426877835 var1617)) ; Statement: $r8 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section mainSection> 
(assert true)
(define-const var949 String (getAttributeValue/1406019076 var3165 "Signature-Version")) ; Statement: r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: java.lang.String getAttributeValue(java.lang.String)>("Signature-Version") 
 ; Statement: if r9 == null goto $r10 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section mainSection> 
(assert (= var949 null-String)) ; Cond: r9 == null 
(define-const var3658 var2948 (mainSection/426877835 var1617)) ; Statement: $r10 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section mainSection> 
(assert true)
;(assert (write/-750609266 var3658 var2683!1 var1828)) ; Statement: virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: void write(java.io.PrintWriter,boolean)>(r0, z0) 

(declare-const var3658!1 var2948)
(declare-const var2683!2 var503)
(declare-const var1828!1 Bool)
 ; Statement: if r9 == null goto $r23 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.util.Map sections> 
(assert (= var949 null-String)) ; Cond: r9 == null 
(define-const var936 var1864 (sections/426877835 var1617)) ; Statement: $r23 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.util.Map sections> 
(define-const var2741 var245 (var1864_keySet/-712633290 var936)) ; Statement: $r24 = interfaceinvoke $r23.<java.util.Map: java.util.Set keySet()>() 
(define-const var737 Iterator (var245_iterator/1911472585 var2741)) ; Statement: $r25 = interfaceinvoke $r24.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2442 Bool (Iterator_hasNext/-1669924200 var737)) ; Statement: $z1 = interfaceinvoke $r25.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2442 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), manifestVersion/426877835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), mainSection/426877835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section), getAttributeValue/1406019076=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, java.lang.String], java.lang.String), write/-750609266=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, java.io.PrintWriter, boolean], void), sections/426877835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest], java.util.Map), var1864_keySet/-712633290=([java.util.Map], java.util.Set), var245_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2331=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var1617=r2, var503=java.io.PrintWriter, var2683=r0, var1828=z0, var558=$r1, var1053=$r4, var1084=$r3, var2177=$r5, var3096=$r6, var2775=$r7, var2948=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, var3165=$r8, var949=r9, var2677=null_type, var3658=$r10, var1864=java.util.Map, var936=$r23, var245=java.util.Set, var2741=$r24, var737=$r25, var2442=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var2331, r2=var1617, java.io.PrintWriter=var503, r0=var2683, z0=var1828, $r1=var558, $r4=var1053, $r3=var1084, $r5=var2177, $r6=var3096, $r7=var2775, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section=var2948, $r8=var3165, r9=var949, null_type=var2677, $r10=var3658, java.util.Map=var1864, $r23=var936, java.util.Set=var245, $r24=var2741, $r25=var737, $z1=var2442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest;	r0 := @parameter0: java.io.PrintWriter;	z0 := @parameter1: boolean;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest-Version: ");	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.lang.String manifestVersion>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r7);	$r8 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section mainSection>;	r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: java.lang.String getAttributeValue(java.lang.String)>("Signature-Version");	if r9 == null goto $r10 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section mainSection>;	$r10 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section mainSection>;	virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: void write(java.io.PrintWriter,boolean)>(r0, z0);	if r9 == null goto $r23 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.util.Map sections>;	$r23 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: java.util.Map sections>;	$r24 = interfaceinvoke $r23.<java.util.Map: java.util.Set keySet()>();	$r25 = interfaceinvoke $r24.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r25.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 5