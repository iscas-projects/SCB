(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3088 0)
(declare-sort var1030 0)
(declare-sort var585 0)
(declare-sort var1382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1382-init () var1382)
(declare-fun dir/1944646166 (var3088) var1382)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDigest/-882756038 (var1030) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1382 var1382 String) void)
(declare-const null-var3088 var3088)
(declare-const null-var1030 var1030)
(declare-const null-String String)
(declare-const var1695 var3088) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore 
(assert (not (= var1695 null-var3088)))
(declare-const var3058 var1030) ; Statement: r4 := @parameter0: jdk.nashorn.internal.runtime.Source 
(assert (not (= var3058 null-var1030)))
(declare-const var1392 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1392 null-String)))
(define-const var1281 var1382 var1382-init) ; Statement: $r0 = new java.io.File 
(define-const var3176 var1382 (dir/1944646166 var1695)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore: java.io.File dir> 
(define-const var1981 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1981)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1981!1 String)
(assert (= var1981!1 ""))
(assert true)
(define-const var79 String (getDigest/-882756038 var3058)) ; Statement: $r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.Source: java.lang.String getDigest()>() 
(assert true)
(define-const var3415 String (append/672562846 var1981!1 var79)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1981!2 String)
(assert (= var1981!2 (str.++ var1981!1 var79)))
(assert true)
(define-const var384 String (append/-1166366385 var3415 45)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45) 
(declare-const var3415!1 String)
(assert (str.prefixof var3415 var3415!1))
(assert true)
(define-const var2887 String (append/672562846 var384 var1392)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var384!1 String)
(assert (= var384!1 (str.++ var384 var1392)))
(assert true)
(define-const var2850 String (toString/-2075883882 var2887)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1281 var3176 var2850)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, $r10) 

(declare-const var1281!1 var1382)
(declare-const var3176!1 var1382)
(declare-const var2850!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1382-init=([], java.io.File), dir/1944646166=([jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDigest/-882756038=([jdk.nashorn.internal.runtime.Source], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var3088=jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore, var1695=r1, var1030=jdk.nashorn.internal.runtime.Source, var3058=r4, var1392=r7, var585=null_type, var1382=java.io.File, var1281=$r0, var3176=$r3, var1981=$r2, var79=$r5, var3415=$r6, var384=$r8, var2887=$r9, var2850=$r10}
; {jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore=var3088, r1=var1695, jdk.nashorn.internal.runtime.Source=var1030, r4=var3058, r7=var1392, null_type=var585, java.io.File=var1382, $r0=var1281, $r3=var3176, $r2=var1981, $r5=var79, $r6=var3415, $r8=var384, $r9=var2887, $r10=var2850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore;	r4 := @parameter0: jdk.nashorn.internal.runtime.Source;	r7 := @parameter1: java.lang.String;	$r0 = new java.io.File;	$r3 = r1.<jdk.nashorn.internal.runtime.CodeStore$DirectoryCodeStore: java.io.File dir>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.Source: java.lang.String getDigest()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(45);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, $r10);	return $r0
;block_num 1