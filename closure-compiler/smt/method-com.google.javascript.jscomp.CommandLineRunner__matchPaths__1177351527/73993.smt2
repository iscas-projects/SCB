(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1560 0)
(declare-sort var3704 0)
(declare-sort var3885 0)
(declare-sort var670 0)
(declare-sort var2524 0)
(declare-sort var1389 0)
(declare-sort var3730 0)
(declare-sort var2826 0)
(declare-sort var2741 0)
(declare-sort var3458 0)
(declare-sort var148 0)
(declare-sort var1884 0)
(declare-sort var1704 0)
(declare-sort var1951 0)
(declare-sort var3174 0)
(declare-sort var2796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2524_getDefault/273610319 () var670)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var3730_on/508924409 (String) var3730)
(declare-fun splitToList/739613109 (var3730 String) var2826)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2826_size/-959786421 (var2826) Int)
(declare-fun getPathMatcher/-450340845 (var670 String) var2741)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getPath/-148735200 (var670 String (Array Int String)) var3458)
(declare-fun var1884_of/-1269712239 (var1704) var1884)
(declare-fun cast-from-var148-to-var1704 (var148) var1704)
(declare-fun var1951-init () var1951)
(declare-fun <init>/-997981811 (var1951 var2741 Bool var3885 var3704) void)
(declare-fun var3174_walkFileTree/-2013667260 (var3458 var3885 Int var2796) var3458)
(declare-fun cast-from-var1884-to-var3885 (var1884) var3885)
(declare-fun cast-from-var1951-to-var2796 (var1951) var2796)
(declare-const null-String String)
(declare-const null-var3704 var3704)
(declare-const null-var3885 var3885)
(declare-const var1389-separator String)
(declare-const var148-FOLLOW_LINKS var148)
(declare-const var1385 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var1385 null-String)))
(declare-const var3417 var3704) ; Statement: r6 := @parameter1: java.util.Map 
(assert (not (= var3417 null-var3704)))
(declare-const var922 var3885) ; Statement: r5 := @parameter2: java.util.Set 
(assert (not (= var922 null-var3885)))
(define-const var390 var670 var2524_getDefault/273610319) ; Statement: r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>() 
(assert true)
(define-const var263 Int (indexOf/-1037706067 var1385 33)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33) 
 ; Statement: if $i0 != 0 goto $z5 = 0 
(assert (not (= var263 0))) ; Cond: $i0 != 0 
(define-const var1944 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(define-const var3824 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var1190 Bool var1944) ; Statement: z0 = $z5 
 ; Statement: if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator> 
(assert (= (ite var3824 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1802 String var1389-separator) ; Statement: $r1 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1990 Bool (= var1802 "\u005c")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\") 
 ; Statement: if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator> 
(assert (= (ite var1990 1 0) 0)) ; Cond: $z1 == 0 
(define-const var397 String var1389-separator) ; Statement: $r15 = <java.io.File: java.lang.String separator> 
(assert true) ; Non Conditional
(define-const var2150 String var397) ; Statement: r2 = $r15 
(define-const var1092 String var1389-separator) ; Statement: $r3 = <java.io.File: java.lang.String separator> 
(define-const var3832 var3730 (var3730_on/508924409 var1092)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3) 
(assert true)
(define-const var2452 var2826 (splitToList/739613109 var3832 (cast-from-String-to-String var1385))) ; Statement: $r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14) 
(define-const var3628 String ".") ; Statement: r16 = "." 
(define-const var818 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3318 Int (var2826_size/-959786421 var2452)) ; Statement: $i3 = interfaceinvoke $r13.<java.util.List: int size()>() 
 ; Statement: if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert (>= var818 var3318)) ; Cond: i2 >= $i3 
(define-const var2262 String (str.++ "glob:\u0001\u0001\u0001" var3628 var2150 var1385)) ; Statement: $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001") 
(assert true)
(define-const var2404 var2741 (getPathMatcher/-450340845 var390 var2262)) ; Statement: $r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17) 
(define-const var3866 (Array Int String) arr-String-init) ; Statement: $r19 = newarray (java.lang.String)[0] 
(assert true)
(define-const var2300 var3458 (getPath/-148735200 var390 var3628 var3866)) ; Statement: $r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19) 
(define-const var3254 var148 var148-FOLLOW_LINKS) ; Statement: $r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS> 
(define-const var1925 var1884 (var1884_of/-1269712239 (cast-from-var148-to-var1704 var3254))) ; Statement: $r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21) 
(define-const var821 var1951 var1951-init) ; Statement: $r23 = new com.google.javascript.jscomp.CommandLineRunner$1 
(assert true)
;(assert (<init>/-997981811 var821 var2404 var1190 var922 var3417)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6) 

(declare-const var821!1 var1951)
(declare-const var2404!1 var2741)
(declare-const var1190!1 Bool)
(declare-const var922!1 var3885)
(declare-const var3417!1 var3704)
;(assert (var3174_walkFileTree/-2013667260 var2300 (cast-from-var1884-to-var3885 var1925) 2147483647 (cast-from-var1951-to-var2796 var821!1))) ; Statement: staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23) 

