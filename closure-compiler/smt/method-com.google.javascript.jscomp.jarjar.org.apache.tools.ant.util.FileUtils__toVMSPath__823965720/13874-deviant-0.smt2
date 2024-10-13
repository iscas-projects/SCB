(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1232 0)
(declare-sort var473 0)
(declare-sort var2025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var473) String)
(declare-fun normalize/-959805877 (var1232 String) var473)
(declare-fun getPath/-1385219261 (var473) String)
(declare-fun getName/1128186653 (var473) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isDirectory/-2122094196 (var473) Bool)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1232 var1232)
(declare-const null-var473 var473)
(declare-const var473-separatorChar Int)
(declare-const null-String String)
(declare-const var2350 var1232) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var2350 null-var1232)))
(declare-const var946 var473) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var946 null-var473)))
(assert true)
(define-const var2900 String (getAbsolutePath/-802773300 var946)) ; Statement: $r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2384 var473 (normalize/-959805877 var2350 var2900)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2) 
(assert true)
(define-const var3478 String (getPath/-1385219261 var2384)) ; Statement: r4 = virtualinvoke $r3.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3582 String (getName/1128186653 var946)) ; Statement: r5 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(assert (not (and true (and (> (str.len var3478) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), normalize/-959805877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.io.File), getPath/-1385219261=([java.io.File], java.lang.String), getName/1128186653=([java.io.File], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), isDirectory/-2122094196=([java.io.File], boolean), indexOf/1426977840=([java.lang.String, int, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1232=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var2350=r0, var473=java.io.File, var946=r1, var2900=$r2, var2384=$r3, var3478=r4, var3582=r5, var1286=$c1, var3041=$c0, var2955=$i13, var2766=$i14, var349=$z4, var1238=z0, var2276=$z1, var399=$z5, var92=z2, var2025=null_type, var1460=r28, var3=r29, var3365=r30, var397=i10, var18=$c7, var3835=$i15, var637=i11, var480=$i17, var739=$r35, var1668=$r24, var2755=$r25, var206=$r26, var1048=$r27}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var1232, r0=var2350, java.io.File=var473, r1=var946, $r2=var2900, $r3=var2384, r4=var3478, r5=var3582, $c1=var1286, $c0=var3041, $i13=var2955, $i14=var2766, $z4=var349, z0=var1238, $z1=var2276, $z5=var399, z2=var92, null_type=var2025, r28=var1460, r29=var3, r30=var3365, i10=var397, $c7=var18, $i15=var3835, i11=var637, $i17=var480, $r35=var739, $r24=var1668, $r25=var2755, $r26=var206, $r27=var1048}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r1 := @parameter0: java.io.File;	$r2 = virtualinvoke r1.<java.io.File: java.lang.String getAbsolutePath()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r2);	r4 = virtualinvoke $r3.<java.io.File: java.lang.String getPath()>();	r5 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$c1 = virtualinvoke r4.<java.lang.String: char charAt(int)>(0);	$c0 = <java.io.File: char separatorChar>;	$i13 = (int) $c1;	$i14 = (int) $c0;	if $i13 != $i14 goto $z4 = 0;	$z4 = 1;	goto [?= z0 = $z4];	z0 = $z4;	$z1 = virtualinvoke r1.<java.io.File: boolean isDirectory()>();	if $z1 == 0 goto $z5 = 0;	$z5 = 0;	z2 = $z5;	r28 = null;	r29 = null;	r30 = null;	i10 = 0;	if z0 == 0 goto (branch);	$c7 = <java.io.File: char separatorChar>;	$i15 = (int) $c7;	i11 = virtualinvoke r4.<java.lang.String: int indexOf(int,int)>($i15, 1);	$i17 = (int) -1;	if i11 != $i17 goto i10 = i11 + 1;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke r4.<java.lang.String: java.lang.String substring(int)>(1);	$r25 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":[000000]");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	return $r27
;block_num 7