(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2718 0)
(declare-sort var686 0)
(declare-sort var953 0)
(declare-sort var1143 0)
(declare-sort var3945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var953_checkNotNullParameter/-2060636419 (var1143 String) void)
(declare-fun cast-from-var686-to-var1143 (var686) var1143)
(declare-fun delete/-2107098179 (var2718 var686) void)
(declare-fun renameTo/1338128970 (var686 var686) Bool)
(declare-fun var3945-init () var3945)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1143) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3945 String) void)
(declare-const null-var2718 var2718)
(declare-const null-var686 var686)
(declare-const var3295 var2718) ; Statement: r2 := @this: okhttp3.internal.io.FileSystem$Companion$SystemFileSystem 
(assert (not (= var3295 null-var2718)))
(declare-const var486 var686) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var486 null-var686)))
(declare-const var556 var686) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var556 null-var686)))
;(assert (var953_checkNotNullParameter/-2060636419 (cast-from-var686-to-var1143 var486) "from")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "from") 

(declare-const var486!1 var686)
(declare-const var2829 String)
;(assert (var953_checkNotNullParameter/-2060636419 (cast-from-var686-to-var1143 var556) "to")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "to") 

(declare-const var556!1 var686)
(declare-const var70 String)
(assert true)
;(assert (delete/-2107098179 var3295 var556!1)) ; Statement: virtualinvoke r2.<okhttp3.internal.io.FileSystem$Companion$SystemFileSystem: void delete(java.io.File)>(r1) 

(declare-const var3295!1 var2718)
(declare-const var556!2 var686)
(assert true)
(define-const var3342 Bool (renameTo/1338128970 var486!1 var556!2)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean renameTo(java.io.File)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3342 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var631 var3945 var3945-init) ; Statement: $r3 = new java.io.IOException 
(define-const var3187 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3187)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3187!1 String)
(assert (= var3187!1 ""))
(assert true)
(define-const var1898 String (append/672562846 var3187!1 "failed to rename ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to rename ") 
(declare-const var3187!2 String)
(assert (= var3187!2 (str.++ var3187!1 "failed to rename ")))
(assert true)
(define-const var658 String (append/-1031950772 var1898 (cast-from-var686-to-var1143 var486!1))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1898!1 String)
(assert (str.prefixof var1898 var1898!1))
(assert true)
(define-const var1151 String (append/672562846 var658 " to ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var658!1 String)
(assert (= var658!1 (str.++ var658 " to ")))
(assert true)
(define-const var1139 String (append/-1031950772 var1151 (cast-from-var686-to-var1143 var556!2))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1151!1 String)
(assert (str.prefixof var1151 var1151!1))
(assert true)
(define-const var3052 String (toString/-2075883882 var1139)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var631 var3052)) ; Statement: specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r9) 

(declare-const var631!1 var3945)
(declare-const var3052!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var953_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var686-to-var1143=([java.io.File], java.lang.Object), delete/-2107098179=([okhttp3.internal.io.FileSystem$Companion$SystemFileSystem, java.io.File], void), renameTo/1338128970=([java.io.File, java.io.File], boolean), var3945-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2718=okhttp3.internal.io.FileSystem$Companion$SystemFileSystem, var3295=r2, var686=java.io.File, var486=r0, var556=r1, var953=kotlin.jvm.internal.Intrinsics, var1143=java.lang.Object, var2829="from", var70="to", var3342=$z0, var3945=java.io.IOException, var631=$r3, var3187=$r4, var1898=$r5, var658=$r6, var1151=$r7, var1139=$r8, var3052=$r9}
; {okhttp3.internal.io.FileSystem$Companion$SystemFileSystem=var2718, r2=var3295, java.io.File=var686, r0=var486, r1=var556, kotlin.jvm.internal.Intrinsics=var953, java.lang.Object=var1143, "from"=var2829, "to"=var70, $z0=var3342, java.io.IOException=var3945, $r3=var631, $r4=var3187, $r5=var1898, $r6=var658, $r7=var1151, $r8=var1139, $r9=var3052}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.io.FileSystem$Companion$SystemFileSystem;	r0 := @parameter0: java.io.File;	r1 := @parameter1: java.io.File;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "from");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "to");	virtualinvoke r2.<okhttp3.internal.io.FileSystem$Companion$SystemFileSystem: void delete(java.io.File)>(r1);	$z0 = virtualinvoke r0.<java.io.File: boolean renameTo(java.io.File)>(r1);	if $z0 != 0 goto return;	$r3 = new java.io.IOException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to rename ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2