(declare-const var2300!1 var3458)
(declare-const var1925!1 var1884)
(declare-const var1648 Int)
(declare-const var821!2 var1951)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2524_getDefault/273610319=([], java.nio.file.FileSystem), indexOf/-1037706067=([java.lang.String, int], int), var3730_on/508924409=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter), splitToList/739613109=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2826_size/-959786421=([java.util.List], int), getPathMatcher/-450340845=([java.nio.file.FileSystem, java.lang.String], java.nio.file.PathMatcher), arr-String-init=([], java.lang.String[]), getPath/-148735200=([java.nio.file.FileSystem, java.lang.String, java.lang.String[]], java.nio.file.Path), var1884_of/-1269712239=([java.lang.Enum], java.util.EnumSet), cast-from-var148-to-var1704=([java.nio.file.FileVisitOption], java.lang.Enum), var1951-init=([], com.google.javascript.jscomp.CommandLineRunner$1), <init>/-997981811=([com.google.javascript.jscomp.CommandLineRunner$1, java.nio.file.PathMatcher, boolean, java.util.Set, java.util.Map], void), var3174_walkFileTree/-2013667260=([java.nio.file.Path, java.util.Set, int, java.nio.file.FileVisitor], java.nio.file.Path), cast-from-var1884-to-var3885=([java.util.EnumSet], java.util.Set), cast-from-var1951-to-var2796=([com.google.javascript.jscomp.CommandLineRunner$1], java.nio.file.FileVisitor)}
; {var1385=r14, var1560=null_type, var3704=java.util.Map, var3417=r6, var3885=java.util.Set, var922=r5, var670=java.nio.file.FileSystem, var2524=java.nio.file.FileSystems, var390=r0, var263=$i0, var1944=$z5, var3824=$z4, var1190=z0, var1389=java.io.File, var1802=$r1, var1990=$z1, var397=$r15, var2150=r2, var1092=$r3, var3730=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var3832=$r4, var2826=java.util.List, var2452=$r13, var3628=r16, var818=i2, var3318=$i3, var2262=$r17, var2741=java.nio.file.PathMatcher, var2404=$r18, var3866=$r19, var3458=java.nio.file.Path, var2300=$r20, var148=java.nio.file.FileVisitOption, var3254=$r21, var1884=java.util.EnumSet, var1704=java.lang.Enum, var1925=$r22, var1951=com.google.javascript.jscomp.CommandLineRunner$1, var821=$r23, var3174=java.nio.file.Files, var2796=java.nio.file.FileVisitor, var1648=2147483647}
; {r14=var1385, null_type=var1560, java.util.Map=var3704, r6=var3417, java.util.Set=var3885, r5=var922, java.nio.file.FileSystem=var670, java.nio.file.FileSystems=var2524, r0=var390, $i0=var263, $z5=var1944, $z4=var3824, z0=var1190, java.io.File=var1389, $r1=var1802, $z1=var1990, $r15=var397, r2=var2150, $r3=var1092, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var3730, $r4=var3832, java.util.List=var2826, $r13=var2452, r16=var3628, i2=var818, $i3=var3318, $r17=var2262, java.nio.file.PathMatcher=var2741, $r18=var2404, $r19=var3866, java.nio.file.Path=var3458, $r20=var2300, java.nio.file.FileVisitOption=var148, $r21=var3254, java.util.EnumSet=var1884, java.lang.Enum=var1704, $r22=var1925, com.google.javascript.jscomp.CommandLineRunner$1=var1951, $r23=var821, java.nio.file.Files=var3174, java.nio.file.FileVisitor=var2796, 2147483647=var1648}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r14 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.Map;	r5 := @parameter2: java.util.Set;	r0 = staticinvoke <java.nio.file.FileSystems: java.nio.file.FileSystem getDefault()>();	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(33);	if $i0 != 0 goto $z5 = 0;	$z5 = 0;	$z4 = 0;	z0 = $z5;	if $z4 == 0 goto $r1 = <java.io.File: java.lang.String separator>;	$r1 = <java.io.File: java.lang.String separator>;	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("\\");	if $z1 == 0 goto $r15 = <java.io.File: java.lang.String separator>;	$r15 = <java.io.File: java.lang.String separator>;	r2 = $r15;	$r3 = <java.io.File: java.lang.String separator>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(java.lang.String)>($r3);	$r13 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.util.List splitToList(java.lang.CharSequence)>(r14);	r16 = ".";	i2 = 0;	$i3 = interfaceinvoke $r13.<java.util.List: int size()>();	if i2 >= $i3 goto $r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r17 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>(r16, r2, r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("glob:\u0001\u0001\u0001");	$r18 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.PathMatcher getPathMatcher(java.lang.String)>($r17);	$r19 = newarray (java.lang.String)[0];	$r20 = virtualinvoke r0.<java.nio.file.FileSystem: java.nio.file.Path getPath(java.lang.String,java.lang.String[])>(r16, $r19);	$r21 = <java.nio.file.FileVisitOption: java.nio.file.FileVisitOption FOLLOW_LINKS>;	$r22 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum)>($r21);	$r23 = new com.google.javascript.jscomp.CommandLineRunner$1;	specialinvoke $r23.<com.google.javascript.jscomp.CommandLineRunner$1: void <init>(java.nio.file.PathMatcher,boolean,java.util.Set,java.util.Map)>($r18, z0, r5, r6);	staticinvoke <java.nio.file.Files: java.nio.file.Path walkFileTree(java.nio.file.Path,java.util.Set,int,java.nio.file.FileVisitor)>($r20, $r22, 2147483647, $r23);	return
;block_num 8