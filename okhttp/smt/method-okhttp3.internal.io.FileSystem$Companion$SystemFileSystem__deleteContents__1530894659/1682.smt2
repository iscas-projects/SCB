(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1576 0)
(declare-sort var232 0)
(declare-sort var264 0)
(declare-sort var3259 0)
(declare-sort var3160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var264_checkNotNullParameter/-2060636419 (var3259 String) void)
(declare-fun cast-from-var232-to-var3259 (var232) var3259)
(declare-fun listFiles/1368441200 (var232) (Array Int var232))
(declare-fun var3160-init () var3160)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3259) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3160 String) void)
(declare-const null-var1576 var1576)
(declare-const null-var232 var232)
(declare-const null-__Array__Int__var232__ (Array Int var232))
(declare-const var956 var1576) ; Statement: r8 := @this: okhttp3.internal.io.FileSystem$Companion$SystemFileSystem 
(assert (not (= var956 null-var1576)))
(declare-const var661 var232) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var661 null-var232)))
;(assert (var264_checkNotNullParameter/-2060636419 (cast-from-var232-to-var3259 var661) "directory")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "directory") 

(declare-const var661!1 var232)
(declare-const var2043 String)
(assert true)
(define-const var1928 (Array Int var232) (listFiles/1368441200 var661!1)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>() 
 ; Statement: if $r1 != null goto i1 = 0 
(assert (not (not (= var1928 null-__Array__Int__var232__)))) ; Negate: Cond: $r1 != null  
(define-const var3261 var3160 var3160-init) ; Statement: $r9 = new java.io.IOException 
(define-const var3966 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3966)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3966!1 String)
(assert (= var3966!1 ""))
(assert true)
(define-const var736 String (append/672562846 var3966!1 "not a readable directory: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not a readable directory: ") 
(declare-const var3966!2 String)
(assert (= var3966!2 (str.++ var3966!1 "not a readable directory: ")))
(assert true)
(define-const var1138 String (append/-1031950772 var736 (cast-from-var232-to-var3259 var661!1))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var736!1 String)
(assert (str.prefixof var736 var736!1))
(assert true)
(define-const var401 String (toString/-2075883882 var1138)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3261 var401)) ; Statement: specialinvoke $r9.<java.io.IOException: void <init>(java.lang.String)>($r13) 

(declare-const var3261!1 var3160)
(declare-const var401!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var264_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var232-to-var3259=([java.io.File], java.lang.Object), listFiles/1368441200=([java.io.File], java.io.File[]), var3160-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1576=okhttp3.internal.io.FileSystem$Companion$SystemFileSystem, var956=r8, var232=java.io.File, var661=r0, var264=kotlin.jvm.internal.Intrinsics, var3259=java.lang.Object, var2043="directory", var1928=$r1, var3160=java.io.IOException, var3261=$r9, var3966=$r10, var736=$r11, var1138=$r12, var401=$r13}
; {okhttp3.internal.io.FileSystem$Companion$SystemFileSystem=var1576, r8=var956, java.io.File=var232, r0=var661, kotlin.jvm.internal.Intrinsics=var264, java.lang.Object=var3259, "directory"=var2043, $r1=var1928, java.io.IOException=var3160, $r9=var3261, $r10=var3966, $r11=var736, $r12=var1138, $r13=var401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: okhttp3.internal.io.FileSystem$Companion$SystemFileSystem;	r0 := @parameter0: java.io.File;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "directory");	$r1 = virtualinvoke r0.<java.io.File: java.io.File[] listFiles()>();	if $r1 != null goto i1 = 0;	$r9 = new java.io.IOException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not a readable directory: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.IOException: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 2