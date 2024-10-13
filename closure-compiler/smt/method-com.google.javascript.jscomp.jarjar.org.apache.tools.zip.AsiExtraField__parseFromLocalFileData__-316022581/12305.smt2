(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var1370 0)
(declare-sort var2629 0)
(declare-sort var64 0)
(declare-sort var3509 0)
(declare-sort var2589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1370_getValue/-308341115 ((Array Int Int) Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2629_arraycopy/-325913181 (var64 Int var64 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var64 ((Array Int Int)) var64)
(declare-fun crc/-736190852 (var1368) var3509)
(declare-fun reset/2089457514 (var3509) void)
(declare-fun update/-1141632158 (var3509 (Array Int Int)) void)
(declare-fun getValue/212411758 (var3509) Int)
(declare-fun var2589-init () var2589)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1737585169 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2056027967 (var2589 String) void)
(declare-const null-var1368 var1368)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1095 var1368) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField 
(assert (not (= var1095 null-var1368)))
(declare-const var3363 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var3363 null-__Array__Int__Int__)))
(declare-const var3724 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3724 null-Int)))
(declare-const var1792 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1792 null-Int)))
(define-const var2401 Int (var1370_getValue/-308341115 var3363 var3724)) ; Statement: l1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: long getValue(byte[],int)>(r0, i0) 
(define-const var3513 Int (- var1792 4)) ; Statement: $i3 = i2 - 4 
(define-const var2286 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[$i3] 
(define-const var2134 Int (+ var3724 4)) ; Statement: $i5 = i0 + 4 
(define-const var2053 Int (- var1792 4)) ; Statement: $i4 = i2 - 4 
;(assert (var2629_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var64 var3363) var2134 (cast-from-__Array__Int__Int__-to-var64 var2286) 0 var2053)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r0, $i5, r1, 0, $i4) 

