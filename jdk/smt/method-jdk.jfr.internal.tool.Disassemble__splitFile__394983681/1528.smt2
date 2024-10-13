(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var935 0)
(declare-sort var993 0)
(declare-sort var1467 0)
(declare-sort var1059 0)
(declare-sort var427 0)
(declare-sort var1850 0)
(declare-sort var3388 0)
(declare-sort var1007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var993_size/-959786421 (var993) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var935_getFileName/567905596 (var935) var935)
(declare-fun var935_toString/1790204457 (var935) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun subSequence/-355200942 (String Int Int) String)
(declare-fun append/-1031950772 (String var1467) String)
(declare-fun cast-from-String-to-var1467 (String) var1467)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1059-init () var1059)
(declare-fun var427-init () var427)
(declare-fun var1850-init () var1850)
(declare-fun var1007-init () var1007)
(declare-fun cast-from-var935-to-var1467 (var935) var1467)
(declare-fun <init>/184329998 (var1007 String) void)
(declare-const null-var2592 var2592)
(declare-const null-var935 var935)
(declare-const null-var993 var993)
(declare-const null-var3388 var3388)
(declare-const var3219 var2592) ; Statement: r18 := @this: jdk.jfr.internal.tool.Disassemble 
(assert (not (= var3219 null-var2592)))
(declare-const var524 var935) ; Statement: r23 := @parameter0: java.nio.file.Path 
(assert (not (= var524 null-var935)))
(declare-const var1246 var935) ; Statement: r2 := @parameter1: java.nio.file.Path 
(assert (not (= var1246 null-var935)))
(declare-const var107 var993) ; Statement: r0 := @parameter2: java.util.List 
(assert (not (= var107 null-var993)))
(define-const var3924 Int (var993_size/-959786421 var107)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var813 Int (- var3924 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3392 String (String_valueOf/1240665136 var813)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
(define-const var1976 Int (length/-134980193 var3392)) ; Statement: i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1804 var935 (var935_getFileName/567905596 var1246)) ; Statement: $r3 = interfaceinvoke r2.<java.nio.file.Path: java.nio.file.Path getFileName()>() 
(define-const var1141 String (var935_toString/1790204457 var1804)) ; Statement: r4 = interfaceinvoke $r3.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var3311 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(assert true)
(define-const var94 Int (length/-134980193 var1141)) ; Statement: $i3 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var2744 Int (- var94 4)) ; Statement: $i4 = $i3 - 4 
(assert true)
(define-const var2079 String (subSequence/-355200942 var1141 0 var2744)) ; Statement: $r6 = virtualinvoke r4.<java.lang.String: java.lang.CharSequence subSequence(int,int)>(0, $i4) 
(assert true)
(define-const var607 String (append/-1031950772 var3311!1 (cast-from-String-to-var1467 var2079))) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3311!2 String)
(assert (str.prefixof var3311!1 var3311!2))
(assert true)
(define-const var1783 String (append/672562846 var607 "_%0")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_%0") 
(declare-const var607!1 String)
(assert (= var607!1 (str.++ var607 "_%0")))
(assert true)
(define-const var627 String (append/-1001720160 var1783 var1976)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1783!1 String)
(assert (str.prefixof var1783 var1783!1))
(assert true)
(define-const var620 String (append/672562846 var627 "d.jfr")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("d.jfr") 
(declare-const var627!1 String)
(assert (= var627!1 (str.++ var627 "d.jfr")))
(assert true)
(define-const var753 String (toString/-2075883882 var620)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1540 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var1773 Int (var993_size/-959786421 var107)) ; Statement: $i5 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if i9 >= $i5 goto $r12 = new java.io.DataInputStream 
(assert (>= var1540 var1773)) ; Cond: i9 >= $i5 
(define-const var1177 var1059 var1059-init) ; Statement: $r12 = new java.io.DataInputStream 
(define-const var3832 var427 var427-init) ; Statement: $r13 = new java.io.BufferedInputStream 
(define-const var640 var1850 var1850-init) ; Statement: $r14 = new java.io.FileInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2170 var3388) ; Statement: $r42 := @caughtexception 
(assert (not (= var2170 null-var3388)))
(define-const var316 var1007 var1007-init) ; Statement: $r43 = new jdk.jfr.internal.tool.UserDataException 
(define-const var1363 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1363)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1363!1 String)
(assert (= var1363!1 ""))
(assert true)
(define-const var2321 String (append/672562846 var1363!1 "i/o error writing file ")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("i/o error writing file ") 
(declare-const var1363!2 String)
(assert (= var1363!2 (str.++ var1363!1 "i/o error writing file ")))
(assert true)
(define-const var1589 String (append/-1031950772 var2321 (cast-from-var935-to-var1467 var1246))) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2321!1 String)
(assert (str.prefixof var2321 var2321!1))
(assert true)
(define-const var1563 String (toString/-2075883882 var1589)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var316 var1563)) ; Statement: specialinvoke $r43.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r47) 

