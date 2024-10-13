(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3332 0)
(declare-sort var367 0)
(declare-sort var1920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var367) String)
(declare-fun normalize/-959805877 (var3332 String) var367)
(declare-fun getPath/-1385219261 (var367) String)
(declare-fun getName/1128186653 (var367) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isDirectory/-2122094196 (var367) Bool)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3332 var3332)
(declare-const null-var367 var367)
(declare-const var367-separatorChar Int)
(declare-const null-String String)
(declare-const var484 var3332) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var484 null-var3332)))
(declare-const var3067 var367) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3067 null-var367)))
(assert true)
(define-const var1372 String (getAbsolutePath/-802773300 var3067)) ; Statement: $r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2068 var367 (normalize/-959805877 var484 var1372)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2) 
(assert true)
(define-const var2822 String (getPath/-1385219261 var2068)) ; Statement: r4 = virtualinvoke $r3.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var1392 String (getName/1128186653 var3067)) ; Statement: r5 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(assert (not (and true (and (> (str.len var2822) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), normalize/-959805877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.io.File), getPath/-1385219261=([java.io.File], java.lang.String), getName/1128186653=([java.io.File], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), isDirectory/-2122094196=([java.io.File], boolean), indexOf/1426977840=([java.lang.String, int, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3332=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var484=r0, var367=java.io.File, var3067=r1, var1372=$r2, var2068=$r3, var2822=r4, var1392=r5, var3602=$c1, var1751=$c0, var777=$i13, var2877=$i14, var2805=$z4, var1340=z0, var1824=$z1, var438=$z5, var3739=z2, var1920=null_type, var2788=r28, var1520=r29, var97=r30, var992=i10, var1072=$c7, var430=$i15, var2413=i11, var2767=$i17, var3892=$r35, var569=$r24, var2985=$r25, var1312=$r26, var1945=$r27}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var3332, r0=var484, java.io.File=var367, r1=var3067, $r2=var1372, $r3=var2068, r4=var2822, r5=var1392, $c1=var3602, $c0=var1751, $i13=var777, $i14=var2877, $z4=var2805, z0=var1340, $z1=var1824, $z5=var438, z2=var3739, null_type=var1920, r28=var2788, r29=var1520, r30=var97, i10=var992, $c7=var1072, $i15=var430, i11=var2413, $i17=var2767, $r35=var3892, $r24=var569, $r25=var2985, $r26=var1312, $r27=var1945}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r1 := @parameter0: java.io.File;	$r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2);	r4 = virtualinvoke $r3.<java.io.File: java.lang.String getPath()>();	r5 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$c1 = virtualinvoke r4.<java.lang.String: char charAt(int)>(0);	$c0 = <java.io.File: char separatorChar>;	$i13 = (int) $c1;	$i14 = (int) $c0;	if $i13 != $i14 goto $z4 = 0;	$z4 = 0;	z0 = $z4;	$z1 = virtualinvoke r1.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $z5 = 0;	$z5 = 0;	z2 = $z5;	r28 = null;	r29 = null;	r30 = null;	i10 = 0;	if z0 == 0 goto (branch);	$c7 = <java.io.File: char separatorChar>;	$i15 = (int) $c7;	i11 = virtualinvoke r4.<java.lang.String: int indexOf(int,int)>($i15, 1);	$i17 = (int) -1;	if i11 != $i17 goto i10 = i11 + 1;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int)>(1);	$r25 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":[000000]");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	return $r27
;block_num 7