(declare-const var3363!1 (Array Int Int))
(declare-const var2134!1 Int)
(declare-const var2286!1 (Array Int Int))
(declare-const var1033 Int)
(declare-const var2053!1 Int)
(define-const var1806 var3509 (crc/-736190852 var1095)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc> 
(assert true)
;(assert (reset/2089457514 var1806)) ; Statement: virtualinvoke $r3.<java.util.zip.CRC32: void reset()>() 

(declare-const var1806!1 var3509)
(define-const var2939 var3509 (crc/-736190852 var1095)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc> 
(assert true)
;(assert (update/-1141632158 var2939 var2286!1)) ; Statement: virtualinvoke $r4.<java.util.zip.CRC32: void update(byte[])>(r1) 

(declare-const var2939!1 var3509)
(declare-const var2286!2 (Array Int Int))
(define-const var1453 var3509 (crc/-736190852 var1095)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc> 
(assert true)
(define-const var867 Int (getValue/212411758 var1453)) ; Statement: l6 = virtualinvoke $r5.<java.util.zip.CRC32: long getValue()>() 
(define-const var411 Int (ite (> var2401 var867) 1 (ite (< var2401 var867) (- 1) 0))) ; Statement: $b7 = l1 cmp l6 
 ; Statement: if $b7 == 0 goto i8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: int getValue(byte[],int)>(r1, 0) 
(assert (not (= var411 0))) ; Negate: Cond: $b7 == 0  
(define-const var538 var2589 var2589-init) ; Statement: $r14 = new java.util.zip.ZipException 
(define-const var2139 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2139)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2139!1 String)
(assert (= var2139!1 ""))
(assert true)
(define-const var556 String (append/672562846 var2139!1 "bad CRC checksum ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad CRC checksum ") 
(declare-const var2139!2 String)
(assert (= var2139!2 (str.++ var2139!1 "bad CRC checksum ")))
(define-const var81 String (Int_toHexString/1737585169 var2401)) ; Statement: $r16 = staticinvoke <java.lang.Long: java.lang.String toHexString(long)>(l1) 
(assert true)
(define-const var3800 String (append/672562846 var556 var81)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var556!1 String)
(assert (= var556!1 (str.++ var556 var81)))
(assert true)
(define-const var2370 String (append/672562846 var3800 " instead of ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instead of ") 
(declare-const var3800!1 String)
(assert (= var3800!1 (str.++ var3800 " instead of ")))
(define-const var1076 String (Int_toHexString/1737585169 var867)) ; Statement: $r19 = staticinvoke <java.lang.Long: java.lang.String toHexString(long)>(l6) 
(assert true)
(define-const var597 String (append/672562846 var2370 var1076)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2370!1 String)
(assert (= var2370!1 (str.++ var2370 var1076)))
(assert true)
(define-const var253 String (toString/-2075883882 var597)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2056027967 var538 var253)) ; Statement: specialinvoke $r14.<java.util.zip.ZipException: void <init>(java.lang.String)>($r22) 

(declare-const var538!1 var2589)
(declare-const var253!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1370_getValue/-308341115=([byte[], int], long), arr-Int-init=([], byte[]), var2629_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var64=([byte[]], java.lang.Object), crc/-736190852=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], java.util.zip.CRC32), reset/2089457514=([java.util.zip.CRC32], void), update/-1141632158=([java.util.zip.CRC32, byte[]], void), getValue/212411758=([java.util.zip.CRC32], long), var2589-init=([], java.util.zip.ZipException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1737585169=([long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2056027967=([java.util.zip.ZipException, java.lang.String], void)}
; {var1368=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField, var1095=r2, var3363=r0, var3724=i0, var1792=i2, var1370=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong, var2401=l1, var3513=$i3, var2286=r1, var2134=$i5, var2053=$i4, var2629=java.lang.System, var64=java.lang.Object, var1033=0, var3509=java.util.zip.CRC32, var1806=$r3, var2939=$r4, var1453=$r5, var867=l6, var411=$b7, var2589=java.util.zip.ZipException, var538=$r14, var2139=$r15, var556=$r17, var81=$r16, var3800=$r18, var2370=$r20, var1076=$r19, var597=$r21, var253=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField=var1368, r2=var1095, r0=var3363, i0=var3724, i2=var1792, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong=var1370, l1=var2401, $i3=var3513, r1=var2286, $i5=var2134, $i4=var2053, java.lang.System=var2629, java.lang.Object=var64, 0=var1033, java.util.zip.CRC32=var3509, $r3=var1806, $r4=var2939, $r5=var1453, l6=var867, $b7=var411, java.util.zip.ZipException=var2589, $r14=var538, $r15=var2139, $r17=var556, $r16=var81, $r18=var3800, $r20=var2370, $r19=var1076, $r21=var597, $r22=var253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField;	r0 := @parameter0: byte[];	i0 := @parameter1: int;	i2 := @parameter2: int;	l1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipLong: long getValue(byte[],int)>(r0, i0);	$i3 = i2 - 4;	r1 = newarray (byte)[$i3];	$i5 = i0 + 4;	$i4 = i2 - 4;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r0, $i5, r1, 0, $i4);	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc>;	virtualinvoke $r3.<java.util.zip.CRC32: void reset()>();	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc>;	virtualinvoke $r4.<java.util.zip.CRC32: void update(byte[])>(r1);	$r5 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.util.zip.CRC32 crc>;	l6 = virtualinvoke $r5.<java.util.zip.CRC32: long getValue()>();	$b7 = l1 cmp l6;	if $b7 == 0 goto i8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipShort: int getValue(byte[],int)>(r1, 0);	$r14 = new java.util.zip.ZipException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad CRC checksum ");	$r16 = staticinvoke <java.lang.Long: java.lang.String toHexString(long)>(l1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instead of ");	$r19 = staticinvoke <java.lang.Long: java.lang.String toHexString(long)>(l6);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.util.zip.ZipException: void <init>(java.lang.String)>($r22);	throw $r14
;block_num 2