(declare-const var316!1 var1007)
(declare-const var1563!1 String)
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {var993_size/-959786421=([java.util.List], int), String_valueOf/1240665136=([int], java.lang.String), length/-134980193=([java.lang.String], int), var935_getFileName/567905596=([java.nio.file.Path], java.nio.file.Path), var935_toString/1790204457=([java.nio.file.Path], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), subSequence/-355200942=([java.lang.String, int, int], java.lang.CharSequence), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var1467=([java.lang.CharSequence], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1059-init=([], java.io.DataInputStream), var427-init=([], java.io.BufferedInputStream), var1850-init=([], java.io.FileInputStream), var1007-init=([], jdk.jfr.internal.tool.UserDataException), cast-from-var935-to-var1467=([java.nio.file.Path], java.lang.Object), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var2592=jdk.jfr.internal.tool.Disassemble, var3219=r18, var935=java.nio.file.Path, var524=r23, var1246=r2, var993=java.util.List, var107=r0, var3924=$i0, var813=$i1, var3392=$r1, var1976=i2, var1804=$r3, var1141=r4, var3311=$r5, var94=$i3, var2744=$i4, var2079=$r6, var1467=java.lang.Object, var607=$r7, var1783=$r8, var627=$r9, var620=$r10, var753=r11, var1540=i9, var1773=$i5, var1059=java.io.DataInputStream, var1177=$r12, var427=java.io.BufferedInputStream, var3832=$r13, var1850=java.io.FileInputStream, var640=$r14, var3388=java.io.IOException, var2170=$r42, var1007=jdk.jfr.internal.tool.UserDataException, var316=$r43, var1363=$r44, var2321=$r45, var1589=$r46, var1563=$r47}
; {jdk.jfr.internal.tool.Disassemble=var2592, r18=var3219, java.nio.file.Path=var935, r23=var524, r2=var1246, java.util.List=var993, r0=var107, $i0=var3924, $i1=var813, $r1=var3392, i2=var1976, $r3=var1804, r4=var1141, $r5=var3311, $i3=var94, $i4=var2744, $r6=var2079, java.lang.Object=var1467, $r7=var607, $r8=var1783, $r9=var627, $r10=var620, r11=var753, i9=var1540, $i5=var1773, java.io.DataInputStream=var1059, $r12=var1177, java.io.BufferedInputStream=var427, $r13=var3832, java.io.FileInputStream=var1850, $r14=var640, java.io.IOException=var3388, $r42=var2170, jdk.jfr.internal.tool.UserDataException=var1007, $r43=var316, $r44=var1363, $r45=var2321, $r46=var1589, $r47=var1563}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: int length()>;	<java.nio.file.Path: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.CharSequence subSequence(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r18 := @this: jdk.jfr.internal.tool.Disassemble;	r23 := @parameter0: java.nio.file.Path;	r2 := @parameter1: java.nio.file.Path;	r0 := @parameter2: java.util.List;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	i2 = virtualinvoke $r1.<java.lang.String: int length()>();	$r3 = interfaceinvoke r2.<java.nio.file.Path: java.nio.file.Path getFileName()>();	r4 = interfaceinvoke $r3.<java.nio.file.Path: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i3 = virtualinvoke r4.<java.lang.String: int length()>();	$i4 = $i3 - 4;	$r6 = virtualinvoke r4.<java.lang.String: java.lang.CharSequence subSequence(int,int)>(0, $i4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_%0");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("d.jfr");	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	i9 = 0;	$i5 = interfaceinvoke r0.<java.util.List: int size()>();	if i9 >= $i5 goto $r12 = new java.io.DataInputStream;	$r12 = new java.io.DataInputStream;	$r13 = new java.io.BufferedInputStream;	$r14 = new java.io.FileInputStream;	$r42 := @caughtexception;	$r43 = new jdk.jfr.internal.tool.UserDataException;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("i/o error writing file ");	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r43.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r47);	throw $r43
;block_num 4